'use client';

import React, { useState, useEffect, Suspense } from 'react';
import { useSearchParams, useRouter } from 'next/navigation';
import {
  CircularProgress,
  Button,
  IconButton,
  InputAdornment,
} from '@mui/material';
import Grid from '@mui/material/Grid2';
import Typography from '@mui/material/Typography';
import { Visibility, VisibilityOff } from '@mui/icons-material';
import { Formik, Form } from 'formik';
import {
  ResetPasswordSchema,
  ResetPasswordDefaultValues,
} from '@/utils/schemas/ResetPasswordSchema';
import { withSnackbar } from '@/utils/snackbarProvider';
import CustomInput from '@/components/CustomInput';
import axios from 'axios';

const ResetPasswordContent = ({ showAppMessage }) => {
  const searchParams = useSearchParams();
  const router = useRouter();

  const [loading, setLoading] = useState(false);
  const [showPassword, toggleShowPassword] = useState(false);
  const [showConfirmPassword, toggleShowConfirmPassword] = useState(false);
  const [message, setMessage] = useState('Loading...');

  const email = searchParams.get('email');
  const token = searchParams.get('token');

  useEffect(() => {
    if (!email || !token) {
      setMessage(
        'We are sorry but the reset password link seems to be broken. Please try using the link again.'
      );
      showAppMessage({
        status: true,
        text: 'Wrong reset password URL.',
        type: 'error',
      });
    } else {
      setMessage('');
    }
  }, [router, email, token, showAppMessage]);

  const handleResetPassword = async (formData, form) => {
    try {
      setLoading(true);
      setMessage('');
      const res = await axios.post(
        `${process.env.NEXT_PUBLIC_API_URL}/api/reset-password`,
        {
          email,
          token,
          newPassword: formData.password,
        }
      );
      router.push(
        '/login?message=Your password has been successfully changed.&type=success'
      );
    } catch (error) {
      const errMessage = error.response?.data;
      if (typeof errMessage === 'string') {
        showAppMessage({
          status: true,
          text: 'Invalid token. Please try again or request a new link.',
          type: 'error',
        });
      } else {
        showAppMessage({
          status: true,
          text: 'Something went wrong.',
          type: 'error',
        });
      }
    } finally {
      setLoading(false);
    }
  };

  const handleTogglePassword = () => {
    toggleShowPassword(!showPassword);
  };

  const handleToggleConfirmPassword = () => {
    toggleShowConfirmPassword(!showConfirmPassword);
  };

  return (
    <Grid
      container
      direction="column"
      sx={{
        width: {
          xs: '100%',
          sm: '80%',
          md: '60%',
        },
        maxWidth: '500px',
        alignItems: 'center',
        margin: '0 auto',
      }}
    >
      <Grid sx={{ width: '100%' }}>
        {message ? (
          <Typography sx={{ mb: 3, textAlign: 'center' }} variant="body1">
            {message}
          </Typography>
        ) : (
          <>
            <Typography sx={{ mb: 3 }} variant="body1">
              Please enter your new password
            </Typography>
            <Formik
              initialValues={ResetPasswordDefaultValues()}
              validationSchema={ResetPasswordSchema()}
              onSubmit={handleResetPassword}
            >
              {({
                errors,
                handleBlur,
                handleChange,
                handleSubmit,
                touched,
                values,
              }) => (
                <Form>
                  <Grid container direction="column" gap={2}>
                    <Grid xs={12}>
                      <CustomInput
                        label="Password"
                        name="password"
                        type={showPassword ? 'text' : 'password'}
                        value={values.password}
                        error={errors.password}
                        touched={touched.password}
                        onBlur={handleBlur}
                        onChange={handleChange}
                        tabIndex={1}
                        endAdornment={
                          <InputAdornment position="end">
                            <IconButton
                              aria-label="toggle password visibility"
                              edge="end"
                              color="primary"
                              onClick={handleTogglePassword}
                            >
                              {showPassword ? (
                                <VisibilityOff />
                              ) : (
                                <Visibility />
                              )}
                            </IconButton>
                          </InputAdornment>
                        }
                      />
                    </Grid>
                    <Grid xs={12}>
                      <CustomInput
                        label="Confirm Password"
                        name="confirmPassword"
                        type={showConfirmPassword ? 'text' : 'password'}
                        value={values.confirmPassword}
                        error={errors.confirmPassword}
                        touched={touched.confirmPassword}
                        onBlur={handleBlur}
                        onChange={handleChange}
                        tabIndex={2}
                        endAdornment={
                          <InputAdornment position="end">
                            <IconButton
                              aria-label="toggle confirm password visibility"
                              edge="end"
                              color="primary"
                              onClick={handleToggleConfirmPassword}
                            >
                              {showConfirmPassword ? (
                                <VisibilityOff />
                              ) : (
                                <Visibility />
                              )}
                            </IconButton>
                          </InputAdornment>
                        }
                      />
                    </Grid>
                    <Grid xs={12}>
                      <Button
                        fullWidth
                        onClick={handleSubmit}
                        variant="contained"
                        color="primary"
                        disabled={loading}
                        endIcon={
                          loading && (
                            <CircularProgress color="primary" size={18} />
                          )
                        }
                      >
                        Change Password
                      </Button>
                    </Grid>
                  </Grid>
                </Form>
              )}
            </Formik>
          </>
        )}
      </Grid>
    </Grid>
  );
};

const ResetPassword = ({ showAppMessage }) => {
  return (
    <Suspense fallback={<CircularProgress size={40} color="primary" />}>
      <ResetPasswordContent showAppMessage={showAppMessage} />
    </Suspense>
  );
};

export default withSnackbar(ResetPassword);
