function legendre_polynomial_test016 ( )

%*****************************************************************************80
%
%% LEGENDRE_POLYNOMIAL_TEST016 tests P_POLYNOMIAL_PRIME2.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    03 May 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'LEGENDRE_POLYNOMIAL_TEST016:\n' );
  fprintf ( 1, '  P_POLYNOMIAL_PRIME2 evaluates the second derivative of\n' );
  fprintf ( 1, '  the Legendre polynomial P(N,X).\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '                                      Computed\n' );
  fprintf ( 1, '     N        X                         P"(N,X)\n' );

  m = 11;
  n = 5;
  x = r8vec_linspace ( m, -1.0, +1.0 );
  pp = p_polynomial_prime2 ( m, n, x );

  for i = 1 : 11
    fprintf ( 1, '\n' );
    for j = 0 : n
      fprintf ( 1, '  %4d  %12f  %24g\n', j, x(i), pp(i,j+1) );
    end
  end

  return
end
