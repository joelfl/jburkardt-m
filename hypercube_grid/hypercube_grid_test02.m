function hypercube_grid_test02 ( )

%*****************************************************************************80
%
%% HYPERCUBE_GRID_TEST02 tests HYPERCUBE_GRID on a five dimensional example.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    28 August 2014
%
%  Author:
%
%    John Burkardt
%
  m = 5;

  a = [ 0.0, 0.0, 0.0, 0.0, 0.0 ];
  b = [ 1.0, 1.0, 1.0, 1.0, 1.0 ];
  c = [ 1, 2, 3, 4, 5 ];
  ns = [ 2, 2, 2, 2, 2 ];

  n = prod ( ns(1:m) );

  fprintf ( 1, '\n' );
  fprintf ( 1, 'HYPERCUBE_GRID_TEST02\n' );
  fprintf ( 1, '  Create a grid using HYPERCUBE_GRID.\n' );
  fprintf ( 1, '  Use a two point grid in each dimension.\n' );
  fprintf ( 1, '  Use a different centering option in each dimension.\n' );
  fprintf ( 1, '  Spatial dimension M = %d\n', m );
  fprintf ( 1, '  Number of grid points N = %d\n', n );
  fprintf ( 1, '\n' );
  fprintf ( 1, '     I    NS     C      A         B\n' );
  fprintf ( 1, '\n' );
  for i = 1 : m
    fprintf ( 1, '  %4d  %4d  %4d  %8.4f  %8.4f\n', i, ns(i), c(i), a(i), b(i) );
  end

  x = hypercube_grid ( m, n, ns, a, b, c );
  r8mat_transpose_print ( m, n, x, '  Grid points:' );

  return
end

