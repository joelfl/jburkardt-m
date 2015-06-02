function a = sweet3_inverse ( )

%*****************************************************************************80
%
%% SWEET3_INVERSE returns the inverse of the SWEET3 matrix.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    22 February 2015
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Output, real A(6,6), the matrix.
%
  a = [ ...
   0.041073816931594,  -0.007888550234334,  -0.020859268211281, ...
   0.000304369165444,  -0.003979664299291    0.004165693371662;
   0.008091247186000,   0.017910145035154,   0.000156985153951, ...
  -0.024742218112169,  -0.001114102511380   -0.003979664299291;
   0.006256245020564,   0.027534337635034,   0.003121055773444, ...
   0.003970174152700,  -0.024742218112169    0.000304369165444;
   0.038877153234252,  -0.002789344626201,   0.008678729808441, ...
   0.003121055773444,   0.000156985153951   -0.020859268211281;
  -0.119845197024785,   0.170102571465290,  -0.002789344626201, ...
   0.027534337635034,   0.017910145035154   -0.007888550234334;
   0.213071901808913,  -0.119845197024785,   0.038877153234252, ...
   0.006256245020564,   0.008091247186000    0.041073816931594 ];

  return
end
