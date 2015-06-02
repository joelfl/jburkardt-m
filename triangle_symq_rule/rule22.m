function [ x, y, w ] = rule22 ( )

%*****************************************************************************80
%
%% RULE22 returns the rule of degree 22.
%
%  Discussion:
%
%    Order 22 (96 pts)
%    1/6 data for 22-th order quadrature with 20 nodes.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    26 June 2014
%
%  Author:
%
%    Original FORTRAN77 version by Hong Xiao, Zydrunas Gimbutas.
%    This MATLAB version by John Burkardt.
%
%  Parameters:
%
%    Output, real X(*), Y(*), the coordinates of the nodes.
%
%    Output, real W(*), the weights.
%
  x = [ ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
      -0.85243937884353040180383114561341, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
      -0.77445005331884859316935899829027, ...
      -0.13904123725801872358993428337677, ...
      -0.23304071399817585574874678659693, ...
      -0.26744719790035475459155300021176, ...
      -0.22878505379994225637259252841697, ...
       0.00000000000000000000000000000000, ...
      -0.38014474895820048454509648055133, ...
      -0.45773619140744569728808634071512, ...
      -0.69910784887798561027380170772980, ...
      -0.59915020623635852909092766037930, ...
      -0.50285479867282866077430913574272, ...
       0.00000000000000000000000000000000, ...
       0.00000000000000000000000000000000, ...
      -0.96233289290517364585870888247669 ];
  y = [ ... ...
      -0.17961779550825402665053150536356, ...
      -0.43105921890016050589097298460315, ...
      -0.56370814820709365122621895231987, ...
       0.13432079752143621239079354899726, ...
       0.50168092900112124608440590878512, ...
      -0.30708760414931325796548069627474, ...
      -0.49983703894353862614316233613125, ...
      -0.51105561801610634168636959252531, ...
      -0.39938711325112050072985537594951, ...
      -0.56453267538284060850226818603628, ...
      -0.24638775273505893357364918660516, ...
      -0.56405220111847180239219000037482, ...
      -0.50115450425960692839217225970244, ...
      -0.38909376761177045913072941229458, ...
      -0.56151116446763500432595204778315, ...
      -0.49377028890768631789742714088225, ...
      -0.56147791277581875684420297893483, ...
       0.10538658381143172910281642949327E+01, ...
       0.75483396039626819990343725694118, ...
      -0.57423523645313343793449840203234 ];
  w = [ ... ...
       0.88789485269040415184442000093073E-02, ...
       0.91213138484983310796492167899650E-02, ...
       0.34157891281528518722433813845768E-02, ...
       0.13868632623761798604503963871564E-01, ...
       0.10542607716173479246541995276511E-01, ...
       0.12406032586949329015430983875961E-01, ...
       0.98936888063393894436023103307196E-02, ...
       0.14736493275333048326268550862834E-01, ...
       0.23319638474620094676086399806944E-01, ...
       0.64543696619767795008356091295137E-02, ...
       0.28567254691249129006535922249255E-01, ...
       0.34805812400404550009501818114158E-02, ...
       0.15348348448970428911081050216648E-01, ...
       0.20675736766822369708334848331883E-01, ...
       0.54047041342285612785845222377716E-02, ...
       0.13902459659667285747407760303210E-01, ...
       0.66515392643746496117585264091036E-02, ...
       0.23486059112870622145372854661800E-02, ...
       0.94860727130382766679283796797328E-02, ...
       0.84285134702804870581139558973652E-03 ];

  return
end
