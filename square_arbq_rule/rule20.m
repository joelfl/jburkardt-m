function [ x, w ] = rule20 ( n )

%*****************************************************************************80
%
%% RULE20 returns the rule of degree 20.
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
    0.7903555901298286,0.2252273789362463, ...
    -.1371556203352229,0.9516912467651903, ...
    0.8981438613797404,0.3511327336932318, ...
    0.9759068343062448E-01,-.1920781702210826, ...
    0.6695436306885109,0.5830289505702392, ...
    -.4278190227205511,0.5727845316573248E-01, ...
    0.7351507200926066,0.7898934964234535, ...
    -.3594399777482915,0.3376839183112454, ...
    0.9886396714914109,-.3907721596661082, ...
    -.6046899139754487,0.9173007153030285, ...
    -.4141396903659944E-01,-.6385982895810176, ...
    0.6013396134438070,0.9161661661998538, ...
    -.3278639859221721,0.8802460227981840, ...
    -.2034581078060147,0.6969166399839279, ...
    0.5351593293803870,-.2787747819837111, ...
    0.9910314479371701,-.8252889264259545, ...
    -.9599491206891601,0.4944916835714113, ...
    -.7703896716180660,0.9129604837711394, ...
    0.8500373866499284,-.3755453354695931E-01, ...
    -.9734574105217517,0.2897016770313429, ...
    0.7688438290660360,-.8388618516990838, ...
    -.5341286913684105,-.9174806831430735, ...
    -.9474346838846874,-.6131936263177837E-01, ...
    0.7605933106317154,-.9848886462575595, ...
    -.7572987820459326,0.5080745682281066E-01, ...
    -.4636550029355001,0.9705319244227489, ...
    -.8914079947263784,-.9873056954830064, ...
    -.9758313372889643,-.8819170869186215, ...
    -.9709635895278415,0.9822722262702339, ...
    -.8873503942891041,-.6569247082044029, ...
    -.9870905373622706,-.5734674551654146, ...
    0.1507888619083396E-01,0.5506050560553492, ...
    -.7366839885772312,-.7117026556332434, ...
    0.2333965922395885,-.2878681152474931, ...
    0.4361746990352844,0.9814633895599361, ...
    -.5319601634991685,0.9850987522022563, ...
    0.1957972824970721,0.2084217400195901, ...
    0.4755027720742199,0.9147494843686150, ...
    -.8645689328165518,0.6772212070927294 ];
  ys = [ ...
    -.8898248168845113E-01,-.7280953904485143E-01, ...
    -.8653524201560835,-.2902346585197535, ...
    0.1218660048097990,-.2471221282702101, ...
    -.7467915296200941,-.5589830789081398, ...
    -.2090651941599068,-.4355704406099477, ...
    -.7264771605644266,-.1363590388950549, ...
    -.9878512802669168,0.9209737732078764, ...
    -.9535217391501140,-.5953361238026516, ...
    -.7515863705429210E-01,0.9865491452054407, ...
    -.9940939029178233,-.9840832904192385, ...
    0.8284898564271251E-01,-.8660720584668250, ...
    0.9809450037856990,0.8048533499129369, ...
    0.2790289740151233,-.4082743843038831, ...
    0.9740226654958868,0.3035697582018394, ...
    -.9862725985120795,0.7185672952170555, ...
    -.9193256145694509,-.9544384245126734, ...
    -.9898146349839960,0.7338947136259082E-01, ...
    -.2075330463780984,0.9907318998968393, ...
    0.5387986220469478,0.8834131451429665, ...
    -.8934522638909749,-.9207656972246965, ...
    -.6367076114754525,0.9978913196317913, ...
    0.5300943949356414,-.4262998259673880, ...
    0.1841144567160324,0.5090691042712456, ...
    -.9214501612581178,-.6400027811642439, ...
    0.3209231678914174,-.3846636405176737, ...
    0.8697161095697501,0.3470098428369617, ...
    0.5711239311935090,0.4067912914297930, ...
    0.7624786524458222,-.7770143745259210, ...
    0.9584356802550765,0.6551973976459680, ...
    0.2854578772720695E-01,0.9551619780680761, ...
    -.1675185677029804,0.4240021284329500E-01, ...
    -.9864545039606490,-.7989550278861819, ...
    -.6071839996966222,0.7388672054082017, ...
    0.3140775120692750,-.1793826353802805, ...
    0.8772336982049433,-.6033076898494673, ...
    -.4039805189289538,0.9282498625490752, ...
    0.7185098783764428,0.9758090760986288, ...
    0.5388255455349226,-.8020212431755418, ...
    0.8814335976449187,0.7393267487868044 ];
   ws = [ ...
    0.4220810999582407E-01,0.4210468769855168E-01, ...
    0.4111495137274749E-01,0.1602722818539338E-01, ...
    0.3619967055440460E-01,0.5719761023753370E-01, ...
    0.5553932136722374E-01,0.7027947643456225E-01, ...
    0.3877224057962559E-01,0.5615678549912440E-01, ...
    0.5631946977958934E-01,0.1879677326120675E-01, ...
    0.1313057162810730E-02,0.2109221815204442E-01, ...
    0.2451480331747192E-01,0.6556422061834499E-01, ...
    0.1119235292343633E-01,0.7115563056913567E-02, ...
    0.6714100241623257E-02,0.5885829448742507E-02, ...
    0.8309083447844690E-01,0.3590868298232087E-01, ...
    0.1246127664791048E-01,0.2018878910488524E-01, ...
    0.8451815870413146E-01,0.3248692905689807E-01, ...
    0.1341510929402505E-01,0.6472935261954060E-01, ...
    0.1145237221800998E-01,0.5872712613961156E-01, ...
    0.4508959666015173E-02,0.1493403238757605E-01, ...
    0.2665017934074124E-02,0.7704806248110788E-01, ...
    0.5726954359349042E-01,0.4528203295472384E-02, ...
    0.4279817302411395E-01,0.4285481643886387E-01, ...
    0.8072115177434423E-02,0.3701323444432086E-01, ...
    0.4613328158120365E-01,0.3966194341947075E-02, ...
    0.6788885180206457E-01,0.3480913280397030E-01, ...
    0.1958947629336374E-01,0.7993874305725486E-01, ...
    0.2433364291226502E-01,0.1062990044699051E-01, ...
    0.6170560315322090E-01,0.7521981238448959E-01, ...
    0.3621544028408890E-01,0.1839043728583574E-01, ...
    0.3635800635820290E-01,0.1087561990443862E-01, ...
    0.1235528041521356E-01,0.2670676504697193E-01, ...
    0.5756245567725824E-02,0.1016410330068744E-01, ...
    0.3155355506307831E-01,0.1843695052008212E-01, ...
    0.1362846461516491E-01,0.8050841953401032E-01, ...
    0.1413883594050338E-01,0.5019314017226575E-01, ...
    0.5096315858878126E-01,0.4491888769330514E-01, ...
    0.8622086129893808E-01,0.9032569802582428E-01, ...
    0.4214427133348429E-01,0.1315668261444553E-01, ...
    0.7308371765738744E-01,0.5122200740309473E-02, ...
    0.6652468674436235E-01,0.1888655008314831E-01, ...
    0.7163064878569746E-01,0.2352000357823148E-01, ...
    0.2167515013056250E-01,0.4797944511124803E-01 ];

  x(1,1:n) = xs(1:n);
  x(2,1:n) = ys(1:n);
  w(1:n) = ws(1:n);

  return
end