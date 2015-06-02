function [ x, w ] = rule16 ( n )

%*****************************************************************************80
%
%% RULE16 returns the rule of degree 16.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    07 July 2014
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
%    Output, real X(2,N), the coordinates of the nodes.
%
%    Output, real W(N), the weights.
%
  xs = [ ...
    0.4455077315117606,-.2848639978436560, ...
    0.3281612731066613,0.8918323090897292, ...
    0.5080739455207711,-.1604014838336734, ...
    -.5084786013975685,0.6830501661618820, ...
    0.3958609078545774E-01,-.9505884228486957, ...
    -.9618117119546932,-.9824876605856204, ...
    0.7294909884375445,0.1663512176814138, ...
    -.8401346406026955,0.7196828159773350, ...
    0.2530272226250717,0.6403128558574714E-01, ...
    0.9867649245062882,-.2009570267598735, ...
    -.4385685045405642,0.9942720499027967, ...
    -.8306577686854565,0.1540093368841131, ...
    0.5127230397362322,-.9896697019211779, ...
    0.9721677355950014,-.7432189863550824, ...
    0.7845206176595362,0.9792382924978336, ...
    -.7071472873150695,-.1416891896032315, ...
    0.8901118844470474,0.8991291622644930, ...
    -.8948787586840297,-.1685236423690618, ...
    0.8814614259143865,-.9727794481100781, ...
    -.2335640652756550,0.9317484014546712, ...
    0.4462548323794501,-.4956609448877936, ...
    -.7464462325957708,-.6209288757442605, ...
    -.9729904625306640,0.6851689211463186, ...
    -.6950237982778372,0.1406973647399049, ...
    -.8903519744155600,-.4494459013630722, ...
    0.6393855383975146,0.4185604687784284 ];
  ys = [ ...
    -.4133544718603057,-.7739045957079853, ...
    -.9418618376442869,-.5606355473579230, ...
    0.9698717423735355,-.4892197731244818, ...
    -.9117050044897801,-.5146278686624721, ...
    -.8810600362311165,-.9545711191201147, ...
    -.5466258413042109,-.8038321990753307, ...
    -.1738438525238659,-.6521123405187266, ...
    -.3199762775663758,0.8583352444264194, ...
    0.9559713160961977,0.8638442022353128, ...
    -.7782646945578277,0.6577321912732575, ...
    -.2429524974731521,0.3876054361677954, ...
    -.7951217128043849,-.2163105603296342, ...
    -.7522598930908062,0.5914422527084512, ...
    -.2390927720573675,-.9749994483165604, ...
    -.8444622014821822,0.8810775159513397, ...
    0.6173187727164633,0.7292324652124864E-01, ...
    0.1389731666217061,0.6539121663076461, ...
    0.8152409648202001,-.9939582277051608, ...
    0.9818676808679303,0.9582010007957961, ...
    0.9824162852107247,-.9611203598796459, ...
    0.1014796681115945,0.8630083224142983, ...
    0.9693553936129727,-.5969027498090264, ...
    -.3789880325419188E-01,0.4272704958652744, ...
    0.4313302857584844E-01,0.4101941952194764, ...
    0.3277950128817075,0.3540266909627898, ...
    -.9786311482371555,0.6960968466161754 ];
  ws = [ ...
    0.7760560264177564E-01,0.6557384620049388E-01, ...
    0.3492505367961147E-01,0.4902394774171961E-01, ...
    0.2071780611220039E-01,0.9663554422001587E-01, ...
    0.4275428371393922E-01,0.4251351999693562E-01, ...
    0.4614134112945410E-01,0.1008804262208153E-01, ...
    0.2597909269494542E-01,0.7243920128199269E-02, ...
    0.8689727864752500E-01,0.7770693383996630E-01, ...
    0.6824785727785596E-01,0.4942860806128915E-01, ...
    0.1939352812224098E-01,0.6287664325857020E-01, ...
    0.1228661441972498E-01,0.1029914685037788, ...
    0.1129049857606719,0.1469344234054041E-01, ...
    0.4431063501362172E-01,0.1183113207778475, ...
    0.6355581532812171E-01,0.1527602237522992E-01, ...
    0.2841229216361006E-01,0.1472432061291935E-01, ...
    0.4129113754659276E-01,0.1149253014935389E-01, ...
    0.7883123749996855E-01,0.1339728049062325, ...
    0.6215863520566767E-01,0.4742159015437373E-01, ...
    0.3530277887828205E-01,0.1663690106625590E-01, ...
    0.1074607484017106E-01,0.6944512701761030E-02, ...
    0.2298755190493018E-01,0.1230850655669064E-01, ...
    0.1267827808948161,0.6295607382580996E-01, ...
    0.2066068139152711E-01,0.8653018393026629E-01, ...
    0.2938486912464724E-01,0.9600456501593493E-01, ...
    0.9622610521466571E-01,0.1308302132754554, ...
    0.6115363632570159E-01,0.1144365242523608, ...
    0.1628247685682751E-01,0.9586498584301183E-01 ];

  x(1,1:n) = xs(1:n);
  x(2,1:n) = ys(1:n);
  w(1:n) = ws(1:n);

  return
end