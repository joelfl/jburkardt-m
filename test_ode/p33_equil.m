function [ y, next ] = p33_equil ( neqn, next )

%*****************************************************************************80
%
%% P33_EQUIL returns equilibrium solutions of problem p33.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NEQN, the number of equations.
%
%    Input, integer NEXT, the index of the previous
%    equilibrium, which should be 0 on first call.
%
%    Output, real Y(NEQN), the "next" equilibrium solution, if any.
%
%    Output, integer NEXT, the index of the current equilibrium, 
%    or 0 if there are no more.
%
  if ( next == 0 )
    next = 1;
    y(1:2) = [ 0.0, 0.0 ];
  else
    next = 0;
    y = [];
  end

  return
end

