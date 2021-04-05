import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_package/flutter_package.dart';

void main() {
  test('01 For Loop', () {                                  // test For Loop
    final forLoop = ForLoop();
    forLoop.run();
    expect(forLoop.count, 8*9);                              // check calculation count
  });

  test('02 Car Class', () {                                 // Car Class Test
    final carTest = CarTest();
    int bmwPrice = carTest.bmw.price;                       // save initial price of BMW
    carTest.run();
    expect(carTest.bmw.price, bmwPrice*0.9*0.9*0.9);        // check the price is discounted correctly
  });

  test('03 Lottery Number Generator', () {                  // Lottery Number Generator Test
    final lottoGen = LottoGen();
    lottoGen.run();
    expect(lottoGen.lotteryNumber.length, 6);               // check if 6 numbers are generated
  });
}
