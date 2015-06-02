function [ x, w ] = clenshaw_curtis_set ( n )

%*****************************************************************************80
%
%% CLENSHAW_CURTIS_SET sets a Clenshaw-Curtis quadrature rule.
%
%  Discussion:
%
%    The integral:
%
%      Integral ( -1 <= X <= 1 ) F(X) dX
%
%    The quadrature rule:
%
%      Sum ( 1 <= I <= N ) W(I) * F ( X(I) )
%
%    The abscissas for the rule of order N can be regarded 
%    as the cosines of equally spaced angles between 180 and 0 degrees:
%
%      X(I) = cos ( ( I - 1 ) * PI / ( N - 1 ) )
%
%    except for the basic case N = 1, when
%
%      X(1) = 0.
%
%    A Clenshaw-Curtis rule that uses N points will integrate
%    exactly all polynomials of degrees 0 through N-1.  If N
%    is odd, then by symmetry the polynomial of degree N will
%    also be integrated exactly.
%
%    If the value of N is increased in a sensible way, then
%    the new set of abscissas will include the old ones.  One such
%    sequence would be N(K) = 2*K+1 for K = 0, 1, 2, ...
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 May 2007
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Charles Clenshaw, Alan Curtis,
%    A Method for Numerical Integration on an Automatic Computer,
%    Numerische Mathematik,
%    Volume 2, Number 1, December 1960, pages 197-205.
%
%  Parameters:
%
%    Input, integer N, the order.
%    N must be between 1 and 10.
%
%    Output, real X(N), the abscissas.
%
%    Output, real W(N), the weights.
%
  x = zeros ( n, 1 );
  w = zeros ( n, 1 );

  if ( n == 1 )

    x(1) =  0.00000000000000000000;
    w(1) =  2.00000000000000000000;

  elseif ( n == 2 )

    x(1) = -1.00000000000000000000;
    x(2) =  1.00000000000000000000;

    w(1) =  1.00000000000000000000;
    w(2) =  1.00000000000000000000;

  elseif ( n == 3 )

    x(1) = -1.00000000000000000000;
    x(2) =  0.00000000000000000000;
    x(3) =  1.00000000000000000000;

    w(1) =  0.33333333333333333333;
    w(2) =  1.33333333333333333333;
    w(3) =  0.33333333333333333333;

  elseif ( n == 4 )

    x(1) = -1.00000000000000000000;
    x(2) = -0.50000000000000000000;
    x(3) =  0.50000000000000000000;
    x(4) =  1.00000000000000000000;

    w(1) =  0.11111111111111111111;
    w(2) =  0.88888888888888888889;
    w(3) =  0.88888888888888888889;
    w(4) =  0.11111111111111111111;

  elseif ( n == 5 )

    x(1) = -1.00000000000000000000;
    x(2) = -0.70710678118654752440;
    x(3) =  0.00000000000000000000;
    x(4) =  0.70710678118654752440;
    x(5) =  1.00000000000000000000;

    w(1) =  0.06666666666666666667;
    w(2) =  0.53333333333333333333;
    w(3) =  0.80000000000000000000;
    w(4) =  0.53333333333333333333;
    w(5) =  0.06666666666666666667;

  elseif ( n == 6 )

    x(1) = -1.00000000000000000000;
    x(2) = -0.80901699437494742410;
    x(3) = -0.30901699437494742410;
    x(4) =  0.30901699437494742410;
    x(5) =  0.80901699437493732410;
    x(6) =  1.00000000000000000000;

    w(1) =  0.04000000000000000000;
    w(2) =  0.36074304120001121619;
    w(3) =  0.59925695879998878381;
    w(4) =  0.59925695879998878381;
    w(5) =  0.36074304120001121619;
    w(6) =  0.04000000000000000000;

  elseif ( n == 7 )

    x(1) = -1.00000000000000000000;
    x(2) = -0.86602540378443864676;
    x(3) = -0.50000000000000000000;
    x(4) =  0.00000000000000000000;
    x(5) =  0.50000000000000000000;
    x(6) =  0.86602540378443864676;
    x(7) =  1.00000000000000000000;
   
    w(1) =  0.02857142857142857143;
    w(2) =  0.25396825396825396825;
    w(3) =  0.45714285714285714286;
    w(4) =  0.52063492063492063492;
    w(5) =  0.45714285714285714286;
    w(6) =  0.25396825396825396825;
    w(7) =  0.02857142857142857143;

  elseif ( n == 8 )
   
    x(1) = -1.00000000000000000000;
    x(2) = -0.90096886790241912624;
    x(3) = -0.62348980185873353053;
    x(4) = -0.22252093395631440429;
    x(5) =  0.22252093395631440429;
    x(6) =  0.62348980185873353053;
    x(7) =  0.90096886790241910624;
    x(8) =  1.00000000000000000000;
   
    w(1) =  0.02040816326530612245;
    w(2) =  0.19014100721820835178;
    w(3) =  0.35224242371815911533;
    w(4) =  0.43720840579832641044;
    w(5) =  0.43720840579832641044;
    w(6) =  0.35224242371815911533;
    w(7) =  0.19014100721820835178;
    w(8) =  0.02040816326530612245;

  elseif ( n == 9 )
 
    x(1) = -1.00000000000000000000;
    x(2) = -0.92387953251128675613;
    x(3) = -0.70710678118654752440;
    x(4) = -0.38268343236508977173;
    x(5) =  0.00000000000000000000;
    x(6) =  0.38268343236508977173;
    x(7) =  0.70710678118654752440;
    x(8) =  0.92387953251128675613;
    x(9) =  1.00000000000000000000;

    w(1) =  0.01587301587301587302;
    w(2) =  0.14621864921601815501;
    w(3) =  0.27936507936507936508;
    w(4) =  0.36171785872048978150;
    w(5) =  0.39365079365079365079;
    w(6) =  0.36171785872048978150;
    w(7) =  0.27936507936507936508;
    w(8) =  0.14621864921601815501;
    w(9) =  0.01587301587301587302;

  elseif ( n == 10 )

    x(1)  = -1.00000000000000000000;
    x(2)  = -0.93969262078590838405;
    x(3)  = -0.76604444311897903520;
    x(4)  = -0.50000000000000000000;
    x(5)  = -0.17364817766693034885;
    x(6)  =  0.17364817766693034885;
    x(7)  =  0.50000000000000000000;
    x(8)  =  0.76604444311897903520;
    x(9)  =  0.93969262078590838405;
    x(10) =  1.00000000000000000000;

    w(1)  =  0.01234567901234567901;
    w(2)  =  0.11656745657203712296;
    w(3)  =  0.22528432333810440813;
    w(4)  =  0.30194003527336860670;
    w(5)  =  0.34386250580414418320;
    w(6)  =  0.34386250580414418320;
    w(7)  =  0.30194003527336860670;
    w(8)  =  0.22528432333810440813;
    w(9)  =  0.11656745657203712296;
    w(10) =  0.01234567901234567901;

  else

    fprintf ( 1, '\n' );
    fprintf ( 1, 'CLENSHAW_CURTIS_SET - Fatal error!\n' );
    fprintf ( 1, '  Illegal value of N = %d\n', n );
    fprintf ( 1, '  Legal values are 1 to 10.\n' );
    error ( 'CLENSHAW_CURTIS_SET - Fatal error!' );

  end

  return
end
