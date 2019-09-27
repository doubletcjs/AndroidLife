import 'Person.dart';

main() {
  var p1 = new Person("李四", 100);
  p1.setInfo(435434);
  p1.getInfo(); 

  List list = List<Person>();
  list.add(p1);

  print(list);

  p1..age = 200
    ..name = "xxxx"
    ..getInfo();

  //连缀操作
}