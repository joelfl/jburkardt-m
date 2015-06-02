function resid_stokes3_test ( )

%*****************************************************************************80
%
%% RESID_STOKES3_TEST samples the residual for solution #3.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    12 February 2015
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RESID_STOKES3_TEST\n' );
  fprintf ( 1, '  Exact Stokes solution #3:\n' );
  fprintf ( 1, '  Sample the Stokes residuals\n' );
  fprintf ( 1, '  using a region that is [-1,+1]x[-1,+1].\n' );

  n = 1000;
  xy_lo = -1.0;
  xy_hi = +1.0;
  seed = 123456789;

  [ x, seed ] = r8vec_uniform_ab ( n, xy_lo, xy_hi, seed );
  [ y, seed ] = r8vec_uniform_ab ( n, xy_lo, xy_hi, seed );

  [ ur, vr, pr ] = resid_stokes3 ( n, x, y );

  fprintf ( 1, '\n' );
  fprintf ( 1, '           Minimum       Maximum\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Ur:    %14.6g  %14.6g\n', ...
    min ( abs ( ur ) ), max ( abs ( ur ) ) );
  fprintf ( 1, '  Vr:    %14.6g  %14.6g\n', ...
    min ( abs ( vr ) ), max ( abs ( vr ) ) );
  fprintf ( 1, '  Pr:    %14.6g  %14.6g\n', ...
    min ( abs ( pr ) ), max ( abs ( pr ) ) );

  return
end
