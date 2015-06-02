function quadrule_test ( )

%*****************************************************************************80
%
%% QUADRULE_TEST tests the QUADRULE library.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    18 April 2015
%
%  Author:
%
%    John Burkardt
%
  timestamp ( );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'QUADRULE_TEST\n' );
  fprintf ( 1, '  MATLAB version\n' );
  fprintf ( 1, '  Test the QUADRULE library.\n' );

  bashforth_set_test ( );
  quadrule_test02 ( );
  quadrule_test03 ( );
  quadrule_test04 ( );
  chebyshev1_compute_test ( );
  quadrule_test06 ( );
  n = 10;
  quadrule_test065 ( n );
  chebyshev3_compute_test ( );
  clenshaw_curtis_compute_test ( );
  clenshaw_curtis_set_test ( );
  fejer1_compute_test ( );
  fejer1_set_test ( );
  fejer2_compute_test ( );
  fejer2_set_test ( );

  order = 5;
  alpha = 0.5;
  gegenbauer_compute_test ( order, alpha );

  order = 10;
  alpha = - 0.5;
  gegenbauer_compute_test ( order, alpha );

  quadrule_test08 ( );
  quadrule_test085 ( );
  quadrule_test087 ( );
  quadrule_test089 ( );
  quadrule_test09 ( );
  quadrule_test095 ( );
  quadrule_test096 ( );

  quadrule_test10 ( );
  quadrule_test105 ( );
  quadrule_test108 ( );
  quadrule_test11 ( );
  quadrule_test12 ( );
  quadrule_test13 ( );
  quadrule_test14 ( );
  quadrule_test15 ( );
  quadrule_test16 ( );

  order = 11;
  alpha = 0.0;
  quadrule_test165 ( order, alpha );

  order = 11;
  alpha = 0.5;
  quadrule_test165 ( order, alpha );

  order = 11;
  alpha = 2.0;
  quadrule_test165 ( order, alpha );

  quadrule_test17 ( );
%
%  Compare computed and lookup versions of Gauss-Legendre rules.
%
  n = 31;
  quadrule_test18 ( n );
  n = 64;
  quadrule_test18 ( n );
  n = 129;
  quadrule_test18 ( n );
  n = 255;
  quadrule_test18 ( n );

  quadrule_test185 ( );
  quadrule_test19 ( );

  quadrule_test20 ( );
  quadrule_test21 ( );
  quadrule_test22 ( );
  quadrule_test23 ( );
  quadrule_test24 ( );
  quadrule_test25 ( );
  quadrule_test26 ( );
  quadrule_test27 ( );
  quadrule_test28 ( );
  quadrule_test29 ( );

  quadrule_test30 ( );
  quadrule_test31 ( );
  quadrule_test32 ( );
  quadrule_test33 ( );
  quadrule_test34 ( );
  lobatto_compute_test ( );
  lobatto_set_test ( );
  moulton_set_test ( );
  ncc_set_test ( );
  quadrule_test38 ( );
  quadrule_test39 ( );

  quadrule_test40 ( );
  quadrule_test401 ( );
  quadrule_test402 ( );
  quadrule_test403 ( );
  quadrule_test404 ( );
  quadrule_test41 ( );
%
%  Terminate.
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'QUADRULE_TEST\n' );
  fprintf ( 1, '  Normal end of execution.\n' );
  fprintf ( 1, '\n' );
  timestamp ( );

  return
end
