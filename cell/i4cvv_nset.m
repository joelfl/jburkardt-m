function a = i4cvv_nset ( mn, a, m, roff, nn, in, jn, vn )

%*****************************************************************************80
%
%% I4CVV_NSET sets items JN(*) from row IN(*) in an I4CVV.
%
%  Discussion:
%
%    An I4CVV is a "vector of vectors" of I4's.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    04 December 2012
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer MN, the size of the cell array.
%
%    Input, integer A(MN), the cell array.
%
%    Input, integer M, the number of rows in the array.
%
%    Input, integer ROFF(M+1), the row offsets.
%
%    Input, integer NN, the number of items.
%
%    Input, integer IN(NN), the rows of the items.
%    1 <= IN(*) <= M.
%
%    Input, integer JN(NN), the columns of the items.
%    1 <= JN(*) <= NR(IN(*)).
%
%    Input, integer VN(NN), the new value of items A(IN(*),JN(*)).
%
%    Output, integer A(MN), the cell array.
%
  k = roff(in(1:nn)) + jn(1:nn);
  a(k) = vn(1:nn);

  return
end
