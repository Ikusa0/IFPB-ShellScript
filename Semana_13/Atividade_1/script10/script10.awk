{
  if ( (NR - 1) % 5 == 0 ){
    NICKNAME = $1
    for ( i = 2; i <= NF; i++ ) {
      NICKNAME = NICKNAME substr($(i), 1, 1);
    }
    print $0 " -> " "\033[31m"NICKNAME"\033[0m";
  }
}
