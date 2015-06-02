function polygon_monte_carlo_test01 ( nv, v )

%*****************************************************************************80
%
%% TEST01 estimates integrals over a polygon in 2D.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    07 May 2014
%
%  Author:
%
%    John Burkardt
%
  e_test = [ ...
    0, 0; ...
    2, 0; ...
    0, 2; ...
    4, 0; ...
    2, 2; ...
    0, 4; ...
    6, 0 ]';

  fprintf ( 1, '\n' );
  fprintf ( 1, 'POLYGON_MONTE_CARLO_TEST01\n' );
  fprintf ( 1, '  Use POLYGON_SAMPLE to estimate integrals\n' );
  fprintf ( 1, '  over the interior of a polygon in 2D.\n' );

  seed = 123456789;

  fprintf ( 1, '\n' );
  fprintf ( 1, '         N' );
  fprintf ( 1, '        1' );
  fprintf ( 1, '              X^2 ' );
  fprintf ( 1, '             Y^2' );
  fprintf ( 1, '             X^4' );
  fprintf ( 1, '           X^2Y^2' );
  fprintf ( 1, '             Y^4' );
  fprintf ( 1, '           X^6\n' );
  fprintf ( 1, '\n' );

  n = 1;

  while ( n <= 65536 )

    [ x, seed ] = polygon_sample ( nv, v, n, seed );

    fprintf ( 1, '  %8d', n );

    for j = 1 : 7

      e(1:2) = e_test(1:2,j);

      value = monomial_value ( 2, n, e, x );

      result = polygon_area ( nv, v ) * sum ( value(1:n) ) / n;
      fprintf ( 1, '  %14.6g', result );

    end

    fprintf ( 1, '\n' );

    n = 2 * n;

  end

  fprintf ( 1, '     Exact' );

  for j = 1 : 7

    e(1:2) = e_test(1:2,j);

    result = polygon_monomial_integral ( nv, v, e );
    fprintf ( 1, '  %14.6g', result );

  end

  fprintf ( 1, '\n' );

  return
end
