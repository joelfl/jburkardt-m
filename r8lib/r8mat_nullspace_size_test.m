function r8mat_nullspace_size_test ( )

%*****************************************************************************80
%
%% R8MAT_NULLSPACE_SIZE_TEST tests R8MAT_NULLSPACE_SIZE.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    02 October 2008
%
%  Author:
%
%    John Burkardt
%
  m = 4;
  n = 7;

  a = [ ...
    1.0, -2.0, 3.0, -1.0; ...
    3.0, -6.0, 9.0, -3.0; ...
    0.0,  0.0, 0.0,  0.0; ...
    2.0, -2.0, 0.0,  1.0; ...
    6.0, -8.0, 6.0,  0.0; ...
    3.0,  3.0, 6.0,  9.0; ...
    1.0,  1.0, 2.0,  3.0 ]';

  fprintf ( 1, '\n' );
  fprintf ( 1, 'R8MAT_NULLSPACE_SIZE_TEST\n' );
  fprintf ( 1, '  R8MAT_NULLSPACE_SIZE computes the size of the nullspace of a matrix.\n' );

  r8mat_print ( m, n, a, '  Input A:' );

  nullspace_size = r8mat_nullspace_size ( m, n, a );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Nullspace size is %d\n', nullspace_size );

  return
end
