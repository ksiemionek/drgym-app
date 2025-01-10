import React from 'react';
import { useState, useEffect } from 'react';
import { ActivityCalendar } from 'react-activity-calendar';
import { Tooltip, Typography } from '@mui/material';
import { calendarData as mockData } from '@/utils/mockData';
import Grid from '@mui/material/Grid2';
import axios from 'axios';
import Model from 'react-body-highlighter';

const BodyHighlighter = ({ username }) => {
  const data = [
    { name: 'Bench Press', muscles: ['chest', 'triceps', 'front-deltoids'] },
    { name: 'Push Ups', muscles: ['chest', 'triceps'] },
    {
      name: 'Push Ups1',
      muscles: ['chest', 'triceps', 'upper-back', 'upper-back', 'lower-back'],
    },
  ];

  const handleClick = React.useCallback(({ muscle, data }) => {
    const { exercises, frequency } = data;

    alert(
      `You clicked the ${muscle}! You've worked out this muscle ${frequency} times through the following exercises: ${JSON.stringify(exercises)}`
    );
  }, []);

  return (
    <>
      <Grid container justifyContent="center">
        <Model
          data={data}
          highlightedColors={['#bbdefb', '#3a88d5', '#0d47a1']}
          style={{ width: '15rem', padding: '1rem' }}
          onClick={handleClick}
        />
        <Model
          type="posterior"
          data={data}
          highlightedColors={['#bbdefb', '#3a88d5', '#0d47a1']}
          style={{ width: '15rem', padding: '1rem' }}
          onClick={handleClick}
        />
      </Grid>
    </>
  );
};

export default BodyHighlighter;
