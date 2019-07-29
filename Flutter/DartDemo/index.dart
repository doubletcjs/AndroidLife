main() {
  print('fuck');
  final date = DateTime.now();
  print(date);

  print('''阿斯顿发
  
  是的发送
  
  
  大发生的
  
  阿斯顿发多少分''');

  print('a'+' '+'b');


  var list = ["a", "b", "c"];
  print(list);

  var map = {"a": 1, "b": 2, "c": 3};
  print(map);
  print(map["a"]);
  print(map.length);

  var muList = List<String>();
  muList.add("aadsf");
  muList.add("3rrf");
  muList.add("23sd");
  print(muList);

  try {

  } catch(error) {

  }

  for (int i = 0; i <= 50; i++) {
    if (i%2 == 0 ) {
      print(i);
    }
  }

  var sum = 0;
  for (var i = 0; i <= 100; i++) {
    sum += i; 
  }

  var sum1 = 1;
  for (var i = 1; i <= 5; i++) {
      sum1 *= i;
  }

  print("sum=$sum");
  print("sum1=$sum1"); 


  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }

  for (var item in list) {
    print(item);
  }

  list.forEach((item) {
      print(item);
  });

  String getUserInfo(String username, [String sex='男', int age]) { // 可选参数
      if (age != null) {
        return "姓名:$username--性别:$sex--年龄:$age";
      }

        return "姓名:$username--性别:$sex--年龄:保密";
  }

  print(getUserInfo("李四"));

  String getUserInfo1(String username, {String sex='男', int age}) { // 命名参数
      if (age != null) {
        return "姓名:$username--性别:$sex--年龄:$age";
      }

        return "姓名:$username--性别:$sex--年龄:保密";
  }

  print(getUserInfo1("张三", sex: "女", age: 1));

  List list111 = [4, 1, 2, 3, 4];
  var newList = list111.map((obj) {
    if (obj > 2) {
      return obj*2;
    }

    return obj;
  });

  print(newList.toList());

  bool isEventNumber(int n) {
    if (n%2 == 0) {
      return true;
    }

    return false;
  }

  void printNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEventNumber(i)) {
        print(i);
      }
    }
  }

  printNum(100);

  //自执行方法
  ((n) {
    print("自执行方法$n");
  })(12);

  //方法递归
  var sum11111 = 1;
  fn(int n) {
    sum11111 *= n;
    if (n == 1) {
      return;
    }

    fn(n-1);
  }

  fn(5);
  print(sum11111);

  //闭包
  fnC() {
    var a = 123;
    return() {
      a++;
      print(a);
    };
  }

  fnC();
}

int test(int item1, int item2) {
    return 0;
}