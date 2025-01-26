package com.drgym.drgym.controller;

import com.drgym.drgym.model.Activity;
import com.drgym.drgym.model.User;
import com.drgym.drgym.model.Workout;
import com.drgym.drgym.service.ExerciseService;
import com.drgym.drgym.service.UserService;
import com.drgym.drgym.service.WorkoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/users")
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private WorkoutService workoutService;

    @Autowired
    private ExerciseService exerciseService;

    @GetMapping("/{username}")
    public ResponseEntity<?> getUser(@PathVariable String username) {
        Optional<User> user = userService.findByUsername(username);
        return user.map(u -> ResponseEntity.ok(new UserDTO(u.getUsername(), u.getName(), u.getSurname(), u.getWeight(), u.getHeight())))
                .orElse(ResponseEntity.notFound().build());
    }

    @GetMapping("/email/{email}")
    public ResponseEntity<?> getUserByEmail(@PathVariable String email) {
        Optional<User> user = userService.findByEmail(email);
        return user.map(u -> ResponseEntity.ok(new UserDTO(u.getUsername(), u.getName(), u.getSurname(), u.getWeight(), u.getHeight())))
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<User> createUser(@RequestBody User user) {
        User savedUser = userService.saveUser(user);
        return ResponseEntity.ok(savedUser);
    }


    @DeleteMapping("/{username}")
    public ResponseEntity<?> deleteUser(@PathVariable String username) {
        userService.deleteUser(username);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/{username}/workouts")
    public ResponseEntity<?> getWorkoutsForUser(@PathVariable String username) {
        List<Workout> workouts = workoutService.findByUsername(username);
        if (workouts.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        List<WorkoutResponse> workoutResponses = workouts.stream()
                .map(workout -> {
                    List<Activity> activities = workoutService.findActivitiesByWorkoutId(workout.getId());

                    return new WorkoutResponse(
                            workout.getId(),
                            workout.getDateStart(),
                            workout.getUsername(),
                            workout.getDateEnd(),
                            workout.getDescription(),
                            activities.stream()
                                    .map(a -> {
                                        String exerciseName = exerciseService.findById(a.getExerciseId())
                                                .map(exercise -> exercise.getName())
                                                .orElse("Unknown Exercise");

                                        return new ActivityResponse(
                                                a.getId(),
                                                a.getExerciseId(),
                                                exerciseName,
                                                a.getDuration(),
                                                a.getWeight(),
                                                a.getReps()
                                        );
                                    })
                                    .toList()
                    );
                })
                .toList();

        return ResponseEntity.ok(workoutResponses);
    }

    public record WorkoutResponse(
            Long workoutId,
            LocalDateTime startDate,
            String username,
            LocalDateTime endDate,
            String description,
            List<ActivityResponse> activities
    ) {}

    public record ActivityResponse(
            Long activityId,
            Long exerciseId,
            String exerciseName,
            LocalTime duration,
            Long weight,
            Long reps
    ) {
        public ActivityResponse(
                Long activityId,
                Long exerciseId,
                String exerciseName,
                Timestamp duration,
                Long weight,
                Long reps
        ) {
            this(
                    activityId,
                    exerciseId,
                    exerciseName,
                    (duration != null) ? duration.toLocalDateTime().toLocalTime() : null,
                    weight,
                    reps
            );
        }
    }

    private record UserDTO(String username, String name, String surname, Double weight, Double height) {}
}
