function psi_values_test ( )

%*****************************************************************************80
%
%% PSI_VALUES_TEST demonstrates the use of PSI_VALUES.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    03 November 2005
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'PSI_VALUES_TEST:\n' );
  fprintf ( 1, '  PSI_VALUES stores values of\n' );
  fprintf ( 1, '  the PSI function.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '      X            PSI(X)\n' );
  fprintf ( 1, '\n' );

  n_data = 0;

  while ( 1 )

    [ n_data, x, fx ] = psi_values ( n_data );

    if ( n_data == 0 )
      break
    end

    fprintf ( 1, '  %12f  %24.16f\n', x, fx );

  end

  return
end
