function r82row_print_part_test ( )

%*****************************************************************************80
%
%% R82ROW_PRINT_PART_TEST tests R82ROW_PRINT_PART.
%
%  Discussion:
%
%    An R82ROW is a (2,N) array of R8's.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    08 April 2015
%
%  Author:
%
%    John Burkardt
%
  n = 10;
%
%  Set up the array by rows.
%
  v = [ ...
    11.0,  12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0; ...
    21.0,  22.0, 23.0, 24.0, 25.0, 26.0, 27.0, 28.0, 29.0, 30.0 ];

  fprintf ( 1, '\n' );
  fprintf ( 1, 'R82ROW_PRINT_PART_TEST\n' );
  fprintf ( 1, '  R82ROW_PRINT_PART prints part of an R82ROW.\n' );

  max_print = 2;
  r82row_print_part ( n, v, max_print, '  Output with MAX_PRINT = 2' );

  max_print = 5;
  r82row_print_part ( n, v, max_print, '  Output with MAX_PRINT = 5' );

  max_print = 25;
  r82row_print_part ( n, v, max_print, '  Output with MAX_PRINT = 25' );

  return
end
