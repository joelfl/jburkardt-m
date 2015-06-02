function i4vec_index_insert_test ( )

%*****************************************************************************80
%
%% I4VEC_INDEX_INSERT_TEST tests I4VEC_INDEX_INSERT.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 April 2009
%
%  Author:
%
%    John Burkardt
%
  n_max = 25;
  n = 0;
  x = [];
  indx = [];

  fprintf ( 1, '\n' );
  fprintf ( 1, 'I4VEC_INDEX_INSERT_TEST\n' );
  fprintf ( 1, '  I4VEC_INDEX_INSERT inserts values into an\n' );
  fprintf ( 1, '  index sorted array of integers.\n' );

  xval = 8;
  [ n, x, indx ] = i4vec_index_insert ( n, x, indx, xval );

  xval = 7;
  [ n, x, indx ] = i4vec_index_insert ( n, x, indx, xval );

  b = 0;
  c = 20;
  seed = 123456789;

  for i = 1 : 20
    [ xval, seed ] = i4_uniform_ab ( b, c, seed );
    fprintf ( 1, '  %6d\n', xval );
    [ n, x, indx ] = i4vec_index_insert ( n, x, indx, xval );
  end

  xval = 7;
  [ n, x, indx ] = i4vec_index_insert ( n, x, indx, xval );

  xval = 8;
  [ n, x, indx ] = i4vec_index_insert ( n, x, indx, xval );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Indexed list of entries:\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  I  INDX(I)  X(I)  X(INDX(I))\n' );
  fprintf ( 1, '\n' );
  for i = 1 : n
    fprintf ( 1, '  %6d  %6d  %6d  %6d\n', i, indx(i), x(i), x(indx(i)) );
  end

  return
end
