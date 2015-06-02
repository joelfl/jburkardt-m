function sort_safe_rc_i4vec_test ( )

%*****************************************************************************80
%
%% SORT_SAFE_RC_I4VEC_TEST tests SORT_SAFE_RC on an integer vector.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    10 March 2015
%
%  Author:
%
%    John Burkardt
%
  n = 20;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'SORT_SAFE_RC_I4VEC_TEST\n' );
  fprintf ( 1, '  SORT_SAFE_RC sorts objects externally.\n' );
  fprintf ( 1, '  This function does not use persistent memory.\n' );
%
%  Generate some data to sort.
%
  i4_lo = 1;
  i4_hi = n;
  seed = 123456789;

  [ a, seed ] = i4vec_uniform_ab ( n, i4_lo, i4_hi, seed );
 
  i4vec_print ( n, a, '  Unsorted array:' );
%
%  Sort the data.
%
  indx = 0;
  isgn = 0;
  i_save = 0;
  j_save = 0;
  k_save = 0;
  l_save = 0;
  n_save = 0;

  while ( 1 )

    [ indx, i, j, i_save, j_save, k_save, l_save, n_save ] = ...
      sort_safe_rc ( n, indx, isgn, i_save, j_save, k_save, l_save, n_save );
 
    if ( indx < 0 )
      isgn = 1;
      if ( a(i) <= a(j) )
        isgn = -1;
      end
    elseif ( 0 < indx )
      k    = a(i);
      a(i) = a(j);
      a(j) = k;
    else
      break;
    end

  end
%
%  Display the sorted data.
%
  i4vec_print ( n, a, '  Sorted array:' );
 
  return
end
