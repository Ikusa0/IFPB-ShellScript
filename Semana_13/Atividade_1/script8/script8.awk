BEGIN {
  PASSED = 0;
  FLUNKED = 0;
  GRADES = 0;

  for ( INDEX = 0; INDEX < 10; INDEX++ ) {
    #  [0 ~ 10[ = 0;
    #  [10 ~ 20[ = 1;
    #  [20 ~ 30[ = 2;
    #  [30 ~ 40[ = 3;
    #  [40 ~ 50[ = 4;
    #  [50 ~ 60[ = 5;
    #  [60 ~ 70[ = 6;
    #  [70 ~ 80[ = 7;
    #  [80 ~ 90[ = 8;
    #  [90 ~ 100] = 9;
    HISTOGRAM[ INDEX ] = 0;
  }
}

{
  GRADES = ( $(NF-2) + $(NF-1) + $(NF) ) / 3;

  if ( GRADES == 100 ){
    GRADES = 99.99;
  }

  HISTOGRAM[ int(GRADES / 10) ]++;

  if ( GRADES >= 70 ) {
    PASSED++;
  } else {
    FLUNKED++;
  }
}

END {
  print "Passaram: " PASSED "\nReprovaram: " FLUNKED;
  for ( i = 0; i < 9; i++ ) {
    print "[" i "0 ~ " i+1 "0[: " "\033[1m"HISTOGRAM[ i ]"\033[0m";
  }
  print "[90 ~ 100]: " "\033[1m"HISTOGRAM[ 9 ]"\033[0m";
}
