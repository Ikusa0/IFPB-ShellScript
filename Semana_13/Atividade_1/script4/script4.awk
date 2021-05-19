{
  NAMES[ $1 ] += $3;
}

END {
  for ( NAME in NAMES ){
    print NAME": "NAMES[ NAME ];
  }
}
