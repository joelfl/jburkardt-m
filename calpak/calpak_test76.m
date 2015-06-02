function calpak_test76 ( )

%*****************************************************************************80
%
%% CALPAK_TEST76 tests YMDF_TO_WEEKDAY_COMMON.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    22 April 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'CALPAK_TEST76\n' );
  fprintf ( 1, '  For the Common calendar:\n' );
  fprintf ( 1, '  YMDF_TO_WEEKDAY_COMMON returns the day of the week.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  JED   YMDF     Day of the week\n' );
  fprintf ( 1, '\n' );

  i = 0;

  while ( 1 )

    i = i + 1;
    jed1 = jed_test ( i );

    if ( jed1 < 0 )
      break
    end

    jed2 = jed_to_next_noon ( jed1 );

    [ y1, m1, d1, f1 ] = jed_to_ymdf_common ( jed2 );
    s1 = ymdf_to_s_common ( y1, m1, d1, f1 );
 
    w2 = ymdf_to_weekday_common ( y1, m1, d1, f1 );
    s2 = weekday_to_name_common ( w2 );

    fprintf ( 1, '  %11.2f  %15s  %d  %15s\n', jed2, s1, w2, s2 );

  end

  return
end