# Dart关键字

1. const用来修饰常量（编译时常量）只能被设一次值，在声明处赋值，且值必须为编译时常量；

	```

   final _daysOfWeek = const [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
    ];
    //Only static fields can be declared as const.
    static const id=0;
   ```




2. 变量声明
  >　Variables must be declared using the keywords 'const', 'final', 'var' or a type name.

