import 'package:flutter/cupertino.dart';

import 'animalItem.dart';
import 'iosSub/cupertinoFirstPage.dart';
import 'iosSub/cupertinoSecondPage.dart';


List<Animal> favoriteList = List();

class CupertinoMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CupertinoMain();
  }
}

class _CupertinoMain extends State<CupertinoMain> {
  CupertinoTabBar tabBar;
  List<Animal> animalList = List();


  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
    ]);

    animalList.add(
        Animal(animalName: "Bee", kind: "Bug", imagePath: "repo/images/bee.png"));
    animalList.add(Animal(
        animalName: "Cat", kind: "Mammal", imagePath: "repo/images/cat.png"));
    animalList.add(Animal(
        animalName: "Cow", kind: "Mammal", imagePath: "repo/images/cow.png"));
    animalList.add(Animal(
        animalName: "Dog", kind: "Mammal", imagePath: "repo/images/dog.png"));
    animalList.add(Animal(
        animalName: "Fox", kind: "Mammal", imagePath: "repo/images/fox.png"));
    animalList.add(Animal(
        animalName: "Monkey", kind: "Primates", imagePath: "repo/images/monkey.png"));
    animalList.add(Animal(
        animalName: "Pig", kind: "Mammal", imagePath: "repo/images/pig.png"));
    animalList.add(Animal(
        animalName: "Wolf", kind: "Mammal", imagePath: "repo/images/wolf.png"));

  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(tabBar: tabBar, tabBuilder: (context , value){
        if(value == 0){
          return CupertinoFirstPage(animalList: animalList,);
        }else{
          return CupertinoSecondPage(animalList: animalList,);
        }
      }),
    );
  }
}
