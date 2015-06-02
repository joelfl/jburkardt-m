function [ x, w ] = rule05 ( n )

%*****************************************************************************80
%
%% RULE05 returns the rule of degree 5.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    09 July 2014
%
%  Author:
%
%    Original FORTRAN77 version by Hong Xiao, Zydrunas Gimbutas.
%    This MATLAB version by John Burkardt.
%
%  Reference:
%
%    Hong Xiao, Zydrunas Gimbutas,
%    A numerical algorithm for the construction of efficient quadrature
%    rules in two and higher dimensions,
%    Computers and Mathematics with Applications,
%    Volume 59, 2010, pages 663-676.
%
%  Parameters:
%
%    Input, integer N, the number of nodes.
%
%    Output, real X(3,N), the coordinates of the nodes.
%
%    Output, real W(N), the weights.
%
  xs = [ ...
    0.1664180721577685D-15,0.4089925917487008, ...
    0.6338467275429999D-16,-.4089925917487006, ...
    0.3723900931035782D-16,-.2435436770532023, ...
    0.7718657600705262D-17,0.2435436770532026, ...
    0.6290589987564350,-.6290589987564351, ...
    -.1407768953799327D-15,0.4089925917487006, ...
    -.1047965211464895D-15,-.4089925917487007 ];
  ys = [ ...
    0.1094362324146226D-15,-.2361319829426750, ...
    0.4722639658853500,-.2361319829426750, ...
    0.3548001489301807D-16,0.1406100075060977, ...
    -.2812200150121953,0.1406100075060977, ...
    -.3631873822681842,-.3631873822681841, ...
    0.7263747645363684,0.2361319829426750, ...
    -.4722639658853500,0.2361319829426750 ];
  zs = [ ...
    0.7704367825296720,0.3339410527875835, ...
    0.3339410527875834,0.3339410527875834, ...
    -.2982788694307592,0.9942628981025299E-01, ...
    0.9942628981025306E-01,0.9942628981025299E-01, ...
    -.2568122608432240,-.2568122608432239, ...
    -.2568122608432239,-.3339410527875835, ...
    -.3339410527875834,-.3339410527875835 ];
  ws = [ ...
    0.7136053542145054E-01,0.4131148601232373E-01, ...
    0.4131148601232375E-01,0.4131148601232376E-01, ...
    0.1094181214137256,0.1094181214137255, ...
    0.1094181214137255,0.1094181214137255, ...
    0.7136053542145050E-01,0.7136053542145052E-01, ...
    0.7136053542145050E-01,0.4131148601232370E-01, ...
    0.4131148601232373E-01,0.4131148601232375E-01 ];

  x(1,1:n) = xs(1:n);
  x(2,1:n) = ys(1:n);
  x(3,1:n) = zs(1:n);
  w(1:n) = ws(1:n);

  return
end
