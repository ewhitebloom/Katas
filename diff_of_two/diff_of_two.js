function twosDifference(input) {
  var numbers = [];
  for (i=0;i < input.length;i++) {
    for (n=0; n < input.length;n++) {
      if ( Math.abs(n-i) == 2 ) {
        numbers.push([n,i]);  
      }
    }
  }
  numbers
};

print twosDifference([1,2,3,4,5,6,7,8,9,10])

