function [ n_data, x, fx ] = tran08_values ( n_data )

%*****************************************************************************80
%
%% TRAN08_VALUES returns some values of the order 8 transportation function.
%
%  Discussion:
%
%    The function is defined by:
%
%      TRAN08(x) = Integral ( 0 <= t <= x ) t^8 * exp(t) / ( exp(t) - 1 )^2 dt
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 September 2004
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Milton Abramowitz and Irene Stegun,
%    Handbook of Mathematical Functions,
%    US Department of Commerce, 1964.
%
%    Allan McLeod,
%    Algorithm 757, MISCFUN: A software package to compute uncommon
%    special functions,
%    ACM Transactions on Mathematical Software,
%    Volume 22, Number 3, September 1996, pages 288-301.
%
%    Stephen Wolfram,
%    The Mathematica Book,
%    Fourth Edition,
%    Wolfram Media / Cambridge University Press, 1999.
%
%  Parameters:
%
%    Input/output, integer N_DATA.  The user sets N_DATA to 0 before the
%    first call.  On each call, the routine increments N_DATA by 1, and
%    returns the corresponding data; when there is no more data, the
%    output value of N_DATA will be 0 again.
%
%    Output, real X, the argument of the function.
%
%    Output, real FX, the value of the function.
%
  n_max = 20;

  fx_vec = [ ...
     0.15488598634539359463E-19, ...
     0.41574269117845953797E-11, ...
     0.68050651245227411689E-07, ...
     0.10981703519563009836E-02, ...
     0.13396432776187883834E+00, ...
     0.21153387806998617182E+01, ...
     0.14227877028750735641E+02, ...
     0.59312061431647843226E+02, ...
     0.18139614577043147745E+03, ...
     0.93148001928992220863E+03, ...
     0.12817928112604611804E+04, ...
     0.28572838386329242218E+04, ...
     0.43872971687877730010E+04, ...
     0.62993229139406657611E+04, ...
     0.16589426277154888511E+05, ...
     0.27064780798797398935E+05, ...
     0.38974556062543661284E+05, ...
     0.40400240716905025786E+05, ...
     0.40484316504120655568E+05, ...
     0.40484399001892184901E+05 ];

  x_vec = [ ...
       0.0019531250E+00, ...
       0.0312500000E+00, ...
       0.1250000000E+00, ...
       0.5000000000E+00, ...
       1.0000000000E+00, ...
       1.5000000000E+00, ...
       2.0000000000E+00, ...
       2.5000000000E+00, ...
       3.0000000000E+00, ...
       4.0000000000E+00, ...
       4.2500000000E+00, ...
       5.0000000000E+00, ...
       5.5000000000E+00, ...
       6.0000000000E+00, ...
       8.0000000000E+00, ...
      10.0000000000E+00, ...
      15.0000000000E+00, ...
      20.0000000000E+00, ...
      30.0000000000E+00, ...
      50.0000000000E+00 ];

  if ( n_data < 0 )
    n_data = 0;
  end

  n_data = n_data + 1;

  if ( n_max < n_data )
    n_data = 0;
    x = 0.0;
    fx = 0.0;
  else
    x = x_vec(n_data);
    fx = fx_vec(n_data);
  end

  return
end
