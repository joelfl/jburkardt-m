function [ x, w ] = rule29 ( n )

%*****************************************************************************80
%
%% RULE29 returns the rule of degree 29.
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
    -.9957609056803307,0.9554778819247284, ...
    0.9957609056803309,-.9554778819247282, ...
    -.8018419403764031,0.9936244517402659, ...
    0.8018419403764033,-.9936244517402659, ...
    -.9579902382554616,0.9905651653257478, ...
    0.9579902382554618,-.9905651653257476, ...
    0.2638223412555635E-01,0.9935202992997069, ...
    -.2638223412555623E-01,-.9935202992997069, ...
    -.5066682706262957,0.9913300131756428, ...
    0.5066682706262959,-.9913300131756428, ...
    -.2298993811511364,0.9820954997507334, ...
    0.2298993811511365,-.9820954997507334, ...
    0.4377228178889339,0.9940035328985276, ...
    -.4377228178889338,-.9940035328985276, ...
    -.6971536278750922,0.9699469973610456, ...
    0.6971536278750924,-.9699469973610456, ...
    -.1287796452538595,0.9374257301963881, ...
    0.1287796452538596,-.9374257301963881, ...
    0.2219765871034010,0.9669818379796637, ...
    -.2219765871034008,-.9669818379796637, ...
    0.8793284704221047,0.9627913549967865, ...
    -.8793284704221045,-.9627913549967865, ...
    -.4224857795905392,0.8997395988035505, ...
    0.4224857795905393,-.8997395988035505, ...
    0.7561015490560310,0.9929163478894405, ...
    -.7561015490560308,-.9929163478894405, ...
    0.2640620995843525,0.8673709698403427, ...
    -.2640620995843524,-.8673709698403427, ...
    -.8876763767236916,0.9499938690143425, ...
    0.8876763767236918,-.9499938690143425, ...
    0.6107736243515250,0.9600495691709722, ...
    -.6107736243515248,-.9600495691709722, ...
    -.7868750412424903,0.8719483642340994, ...
    0.7868750412424903,-.8719483642340994, ...
    -.1141990095980696E-01,0.9167780797645280, ...
    0.1141990095980707E-01,-.9167780797645280, ...
    0.6200952646798407,0.8398067949907553, ...
    -.6200952646798407,-.8398067949907553, ...
    -.4280702467551835,0.3950643020883297, ...
    0.4280702467551835,-.3950643020883297, ...
    0.3401810242198736,0.6973120201514252, ...
    -.3401810242198735,-.6973120201514252, ...
    -.2617868665129255,0.2355937519408776, ...
    0.2617868665129255,-.2355937519408775, ...
    0.1411576681950311,0.8161158957508043, ...
    -.1411576681950309,-.8161158957508043, ...
    -.3695797105378154E-01,0.6981295844594165, ...
    0.3695797105378162E-01,-.6981295844594165, ...
    -.6312274766498698,0.9353634542809267, ...
    0.6312274766498700,-.9353634542809267, ...
    -.1150463641736545,0.9674061994537117E-01, ...
    0.1150463641736545,-.9674061994537114E-01, ...
    -.3747271550737231,0.9438572336357420, ...
    0.3747271550737232,-.9438572336357420, ...
    0.5008869009053424,0.7904714944143627, ...
    -.5008869009053424,-.7904714944143627, ...
    0.1608699923234913,0.5513908795637696, ...
    -.1608699923234913,-.5513908795637696, ...
    -.5657668007893579,0.8210097847827826, ...
    0.5657668007893579,-.8210097847827826, ...
    0.7712590259177344,0.8970730060299638, ...
    -.7712590259177344,-.8970730060299638, ...
    0.4163780011554897,0.9113544664316420, ...
    -.4163780011554896,-.9113544664316420, ...
    -.5836842069804584,0.5579917371493338, ...
    0.5836842069804584,-.5579917371493338, ...
    -.2215359986069006,0.8254893061838994, ...
    0.2215359986069007,-.8254893061838994, ...
    -.4009765829120037,0.6957123574117627, ...
    0.4009765829120038,-.6957123574117627, ...
    -.2343918950839540E-01,0.3763993540852892, ...
    0.2343918950839545E-01,-.3763993540852892, ...
    -.7105079759089011,0.7179044391714098, ...
    0.7105079759089011,-.7179044391714098, ...
    -.2200751569931638,0.5431094815533654, ...
    0.2200751569931638,-.5431094815533654 ];
  ys = [ ...
    -.9554778819247285,-.9957609056803308, ...
    0.9554778819247283,0.9957609056803310, ...
    -.9936244517402659,-.8018419403764032, ...
    0.9936244517402659,0.8018419403764034, ...
    -.9905651653257479,-.9579902382554617, ...
    0.9905651653257477,0.9579902382554619, ...
    -.9935202992997069,0.2638223412555629E-01, ...
    0.9935202992997069,-.2638223412555617E-01, ...
    -.9913300131756428,-.5066682706262958, ...
    0.9913300131756428,0.5066682706262960, ...
    -.9820954997507334,-.2298993811511365, ...
    0.9820954997507334,0.2298993811511366, ...
    -.9940035328985276,0.4377228178889339, ...
    0.9940035328985276,-.4377228178889337, ...
    -.9699469973610456,-.6971536278750923, ...
    0.9699469973610456,0.6971536278750925, ...
    -.9374257301963881,-.1287796452538595, ...
    0.9374257301963881,0.1287796452538596, ...
    -.9669818379796637,0.2219765871034009, ...
    0.9669818379796637,-.2219765871034008, ...
    -.9627913549967865,0.8793284704221046, ...
    0.9627913549967865,-.8793284704221044, ...
    -.8997395988035505,-.4224857795905393, ...
    0.8997395988035505,0.4224857795905394, ...
    -.9929163478894405,0.7561015490560309, ...
    0.9929163478894405,-.7561015490560307, ...
    -.8673709698403427,0.2640620995843524, ...
    0.8673709698403427,-.2640620995843523, ...
    -.9499938690143425,-.8876763767236917, ...
    0.9499938690143425,0.8876763767236919, ...
    -.9600495691709722,0.6107736243515249, ...
    0.9600495691709722,-.6107736243515247, ...
    -.8719483642340994,-.7868750412424903, ...
    0.8719483642340994,0.7868750412424903, ...
    -.9167780797645280,-.1141990095980701E-01, ...
    0.9167780797645280,0.1141990095980712E-01, ...
    -.8398067949907553,0.6200952646798407, ...
    0.8398067949907553,-.6200952646798407, ...
    -.3950643020883297,-.4280702467551835, ...
    0.3950643020883297,0.4280702467551835, ...
    -.6973120201514252,0.3401810242198735, ...
    0.6973120201514252,-.3401810242198734, ...
    -.2355937519408776,-.2617868665129255, ...
    0.2355937519408775,0.2617868665129255, ...
    -.8161158957508043,0.1411576681950310, ...
    0.8161158957508043,-.1411576681950309, ...
    -.6981295844594165,-.3695797105378158E-01, ...
    0.6981295844594165,0.3695797105378167E-01, ...
    -.9353634542809267,-.6312274766498699, ...
    0.9353634542809267,0.6312274766498701, ...
    -.9674061994537118E-01,-.1150463641736545, ...
    0.9674061994537116E-01,0.1150463641736545, ...
    -.9438572336357420,-.3747271550737232, ...
    0.9438572336357420,0.3747271550737233, ...
    -.7904714944143627,0.5008869009053424, ...
    0.7904714944143627,-.5008869009053424, ...
    -.5513908795637696,0.1608699923234913, ...
    0.5513908795637696,-.1608699923234912, ...
    -.8210097847827826,-.5657668007893579, ...
    0.8210097847827826,0.5657668007893579, ...
    -.8970730060299638,0.7712590259177344, ...
    0.8970730060299638,-.7712590259177344, ...
    -.9113544664316420,0.4163780011554896, ...
    0.9113544664316420,-.4163780011554895, ...
    -.5579917371493338,-.5836842069804584, ...
    0.5579917371493338,0.5836842069804584, ...
    -.8254893061838994,-.2215359986069006, ...
    0.8254893061838994,0.2215359986069007, ...
    -.6957123574117627,-.4009765829120038, ...
    0.6957123574117627,0.4009765829120039, ...
    -.3763993540852892,-.2343918950839542E-01, ...
    0.3763993540852892,0.2343918950839547E-01, ...
    -.7179044391714098,-.7105079759089011, ...
    0.7179044391714098,0.7105079759089011, ...
    -.5431094815533654,-.2200751569931638, ...
    0.5431094815533654,0.2200751569931639 ];
  ws = [ ...
    0.1227297430951934E-02,0.1227297430951934E-02, ...
    0.1227297430951934E-02,0.1227297430951934E-02, ...
    0.2705540778783016E-02,0.2705540778783016E-02, ...
    0.2705540778783016E-02,0.2705540778783016E-02, ...
    0.1737911403412906E-02,0.1737911403412906E-02, ...
    0.1737911403412906E-02,0.1737911403412906E-02, ...
    0.4392077971620324E-02,0.4392077971620324E-02, ...
    0.4392077971620324E-02,0.4392077971620324E-02, ...
    0.5022826333532844E-02,0.5022826333532844E-02, ...
    0.5022826333532844E-02,0.5022826333532844E-02, ...
    0.7874070819611865E-02,0.7874070819611865E-02, ...
    0.7874070819611865E-02,0.7874070819611865E-02, ...
    0.4436852998533855E-02,0.4436852998533855E-02, ...
    0.4436852998533855E-02,0.4436852998533855E-02, ...
    0.5267024709906290E-02,0.5267024709906290E-02, ...
    0.5267024709906290E-02,0.5267024709906290E-02, ...
    0.5674802470601283E-02,0.5674802470601283E-02, ...
    0.5674802470601283E-02,0.5674802470601283E-02, ...
    0.1214093209674204E-01,0.1214093209674204E-01, ...
    0.1214093209674204E-01,0.1214093209674204E-01, ...
    0.6621349971001042E-02,0.6621349971001042E-02, ...
    0.6621349971001042E-02,0.6621349971001042E-02, ...
    0.1231662091800690E-01,0.1231662091800690E-01, ...
    0.1231662091800690E-01,0.1231662091800690E-01, ...
    0.3418869012187221E-02,0.3418869012187221E-02, ...
    0.3418869012187221E-02,0.3418869012187221E-02, ...
    0.1030951784492058E-01,0.1030951784492058E-01, ...
    0.1030951784492058E-01,0.1030951784492058E-01, ...
    0.7362609227691093E-02,0.7362609227691093E-02, ...
    0.7362609227691093E-02,0.7362609227691093E-02, ...
    0.1132084139272881E-01,0.1132084139272881E-01, ...
    0.1132084139272881E-01,0.1132084139272881E-01, ...
    0.1579946795763282E-01,0.1579946795763282E-01, ...
    0.1579946795763282E-01,0.1579946795763282E-01, ...
    0.1762701971434555E-01,0.1762701971434555E-01, ...
    0.1762701971434555E-01,0.1762701971434555E-01, ...
    0.1445134560321702E-01,0.1445134560321702E-01, ...
    0.1445134560321702E-01,0.1445134560321702E-01, ...
    0.4104428749850738E-01,0.4104428749850738E-01, ...
    0.4104428749850738E-01,0.4104428749850738E-01, ...
    0.3339495242559154E-01,0.3339495242559154E-01, ...
    0.3339495242559154E-01,0.3339495242559154E-01, ...
    0.4184373496097664E-01,0.4184373496097664E-01, ...
    0.4184373496097664E-01,0.4184373496097664E-01, ...
    0.2495764669470555E-01,0.2495764669470555E-01, ...
    0.2495764669470555E-01,0.2495764669470555E-01, ...
    0.3707130727927116E-01,0.3707130727927116E-01, ...
    0.3707130727927116E-01,0.3707130727927116E-01, ...
    0.9609787849027714E-02,0.9609787849027714E-02, ...
    0.9609787849027714E-02,0.9609787849027714E-02, ...
    0.3355691943165765E-01,0.3355691943165765E-01, ...
    0.3355691943165765E-01,0.3355691943165765E-01, ...
    0.8580982368089280E-02,0.8580982368089280E-02, ...
    0.8580982368089280E-02,0.8580982368089280E-02, ...
    0.1755951049274731E-01,0.1755951049274731E-01, ...
    0.1755951049274731E-01,0.1755951049274731E-01, ...
    0.4298498004935582E-01,0.4298498004935582E-01, ...
    0.4298498004935582E-01,0.4298498004935582E-01, ...
    0.2200937149220828E-01,0.2200937149220828E-01, ...
    0.2200937149220828E-01,0.2200937149220828E-01, ...
    0.1430848314758049E-01,0.1430848314758049E-01, ...
    0.1430848314758049E-01,0.1430848314758049E-01, ...
    0.1667506010717100E-01,0.1667506010717100E-01, ...
    0.1667506010717100E-01,0.1667506010717100E-01, ...
    0.3444495645764802E-01,0.3444495645764802E-01, ...
    0.3444495645764802E-01,0.3444495645764802E-01, ...
    0.2897820038333119E-01,0.2897820038333119E-01, ...
    0.2897820038333119E-01,0.2897820038333119E-01, ...
    0.3492622185053053E-01,0.3492622185053053E-01, ...
    0.3492622185053053E-01,0.3492622185053053E-01, ...
    0.4881429507850928E-01,0.4881429507850928E-01, ...
    0.4881429507850928E-01,0.4881429507850928E-01, ...
    0.2338133304387865E-01,0.2338133304387865E-01, ...
    0.2338133304387865E-01,0.2338133304387865E-01, ...
    0.4325777192033273E-01,0.4325777192033273E-01, ...
    0.4325777192033273E-01,0.4325777192033273E-01 ];

  x(1,1:n) = xs(1:n);
  x(2,1:n) = ys(1:n);
  w(1:n) = ws(1:n);

  return
end