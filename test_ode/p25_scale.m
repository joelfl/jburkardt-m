function scale = p25_scale ( neqn )

%*****************************************************************************80
%
%% P25_SCALE returns scale factors for problem p25.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    18 February 2013
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NEQN, the number of equations.
%
%    Output, real SCALE(NEQN), the scaling factors.
%
  scale(1:neqn,1) = [ 1.0; 1.0 ];

  return
end
