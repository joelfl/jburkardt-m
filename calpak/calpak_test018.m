function calpak_test018 ( )

%*****************************************************************************80
%
%% CALPAK_TEST018 tests JED_TO_YMDF_ENGLISH and YMDF_TO_JED_ENGLISH.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    10 March 2013
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'CALPAK_TEST018\n' );
  fprintf ( 1, '  For the English calendar,\n' );
  fprintf ( 1, '  JED_TO_YMDF_ENGLISH: JED -> YMDF.\n' );
  fprintf ( 1, '  YMDF_TO_JED_ENGLISH: YMDF -> JED.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  JED (in)    YMDF               JED (out)\n' );
  fprintf ( 1, '\n' );

  i = 0;

  while ( 1 )

    i = i + 1;
    jed1 = jed_test ( i );

    if ( jed1 < 0.0 )
      break
    end

    [ y2, m2, d2, f2 ] = jed_to_ymdf_english ( jed1 );

    s2 = ymdf_to_s_english ( y2, m2, d2, f2 );

    jed3 = ymdf_to_jed_english ( y2, m2, d2, f2 );

    fprintf ( 1, '  %11.2f  %20s  %11.2f\n', jed1, s2, jed3 );

  end

  return
end
