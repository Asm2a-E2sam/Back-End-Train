function Fibonacci() {
    let a = 0;
    let b = 1;
    return Function() {
      let temp = a;
      a = b;
      b += temp;
      return temp;
    }
  }
  
  const fib = Fibonacci();
  for (var i=0; i<10; i++){
    console.log(fib()); 
  }
