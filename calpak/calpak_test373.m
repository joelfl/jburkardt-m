function calpak_test373 ( )

%*****************************************************************************80
%
%% CALPAK_TEST373 tests MONTH_LENGTH_PERSIAN.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    29 March 2013
%
%  Author:
%
%    John Burkardt
%
  n_test = 2;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'CALPAK_TEST373\n' );
  fprintf ( 1, '  For the Persian calendar,\n' );
  fprintf ( 1, '  MONTH_LENGTH_PERSIAN returns month lengths.\n' );

  y_test(1) = 3;
  y_test(2) = 4;

  for i_test = 1 : n_test

    y = y_test(i_test);
    sy = y_to_s_persian ( y );
    months = year_length_months_persian ( y );
    days = year_length_persian ( y );

    fprintf ( 1, '\n' );
    fprintf ( 1, '  %d\n', y );
    fprintf ( 1, '  %s\n', sy );
    fprintf ( 1, '  Year length in months = %d\n', months );
    fprintf ( 1, '  Year length in days = %d\n', days );
    fprintf ( 1, '\n' );

    for m = 1 : months
      month_name = month_to_month_name_persian ( m );
      fprintf ( 1, '  %10s  %2d\n', month_name, month_length_persian ( y, m ) );
    end

  end
 
  return
end
