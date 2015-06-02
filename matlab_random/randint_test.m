function randint_test ( )

%*****************************************************************************80
%
%% RANDINT_TEST shows how random integers are generated in MATLAB.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    13 February 2013
%
%  Author:
%
%    John Burkardt
%
  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDINT_TEST:\n' );
  fprintf ( 1, '  MATLAB version\n' );
  fprintf ( 1, '  Test the MATLAB RANDINT function.\n' );

  randint_test01 ( );

  randint_test02 ( );

  seed = 123456789;
  randint_test03 ( seed );

  seed = 987654321;
  randint_test03 ( seed );

  seed = 123456789;
  randint_test03 ( seed );
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDINT_TEST:\n' );
  fprintf ( 1, '  Normal end of execution.\n' );

  fprintf ( 1, '\n' );
  timestamp ( );

  return
end
function randint_test01 ( )

%*****************************************************************************80
%
%% RANDINT_TEST01 simply calls the random integer generator a few times.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    13 February 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDINT_TEST01:\n' );
  fprintf ( 1, '  In MATLAB, random integers are generated by calling RANDINT:\n' );
  fprintf ( 1, '  If a range is not specified, the values are 0 or 1.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  A = randint ( )      a random scalar value.\n' );
  fprintf ( 1, '  B = randint ( 5, 1 ) a random column vector of 5 entries.\n' );
  fprintf ( 1, '  C = randint ( 1, 5 ) a random row vector of 5 entries.\n' );
  fprintf ( 1, '  D = randint ( 3, 4 ) a 3 by 4 random matrix.\n' );
  fprintf ( 1, '  E = randint ( 5 )    a 5 by 5 random matrix.\n' );

  a = randint ( )
  b = randint ( 5, 1 )
  c = randint ( 1, 5 )
  d = randint ( 3, 4 )
  e = randint ( 5 )

  return
end
function randint_test02 ( )

%*****************************************************************************80
%
%% RANDINT_TEST02 specifies the range.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    13 February 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDINT_TEST02:\n' );
  fprintf ( 1, '  RANDINT allows the user to specify the numeric range.\n' );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  A = randint (  1, 1, [ 5,    10 ] ) a random scalar value.\n' );
  fprintf ( 1, '  B = randint ( 10, 1, [ 7,     8 ] ) a random column vector of 5 entries.\n' );
  fprintf ( 1, '  C = randint (  1, 5, [ -1,   +1 ] ) a random row vector of 5 entries.\n' );
  fprintf ( 1, '  D = randint (  3, 4, [ -5,   +5 ] ) a 3 by 4 random matrix.\n' );
  fprintf ( 1, '  E = randint (  5, 5, [ 100, 200 ] ) a 5 by 5 random matrix.\n' );

  a = randint ( 1,  1, [   5,  10 ] )
  b = randint ( 10, 1, [   7,   8 ] )
  c = randint ( 1,  5, [  -1,  +1 ] )
  d = randint ( 3,  4, [  -5,  +5 ] )
  e = randint ( 5,  5, [ 100, 200 ] )

  return
end
function randint_test03 ( seed )

%*****************************************************************************80
%
%% RANDINT_TEST03 sets the seed before calling RANDINT.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    13 February 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RANDINT_TEST03:\n' );
  fprintf ( 1, '  By setting the random number seed, you can control\n' );
  fprintf ( 1, '  how the random number sequence begins.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  The command "rng ( 123456789 )" sets the seed to 123456789.\n' );

  rng ( seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Seed has been set to %d\n', seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Now generate 5 random values.\n' );

  for i = 1 : 5
    a = randint ( 1, 1, [ 1, 100 ] );
    fprintf ( 1, '  RANDINT(1,1,[1,100]) = %g\n', a );
  end

  rng ( seed );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Seed has been reset to %d\n', seed );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Now generate 5 more random values.\n' );

  for i = 1 : 5
    a = randint ( 1, 1, [ 1, 100 ] );
    fprintf ( 1, '  RANDINT(1,1,[1,100]) = %g\n', a );
  end

  return
end
function timestamp ( )

%*****************************************************************************80
%
%% TIMESTAMP prints the current YMDHMS date as a timestamp.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 February 2003
%
%  Author:
%
%    John Burkardt
%
  t = now;
  c = datevec ( t );
  s = datestr ( c, 0 );
  fprintf ( 1, '%s\n', s );

  return
end
