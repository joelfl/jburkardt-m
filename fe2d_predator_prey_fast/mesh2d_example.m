function mesh2d_example
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Discussion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 'mesh2d_example.m'   Code for triangulation of a lake domain with an
% island for the mixed boundary condition case. Data to be imported into
% 'fe2d_nd.m', 'fe2dx_nd.m', 'fe2d_nr.m', fe2dx_nr.m', or 'fe2dx_nr_alt.m'.
% We wish to impose Dirichlet or Robin boundary conditions on the island
% and Neumann boundary conditions on the edge of the lake.
%
% The grid is generated using Mesh2d v2.3 (Copyright (C) 2007 Darren
% Engwirda, see http://www.mathworks.com/matlabcentral/fileexchange/10307.)
%
% Author: Marcus R. Garvie (2009), Email: mgarvie@uoguelph.ca
%
% Modified July 25, 2009

% NODE fields
node1 = [ ...                   % nodes on lake boundary
    316.43027, 404.47559; ...
    291.04946, 400.70917; ...
    265.16504, 409.77890; ...
    241.46794, 402.40310; ...
    216.55145, 396.52064; ...
    163.28492, 411.37102; ...
    142.81752, 391.16355; ...
    111.95404, 346.70264; ...
    100.03538, 325.72710; ...
    103.98723, 302.51587; ...
    128.72978, 285.72802; ...
    147.49111, 266.23345; ...
    196.65261, 242.24055; ...
    213.56835, 221.67192; ...
    226.49969, 198.09326; ...
    248.37126, 183.50473; ...
    262.21952, 165.39102; ...
    278.42330, 149.91715; ...
    300.71846, 145.82601; ...
    311.12698, 166.71094; ...
    326.66315, 184.58335; ...
    359.78574, 225.48049; ...
    357.08892, 252.88958; ...
    358.76685, 285.34403; ...
    361.50834, 303.71287; ...
    371.68926, 314.92452; ...
    380.49890, 324.58632; ...
    396.37634, 328.88990; ...
    412.59116, 327.25238; ...
    425.48394, 315.28623; ...
    435.84305, 302.44664; ...
    458.34025, 297.55121; ...
    479.66439, 288.99238; ...
    493.09812, 270.20636; ...
    518.87309, 264.56427; ...
    547.18014, 268.18846; ...
    600.49708, 240.62570; ...
    625.96183, 238.40347; ...
    633.90530, 260.70629; ...
    621.50451, 285.88914; ...
    576.87224, 322.14121; ...
    570.51915, 348.85423; ...
    567.16400, 378.24075; ...
    558.00668, 406.86552; ...
    565.19008, 435.75599; ...
    567.56437, 465.33407; ...
    550.87626, 490.96358; ...
    532.98174, 515.84491; ...
    500.66817, 551.89078; ...
    478.75120, 562.17222; ...
    430.03371, 583.94286; ...
    401.20454, 587.69910; ...
    368.32214, 581.10110; ...
    354.26303, 585.86085; ...
    346.75200, 601.10367; ...
    332.85137, 628.74602; ...
    308.02188, 645.84180; ...
    295.52344, 647.18525; ...
    286.51519, 651.60328; ...
    285.98846, 662.07339; ...
    298.93455, 665.66316; ...
    301.70226, 682.79570; ...
    278.65857, 689.63850; ...
    266.25737, 712.11005; ...
    287.28701, 732.77147; ...
    318.19548, 736.85151; ...
    343.83067, 753.60957; ...
    375.53164, 758.35231; ...
    405.73444, 768.98687; ...
    406.33873, 785.59001; ...
    378.35436, 789.44240; ...
    350.02151, 795.02238; ...
    338.68030, 788.87325; ...
    325.67930, 786.10177; ...
    319.05995, 798.04657; ...
    301.78158, 795.34254; ...
    280.69272, 773.86634; ...
    254.55844, 758.02898; ...
    234.07759, 737.42090; ...
    218.38337, 711.41500; ...
    220.99086, 682.17833; ...
    224.50640, 651.96297; ...
    240.25971, 631.36117; ...
    259.86174, 612.60253; ...
    291.85381, 556.70385; ...
    315.52139, 537.56387; ...
    341.63663, 520.12519; ...
    351.37130, 458.75372; ...
    349.33183, 431.31454; ...
    328.80465, 412.43055];

node2 = [ ...                    % nodes on island boundary
    238.64853, 266.58978; ...
    235.14026, 287.95183; ...
    238.20736, 303.46785; ...
    250.13902, 303.71290; ...
    258.51675, 297.46973; ...
    274.55300, 291.27357; ...
    284.66230, 280.72063; ...
    279.73288, 267.83455; ...
    270.68478, 255.55440; ...
    255.73801, 249.16872; ...
    241.72690, 256.73448];


node=[node1;node2];


% CNECT fields
n1 = size(node1,1);
n2 = size(node2,1);
c1 = [(1:n1-1)', (2:n1)'; n1, 1];
c2 = [(1:n2-1)', (2:n2)'; n2, 1];
cnect1 = c1;   % connectivity for inner boundary
cnect2 = c2+n1;  % connectivity for outer boundary 
cnect = [cnect1;cnect2];
%(Note: to generalize this to the case of an arbitrary number of islands
% see the Lake Superior in 'meshdemo.m' of the Mesh2d v2.3 suite of 
% MATLAB codes).
  

% HDATA fields
hdata.hmax  = 30; % Nominal triangle length - reduce size to obtain a 
                  % finer mesh

% Create mesh with specified fineness

[p,t] = mesh2d(node,cnect,hdata,[]);

axis on tight

% First find all unique edges of our problem
edges = boundedges (p,t); % 'edges' has 2 columns, where each row has
                            % the nodes comprising an edge of the boundary

% Identify all boundary nodes 
boundary_nodes = unique(edges(:));    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% First identify the nodes on the edge of the island

xmin = 230;
xmax = 290;
ymin = 240;
ymax = 310;


  [ rows, junk] = size ( boundary_nodes);
  count = 0;
  for i = 1:rows
      % Identitfy node number
      node = boundary_nodes(i,1);
      % Identify coordinates associated with node
      xi = p(node,1);
      yi = p(node,2);
      % Keep nodes inside the box [xmin,xmax]-by-[ymin,ymax]
      if (xi>xmin)&(xi<xmax)&(yi>ymin)&(yi<ymax)
          count = count + 1;
          bn1(count,1) = node;
      end
  end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now choose those nodes that lie on the remaining part of the boundary
% (i.e., the lake edge)

bn2 = setdiff(boundary_nodes,bn1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  Write the vectors 'p' and 't' to files called 'p_coord.dat'
%  and 't_triang.dat' respect.    

  fid1 = fopen('p_coord.dat','w');
  fid2 = fopen('t_triang.dat','w');
  fprintf(fid1,'%f %f\n',p');
  fprintf(fid2,'%d %d %d\n',t');
  fclose(fid1);
  fclose(fid2);
  
  
% Write the vector 'bn1' into file 'bn1_nodes.dat'. Note: these are 
% nodes on which we shall later impose Dirichlet or Robin b.c.'s 

   fid3 = fopen('bn1_nodes.dat','w');
   fprintf(fid3,'%d \n',bn1');
   fclose(fid3);

% Write the vector 'bn2' into file 'bn2_nodes.dat'. Note: these are 
% nodes on which we shall later impose Neumann b.c.'s.

   fid4 = fopen('bn2_nodes.dat','w');
   fprintf(fid4,'%d \n',bn2');
   fclose(fid4);
