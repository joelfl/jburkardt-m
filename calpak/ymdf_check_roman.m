function [ y, m, d, f, ierror ] = ymdf_check_roman ( y, m, d, f )

%*****************************************************************************80
%
%% YMDF_CHECK_ROMAN checks a Roman YMDF date.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    08 March 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input/output, integer Y, M, D, real F, the
%    YMDF date, which may be corrected if necessary and possible.
%
%    Output, integer IERROR, is 0 if the date is legal.
%
  [ y, m, d, ierror ] = ymd_check_roman ( y, m, d );

  if ( ierror ~= 0 )
    return
  end

  [ y, m, d, f ] = frac_borrow_roman ( y, m, d, f );

  [ y, m, d, f ] = frac_carry_roman ( y, m, d, f );

  return
end
