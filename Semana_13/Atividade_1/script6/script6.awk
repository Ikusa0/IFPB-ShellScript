{
  if ( ( $(NF-2) + $(NF-1) + $(NF) ) / 3 >= 70 ){
    NF -= 3;
    print $0;
  }
}