function [ x, w ] = gqu ( l )

%*****************************************************************************80
%
%% GQU provides data for Gauss quadrature with a uniform weight.
%
%  Discussion:
%
%    This data assumes integration over the interval [0,1] with 
%    weight function w(x) = 1.
%
%    For L odd, the actual rule has 2*L-1 points, namely
%      X(1) with weight W(1),
%      X(2) and 1-X(2) with weight W(2),
%      X(3) and 1-X(3) with weight W(3) and so on.
%
%    For L even, the actual rule has 2*L points, namely
%      X(1) and 1-X(1), with weight W(1),
%      X(2) and 1-X(2), with weight W(2), and so on.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    22 February 2014
%
%  Author:
%
%    Original MATLAB version by Florian Heiss, Viktor Winschel.
%    This MATLAB version by John Burkardt.
%
%  Reference:
%
%    Florian Heiss, Viktor Winschel,
%    Likelihood approximation by numerical integration on sparse grids,
%    Journal of Econometrics,
%    Volume 144, 2008, pages 62-80.
%
%  Parameters:
%
%    Input, integer L, the level of the rule.
%    1 <= L <= 25.
%
%    Output, real X(L), the nodes.
%
%    Output, real W(L), the weights.
%
  switch l

  case 1
    x = [5.0000000000000000e-001];
    w = [1.0000000000000000e+000];
  case 2
    x = [7.8867513459481287e-001];
    w = [5.0000000000000000e-001];
  case 3
    x = [5.0000000000000000e-001; ...
         8.8729833462074170e-001];
    w = [4.4444444444444570e-001; ...
         2.7777777777777712e-001];
  case 4
    x = [6.6999052179242813e-001; ...
         9.3056815579702623e-001];
    w = [3.2607257743127516e-001; ...
         1.7392742256872484e-001];
  case 5
    x = [5.0000000000000000e-001; ...
         7.6923465505284150e-001; ...
         9.5308992296933193e-001];
    w = [2.8444444444444655e-001; ...
         2.3931433524968501e-001; ...
         1.1846344252809174e-001];
  case 6
    x = [6.1930959304159849e-001; ...
         8.3060469323313235e-001; ...
         9.6623475710157603e-001];
    w = [2.3395696728634746e-001; ...
         1.8038078652407072e-001; ...
         8.5662246189581834e-002];
  case 7
    x = [5.0000000000000000e-001; ...
         7.0292257568869854e-001; ...
         8.7076559279969723e-001; ...
         9.7455395617137919e-001];
    w = [2.0897959183673620e-001; ...
         1.9091502525256090e-001; ...
         1.3985269574463935e-001; ...
         6.4742483084431701e-002];
  case 8
    x = [5.9171732124782495e-001; ...
         7.6276620495816450e-001; ...
         8.9833323870681348e-001; ...
         9.8014492824876809e-001];
    w = [1.8134189168918213e-001; ...
         1.5685332293894469e-001; ...
         1.1119051722668793e-001; ...
         5.0614268145185180e-002];
  case 9
    x = [5.0000000000000000e-001; ...
         6.6212671170190451e-001; ...
         8.0668571635029518e-001; ...
         9.1801555366331788e-001; ...
         9.8408011975381304e-001];
    w = [1.6511967750063075e-001; ...
         1.5617353852000226e-001; ...
         1.3030534820146844e-001; ...
         9.0324080347429253e-002; ...
         4.0637194180784583e-002];
  case 10
    x = [5.7443716949081558e-001; ...
         7.1669769706462361e-001; ...
         8.3970478414951222e-001; ...
         9.3253168334449232e-001; ...
         9.8695326425858587e-001];
    w = [1.4776211235737713e-001; ...
         1.3463335965499873e-001; ...
         1.0954318125799158e-001; ...
         7.4725674575290599e-002; ...
         3.3335672154342001e-002];
  case 11
    x = [5.0000000000000000e-001; ...
         6.3477157797617245e-001; ...
         7.5954806460340585e-001; ...
         8.6507600278702468e-001; ...
         9.4353129988404771e-001; ...
         9.8911432907302843e-001];
    w = [1.3646254338895086e-001; ...
         1.3140227225512388e-001; ...
         1.1659688229599563e-001; ...
         9.3145105463867520e-002; ...
         6.2790184732452625e-002; ...
         2.7834283558084916e-002];
  case 12
    x = [5.6261670425573451e-001; ...
         6.8391574949909006e-001; ...
         7.9365897714330869e-001; ...
         8.8495133709715235e-001; ...
         9.5205862818523745e-001; ...
         9.9078031712335957e-001];
    w = [1.2457352290670189e-001; ...
         1.1674626826917781e-001; ...
         1.0158371336153328e-001; ...
         8.0039164271673444e-002; ...
         5.3469662997659276e-002; ...
         2.3587668193254314e-002];
  case 13
    x = [5.0000000000000000e-001; ...
         6.1522915797756739e-001; ...
         7.2424637551822335e-001; ...
         8.2117466972017006e-001; ...
         9.0078904536665494e-001; ...
         9.5879919961148907e-001; ...
         9.9209152735929407e-001];
    w = [1.1627577661543741e-001; ...
         1.1314159013144903e-001; ...
         1.0390802376844462e-001; ...
         8.9072990380973202e-002; ...
         6.9436755109893875e-002; ...
         4.6060749918864378e-002; ...
         2.0242002382656228e-002];
  case 14
    x = [5.5402747435367183e-001; ...
         6.5955618446394482e-001; ...
         7.5762431817907705e-001; ...
         8.4364645240584268e-001; ...
         9.1360065753488251e-001; ...
         9.6421744183178681e-001; ...
         9.9314190434840621e-001];
    w = [1.0763192673157916e-001; ...
         1.0259923186064811e-001; ...
         9.2769198738969161e-002; ...
         7.8601583579096995e-002; ...
         6.0759285343951711e-002; ...
         4.0079043579880291e-002; ...
         1.7559730165874574e-002];
  case 15
    x = [5.0000000000000000e-001; ...
         6.0059704699871730e-001; ...
         6.9707567353878175e-001; ...
         7.8548608630426942e-001; ...
         8.6220886568008503e-001; ...
         9.2410329170521366e-001; ...
         9.6863669620035298e-001; ...
         9.9399625901024269e-001];
    w = [1.0128912096278091e-001; ...
         9.9215742663556039e-002; ...
         9.3080500007781286e-002; ...
         8.3134602908497196e-002; ...
         6.9785338963077315e-002; ...
         5.3579610233586157e-002; ...
         3.5183023744054159e-002; ...
         1.5376620998057434e-002];
  case 16
    x = [5.4750625491881877e-001; ...
         6.4080177538962946e-001; ...
         7.2900838882861363e-001; ...
         8.0893812220132189e-001; ...
         8.7770220417750155e-001; ...
         9.3281560119391593e-001; ...
         9.7228751153661630e-001; ...
         9.9470046749582497e-001];
    w = [9.4725305227534431e-002; ...
         9.1301707522462000e-002; ...
         8.4578259697501462e-002; ...
         7.4797994408288562e-002; ...
         6.2314485627767105e-002; ...
         4.7579255841246545e-002; ...
         3.1126761969323954e-002; ...
         1.3576229705875955e-002];
  case 17
    x = [5.0000000000000000e-001; ...
         5.8924209074792389e-001; ...
         6.7561588172693821e-001; ...
         7.5634526854323847e-001; ...
         8.2883557960834531e-001; ...
         8.9075700194840068e-001; ...
         9.4011957686349290e-001; ...
         9.7533776088438384e-001; ...
         9.9528773765720868e-001];
    w = [8.9723235178103419e-002; ...
         8.8281352683496447e-002; ...
         8.4002051078225143e-002; ...
         7.7022880538405308e-002; ...
         6.7568184234262890e-002; ...
         5.5941923596702053e-002; ...
         4.2518074158589644e-002; ...
         2.7729764686993612e-002; ...
         1.2074151434273140e-002];
  case 18
    x = [5.4238750652086765e-001; ...
         6.2594311284575277e-001; ...
         7.0587558073142131e-001; ...
         7.7988541553697377e-001; ...
         8.4584352153017661e-001; ...
         9.0185247948626157e-001; ...
         9.4630123324877791e-001; ...
         9.7791197478569880e-001; ...
         9.9578258421046550e-001];
    w = [8.4571191481571939e-002; ...
         8.2138241872916504e-002; ...
         7.7342337563132801e-002; ...
         7.0321457335325452e-002; ...
         6.1277603355739306e-002; ...
         5.0471022053143716e-002; ...
         3.8212865127444665e-002; ...
         2.4857274447484968e-002; ...
         1.0808006763240719e-002];
  case 19
    x = [5.0000000000000000e-001; ...
         5.8017932282011264e-001; ...
         6.5828204998181494e-001; ...
         7.3228537068798050e-001; ...
         8.0027265233084055e-001; ...
         8.6048308866761469e-001; ...
         9.1135732826857141e-001; ...
         9.5157795180740901e-001; ...
         9.8010407606741501e-001; ...
         9.9620342192179212e-001];
    w = [8.0527224924391946e-002; ...
         7.9484421696977337e-002; ...
         7.6383021032929960e-002; ...
         7.1303351086803413e-002; ...
         6.4376981269668232e-002; ...
         5.5783322773667113e-002; ...
         4.5745010811225124e-002; ...
         3.4522271368820669e-002; ...
         2.2407113382849821e-002; ...
         9.7308941148624341e-003];
  case 20
    x = [5.3826326056674867e-001; ...
         6.1389292557082253e-001; ...
         6.8685304435770977e-001; ...
         7.5543350097541362e-001; ...
         8.1802684036325757e-001; ...
         8.7316595323007540e-001; ...
         9.1955848591110945e-001; ...
         9.5611721412566297e-001; ...
         9.8198596363895696e-001; ...
         9.9656429959254744e-001];
    w = [7.6376693565363113e-002; ...
         7.4586493236301996e-002; ...
         7.1048054659191187e-002; ...
         6.5844319224588346e-002; ...
         5.9097265980759248e-002; ...
         5.0965059908620318e-002; ...
         4.1638370788352433e-002; ...
         3.1336024167054569e-002; ...
         2.0300714900193556e-002; ...
         8.8070035695753026e-003];
  case 21
    x = [5.0000000000000000e-001; ...
         5.7278092708044759e-001; ...
         6.4401065840120053e-001; ...
         7.1217106010371944e-001; ...
         7.7580941794360991e-001; ...
         8.3356940209870611e-001; ...
         8.8421998173783889e-001; ...
         9.2668168229165859e-001; ...
         9.6004966707520034e-001; ...
         9.8361341928315316e-001; ...
         9.9687608531019478e-001];
    w = [7.3040566824845346e-002; ...
         7.2262201994985134e-002; ...
         6.9943697395536658e-002; ...
         6.6134469316668845e-002; ...
         6.0915708026864350e-002; ...
         5.4398649583574356e-002; ...
         4.6722211728016994e-002; ...
         3.8050056814189707e-002; ...
         2.8567212713428641e-002; ...
         1.8476894885426285e-002; ...
         8.0086141288864491e-003];
  case 22
    x = [5.3486963665986109e-001; ...
         6.0393021334411068e-001; ...
         6.7096791044604209e-001; ...
         7.3467791899337853e-001; ...
         7.9382020175345580e-001; ...
         8.4724363159334137e-001; ...
         8.9390840298960406e-001; ...
         9.3290628886015003e-001; ...
         9.6347838609358694e-001; ...
         9.8503024891771429e-001; ...
         9.9714729274119962e-001];
    w = [6.9625936427816129e-002; ...
         6.8270749173007697e-002; ...
         6.5586752393531317e-002; ...
         6.1626188405256251e-002; ...
         5.6466148040269712e-002; ...
         5.0207072221440600e-002; ...
         4.2970803108533975e-002; ...
         3.4898234212260300e-002; ...
         2.6146667576341692e-002; ...
         1.6887450792407110e-002; ...
         7.3139976491353280e-003];
  case 23
    x = [5.0000000000000000e-001; ...
         5.6662841214923310e-001; ...
         6.3206784048517251e-001; ...
         6.9515051901514546e-001; ...
         7.5475073892300371e-001; ...
         8.0980493788182306e-001; ...
         8.5933068156597514e-001; ...
         9.0244420080942001e-001; ...
         9.3837617913522076e-001; ...
         9.6648554341300807e-001; ...
         9.8627123560905761e-001; ...
         9.9738466749877608e-001];
    w = [6.6827286093053176e-002; ...
         6.6231019702348404e-002; ...
         6.4452861094041150e-002; ...
         6.1524542153364815e-002; ...
         5.7498320111205814e-002; ...
         5.2446045732270824e-002; ...
         4.6457883030017563e-002; ...
         3.9640705888359551e-002; ...
         3.2116210704262994e-002; ...
         2.4018835865542369e-002; ...
         1.5494002928489686e-002; ...
         6.7059297435702412e-003];
  case 24
    x = [5.3202844643130276e-001; ...
         5.9555943373680820e-001; ...
         6.5752133984808170e-001; ...
         7.1689675381302254e-001; ...
         7.7271073569441984e-001; ...
         8.2404682596848777e-001; ...
         8.7006209578927718e-001; ...
         9.1000099298695147e-001; ...
         9.4320776350220048e-001; ...
         9.6913727600136634e-001; ...
         9.8736427798565474e-001; ...
         9.9759360999851066e-001];
    w = [6.3969097673376246e-002; ...
         6.2918728173414318e-002; ...
         6.0835236463901793e-002; ...
         5.7752834026862883e-002; ...
         5.3722135057982914e-002; ...
         4.8809326052057039e-002; ...
         4.3095080765976693e-002; ...
         3.6673240705540205e-002; ...
         2.9649292457718385e-002; ...
         2.2138719408709880e-002; ...
         1.4265694314466934e-002; ...
         6.1706148999928351e-003];
  case 25
    x = [5.0000000000000000e-001; ...
         5.6143234630535521e-001; ...
         6.2193344186049426e-001; ...
         6.8058615290469393e-001; ...
         7.3650136572285752e-001; ...
         7.8883146512061142e-001; ...
         8.3678318423673415e-001; ...
         8.7962963151867890e-001; ...
         9.1672131438041693e-001; ...
         9.4749599893913761e-001; ...
         9.7148728561448716e-001; ...
         9.8833196072975871e-001; ...
         9.9777848489524912e-001];
    w = [6.1588026863357799e-002; ...
         6.1121221495155122e-002; ...
         5.9727881767892461e-002; ...
         5.7429129572855862e-002; ...
         5.4259812237131867e-002; ...
         5.0267974533525363e-002; ...
         4.5514130991481903e-002; ...
         4.0070350167500532e-002; ...
         3.4019166906178545e-002; ...
         2.7452347987917691e-002; ...
         2.0469578350653148e-002; ...
         1.3177493307516108e-002; ...
         5.6968992505125535e-003];
  otherwise
    n = [];
    w = [];
    fprintf ( 1, '\n' );
    fprintf ( 1, 'GQU - Fatal error!\n' );
    fprintf ( 1, '  Value of L must be between 1 and 25.\n' );
    error ( 'GQU - Fatal error!' );
  end

  return
end
