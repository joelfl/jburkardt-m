function [ n_data, n, p ] = prime_values ( n_data )

%*****************************************************************************80
%
%% PRIME_VALUES returns values of the prime function.
%
%  Discussion:
%
%    In Mathematica, the function can be evaluated by:
%
%      Prime[n]
%
%    Thanks to Morten Welinder for pointing out that the index of 145253029
%    is 8192000, 12 April 2013.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    12 April 2013
%
%  Author:
%
%    John Burkardt
%
%  Reference:
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
%    Output, integer N, the index of the prime.
%
%    Output, integer P, the value of the prime.
%
  n_max = 24;

  n_vec = [ ...
          1, ...
          2, ...
          4, ...
          8, ...
         16, ...
         32, ...
         64, ...
        128, ...
        256, ...
        512, ...
       1000, ...
       2000, ...
       4000, ...
       8000, ...
      16000, ...
      32000, ...
      64000, ...
     128000, ...
     256000, ...
     512000, ...
    1024000, ...
    2048000, ... 
    4096000, ...
    8192000 ];

  p_vec = [ ...
            2, ...
            3, ...
            7, ...
           19, ...
           53, ...
          131, ...
          311, ...
          719, ...
         1619, ...
         3671, ...
         7919, ...
        17389, ...
        37813, ...
        81799, ...
       176081, ...
       376127, ...
       800573, ...
      1698077, ...
      3588941, ...
      7559173, ...
     15881419, ...
     33283031, ...
     69600977, ...
    145253029 ];

  if ( n_data < 0 )
    n_data = 0;
  end

  n_data = n_data + 1;

  if ( n_max < n_data )
    n_data = 0;
    n = 0;
    p = 0;
  else
    n = n_vec(n_data);
    p = p_vec(n_data);
  end

  return
end
