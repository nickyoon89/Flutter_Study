library flutter_package;

import 'dart:collection';
import 'dart:math' as math;

/// For Loop.
class ForLoop {
  int i = 0;
  int j = 0;
  int count = 0;                            // check how many calculation is executed

  void run () {
    print('For Loop');
    for (i = 2; i <= 9; i++) {
      for (j = 1; j <= 9; j++) {
        print('$i * $j = ${i * j}');        // print the result of calculation
        count ++;                           // increase calculation count
      }
      print('');
    }
  }
}

/// Car Class
class Car {
  int maxSpeed = 0;
  num price = 0;
  String name = "";

  Car(int maxSpeed, num price, String name) {
    this.maxSpeed = maxSpeed;
    this.price = price;
    this.name = name;
  }

  saleCar() {
    price = price * 0.9;                    // on sale, the price discounted 10%
    return price;
  }
}

class CarTest {
  Car bmw = Car(320, 100000, 'BMW');

  run () {
    print('Car Class');
    bmw.saleCar();
    bmw.saleCar();
    bmw.saleCar();
    print(bmw.price);                        // print the discounted price
  }
}

/// Lotto Number Generator
class LottoGen {
  var rand;
  HashSet<int> lotteryNumber = HashSet();   // collection to save lottery numbers

  run(){
    print('\nLottery Number Generator\n');
    rand = math.Random();                   // Random generator assigned
    while(lotteryNumber.length < 6) {       // generate 6 random numbers
      lotteryNumber.add(rand.nextInt(45));  // maximum number is 45
    }
    print(lotteryNumber);                   // print lottery number
  }
}


