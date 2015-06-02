function cos_degree_values_test ( )

%*****************************************************************************80
%
%% COS_DEGREE_VALUES_TEST demonstrates the use of COS_DEGREE_VALUES.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    21 January 2015
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'COS_DEGREE_VALUES_TEST:\n' );
  fprintf ( 1, '  COS_DEGREE_VALUES stores values of \n' );
  fprintf ( 1, '  the cosine function.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '      X           FX\n' );
  fprintf ( 1, '\n' );

  n_data = 0;

  while ( 1 )

    [ n_data, x, fx ] = cos_degree_values ( n_data );

    if ( n_data == 0 )
      break
    end

    fprintf ( 1, '  %12f  %24.16f\n', x, fx );

  end

  return
end
