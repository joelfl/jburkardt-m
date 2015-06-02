function ball_integrals_test01 ( )

%*****************************************************************************80
%
%% BALL_INTEGRALS_TEST01 compares exact and estimated integrals.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    10 January 2014
%
%  Author:
%
%    John Burkardt
%
  m = 3;
  n = 4192;
  test_num = 20;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'BALL_INTEGRALS_TEST01\n' );
  fprintf ( 1, '  Estimate monomial integrals using Monte Carlo\n' );
  fprintf ( 1, '  over the interior of the unit ball in 3D.\n' );
%
%  Get sample points.
%
  seed = 123456789;
  [ x, seed ] = ball01_sample ( n, seed );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Number of sample points used is %d\n', n );
%
%  Randomly choose X,Y exponents between 0 and 8.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, '  If any exponent is odd, the integral is zero.\n' );
  fprintf ( 1, '  We will restrict this test to randomly chosen even exponents.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Ex  Ey  Ez     MC-Estimate           Exact      Error\n' );
  fprintf ( 1, '\n' );

  for test = 1 : test_num

    [ e, seed ] = i4vec_uniform_ab ( m, 0, 4, seed );

    e(1:m) = e(1:m) * 2;

    value = monomial_value ( m, n, e, x );

    result = ball01_volume ( ) * sum ( value(1:n) ) / n;
    exact = ball01_monomial_integral ( e );
    error = abs ( result - exact );

    fprintf ( 1, '  %2d  %2d  %2d  %14.6g  %14.6g  %10.2e\n', ...
      e(1:m), result, exact, error );

  end

  return
end
