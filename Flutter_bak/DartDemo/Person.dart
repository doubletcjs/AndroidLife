class Person {
  String name;
  int age;
  //静态属性
  static int newAge;
  //静态方法 无法访问非静态属性、方法
  static void show() {
    // print(age);
  }

  //私有属性
  var _sexSize = 0;
  
  void getInfo() {
    print("${this.name}----${this.age}");
  } 

  void setInfo(age) {
    this.age = age;
  }

  /**
   * 简写
   */ 
  //Person(this.name, this.age);

  //命名构造函数
  Person.now() {

  }

  //初始化
  // Person():name = "aaa", age=10 {

  // }

  Person(String name, int age) {
    //默认构造函数
    print("默认构造函数");
    this.name = name;
    this.age = age;
    this._sexSize = 0;
  }

  //私有方法
  void _run() {
    print("私有方法");

    print(newAge); //访问静态属性
    print(this.age);//访问非静态属性 
  }
}

//继承
class NewPerson extends Person {
  NewPerson(String name, int age) : super(name, age); 
  
  void test() {
    super._run();
  }

  @override
  void setInfo(age) { 
    super.setInfo(age);
  }
}