function [ x, w ] = rule21 ( n )

%*****************************************************************************80
%
%% RULE21 returns the rule of degree 21.
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
    0.9754554632015029,-.9754554632015029, ...
    0.9807628529972264,-.9807628529972262, ...
    0.9864691810349792,-.9864691810349792, ...
    0.9817752275809579,-.9817752275809579, ...
    0.8942647503363536,-.8942647503363533, ...
    -.7926169940479519,0.7926169940479522, ...
    0.9673238098903247,-.9673238098903247, ...
    -.6233424472175393,0.6233424472175395, ...
    0.8075494298208362,-.8075494298208362, ...
    -.9112339448388380,0.9112339448388382, ...
    0.5294700780841287,-.5294700780841285, ...
    0.9126054184220483,-.9126054184220483, ...
    -.8005037324172778,0.8005037324172778, ...
    -.9786316733709013,0.9786316733709015, ...
    -.1931251782159229,0.1931251782159230, ...
    0.7448428411561702,-.7448428411561699, ...
    0.9910640341773119,-.9910640341773119, ...
    0.4487876769216255,-.4487876769216254, ...
    0.7730731265491211,-.7730731265491211, ...
    -.8538350485874476E-02,0.8538350485874577E-02, ...
    0.9305948052973293,-.9305948052973293, ...
    -.4410686164106586,0.4410686164106588, ...
    0.5726168020738448,-.5726168020738448, ...
    0.9094921563319007,-.9094921563319007, ...
    0.6650799110223121,-.6650799110223121, ...
    0.9845379327215906,-.9845379327215906, ...
    -.1489897109425285E-01,0.1489897109425291E-01, ...
    0.4777858927462423,-.4777858927462423, ...
    0.2346150739656185E-01,-.2346150739656185E-01, ...
    -.6464750210052006,0.6464750210052006, ...
    -.3898509033065152,0.3898509033065153, ...
    -.2596817297614839,0.2596817297614840, ...
    0.8930982971146899E-01,-.8930982971146888E-01, ...
    0.2378419730518350,-.2378419730518349, ...
    -.4923226235686091,0.4923226235686091, ...
    0.3260553152624549,-.3260553152624548, ...
    0.6900640280303905,-.6900640280303905, ...
    0.8399949350854392,-.8399949350854392, ...
    0.2175201355296100,-.2175201355296099, ...
    -.2552655348509120,0.2552655348509120, ...
    0.8967910069881992,-.8967910069881992 ];
  ys = [ ...
    -.8684124523298049,0.8684124523298051, ...
    -.9445108390325675,0.9445108390325677, ...
    0.8224833612237958,-.8224833612237956, ...
    -.6674381398519379,0.6674381398519381, ...
    -.9903377411510502,0.9903377411510502, ...
    -.9907543940322484,0.9907543940322484, ...
    0.4473528589231669E-01,-.4473528589231656E-01, ...
    -.9343866955469575,0.9343866955469575, ...
    0.4520870573336636,-.4520870573336634, ...
    -.9274277947725086,0.9274277947725084, ...
    -.9866712872285782,0.9866712872285782, ...
    -.4550564012095777,0.4550564012095778, ...
    -.8127883212479330,0.8127883212479330, ...
    -.9813307175904386,0.9813307175904383, ...
    -.9279142876740704,0.9279142876740704, ...
    -.9320431789499202,0.9320431789499202, ...
    0.4282792320995888,-.4282792320995887, ...
    -.5362236701446004,0.5362236701446004, ...
    -.6399087385202717,0.6399087385202717, ...
    -.8135057649888232,0.8135057649888232, ...
    0.6470101042020234,-.6470101042020232, ...
    -.8155924092874611,0.8155924092874611, ...
    -.7941248493230142,0.7941248493230142, ...
    0.2473440793805384,-.2473440793805383, ...
    -.3454192145795777,0.3454192145795778, ...
    -.2668503935770928,0.2668503935770929, ...
    -.4625176827521818,0.4625176827521818, ...
    -.6895677594851285E-01,0.6895677594851290E-01, ...
    -.2404342948898286E-01,0.2404342948898286E-01, ...
    -.6484663233565804,0.6484663233565804, ...
    -.9898736812731077,0.9898736812731077, ...
    -.6343263441026139,0.6343263441026139, ...
    -.9814223809013130,0.9814223809013130, ...
    -.2765567197102583,0.2765567197102583, ...
    -.4080894058196405,0.4080894058196404, ...
    -.9078967063955937,0.9078967063955937, ...
    0.1497779073446914,-.1497779073446913, ...
    -.1279062882959751,0.1279062882959752, ...
    -.6902255847834162,0.6902255847834162, ...
    -.2059314662901914,0.2059314662901914, ...
    -.8238753864861620,0.8238753864861620 ];
  ws = [ ...
    0.2118008413970087E-02,0.2118008413970087E-02, ...
    0.4561991935236101E-02,0.4561991935236101E-02, ...
    0.6876351365235698E-02,0.6876351365235698E-02, ...
    0.1124466702102733E-01,0.1124466702102733E-01, ...
    0.4818715192537238E-02,0.4818715192537238E-02, ...
    0.5989564896092799E-02,0.5989564896092799E-02, ...
    0.1767795981651036E-01,0.1767795981651036E-01, ...
    0.2380089975465993E-01,0.2380089975465993E-01, ...
    0.4148355130225962E-01,0.4148355130225962E-01, ...
    0.1184358597738201E-01,0.1184358597738201E-01, ...
    0.1089514188613057E-01,0.1089514188613057E-01, ...
    0.3129460714416973E-01,0.3129460714416973E-01, ...
    0.2951898806186879E-01,0.2951898806186879E-01, ...
    0.2370685766690177E-02,0.2370685766690177E-02, ...
    0.2822396585947564E-01,0.2822396585947564E-01, ...
    0.2219335711268346E-01,0.2219335711268346E-01, ...
    0.9583664348129897E-02,0.9583664348129897E-02, ...
    0.6372673897970250E-01,0.6372673897970250E-01, ...
    0.4375827379330900E-01,0.4375827379330900E-01, ...
    0.4429543031127132E-01,0.4429543031127132E-01, ...
    0.2471410210516637E-01,0.2471410210516637E-01, ...
    0.4249825844225831E-01,0.4249825844225831E-01, ...
    0.4558876680953739E-01,0.4558876680953739E-01, ...
    0.2756490338260340E-01,0.2756490338260340E-01, ...
    0.6243396099268773E-01,0.6243396099268773E-01, ...
    0.1168182946833649E-01,0.1168182946833649E-01, ...
    0.7382665975220684E-01,0.7382665975220684E-01, ...
    0.7666679963909392E-01,0.7666679963909392E-01, ...
    0.4391713647273730E-01,0.4391713647273730E-01, ...
    0.4705013653249818E-01,0.4705013653249818E-01, ...
    0.9574427334796009E-02,0.9574427334796009E-02, ...
    0.6262807887841917E-01,0.6262807887841917E-01, ...
    0.1507382504443397E-01,0.1507382504443397E-01, ...
    0.7853972113541645E-01,0.7853972113541645E-01, ...
    0.6890694586576196E-01,0.6890694586576196E-01, ...
    0.3574201277291281E-01,0.3574201277291281E-01, ...
    0.6408284590143187E-01,0.6408284590143187E-01, ...
    0.4908916812527610E-01,0.4908916812527610E-01, ...
    0.5502691558122864E-01,0.5502691558122864E-01, ...
    0.8126618865329004E-01,0.8126618865329004E-01, ...
    0.2206473054465979E-01,0.2206473054465979E-01 ];

  x(1,1:n) = xs(1:n);
  x(2,1:n) = ys(1:n);
  w(1:n) = ws(1:n);

  return
end