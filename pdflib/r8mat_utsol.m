function x = r8mat_utsol ( n, r, b )

%*****************************************************************************80
%
%% R8MAT_UTSOL solves R' * X = B for an upper triangular matrix R.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    25 June 2013
%
%  Author:
%
%    MATLAB version by John Burkardt.
%
%  Reference:
%
%    Jack Dongarra, Jim Bunch, Cleve Moler, Pete Stewart,
%    LINPACK User's Guide,
%    SIAM, 1979,
%    ISBN13: 978-0-898711-72-1,
%    LC: QA214.L56.
%
%  Parameters:
%
%    Input, integer N, the order of the matrix.
%
%    Input, real R(N,N), the upper triangular matrix.
%
%    Input, real B(N), the right hand side.
%
%    Output, real X(N), the solution.
%
  x(1:n,1) = b(1:n);

  x(1,1) = x(1,1) / r(1,1);

  for j = 2 : n
    x(j,1) = ( x(j,1) - r(1:j-1,j)' * x(1:j-1,1) ) / r(j,j);
  end

  return
end