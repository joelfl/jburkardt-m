function [ t_stop, y_stop ] = p26_stop ( neqn )

%*****************************************************************************80
%
%% P26_STOP returns the stopping point for problem p26.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    23 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NEQN, the number of equations.
%
%    Output, real T_STOP, Y_STOP(NEQN), the final data.
%
  y_stop = zeros ( neqn, 1 );

  t_stop = 20.0;
  y_stop = [ ...
   -1.294460621213470e+01; ...
   -2.208575158908672e-15 ];

  return
end
