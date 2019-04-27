# Dart函数

1. 函数中"=>"的用法
   当函数中只有一个表达式,可以使用快速写法
   
   ```
   //无返回值类型函数的快速写法  注意：这种写法只适用于无返回值 并且 函数体中仅有一个表达式的函数。
void printNumber(num number) => print(number);
   ```
   
2. 函数中使用的两个关键字：async与await

   async关键字声明该函数内部有代码需要延迟执行.  async用在函数参数后

   在Dart中，有await标记的运算，其结果值都是一个Future对象

   //await关键字声明运算为延迟执行，然后return运算结果

   await`关键字必须在`async函数内部使用

   调用`async`函数必须使用`await`关键字

3. 函数的可选参数与位置可选参数

   a. 函数的可选参数

   ```
   //可以为函数指定一个或多个命名参数
   getHttpUrl(String server, String path, {int port: 80, int numRetries: 3}) {
     // ...
   }
   //可以使用也可以不使用第三个参数调用getHttpUrl。调用该函数时必须使用参数名称
   
   //可以按照不同于它们的声明的顺序使用这些可选参数
   getHttpUrl('example.com', '/index.html');
   getHttpUrl('example.com', '/index.html', port: 8080);
   getHttpUrl('example.com', '/index.html', port: 8080, numRetries: 5);
   getHttpUrl('example.com', '/index.html', numRetries: 5, port: 8080);
   getHttpUrl('example.com', '/index.html', numRetries: 5);
   ```

   b. 函数的位置可选参数

   ```
   由[]包装的参数是位置可选参数
   void log(Object msg, [String tag]) {
   
   }
   
   void log(Object msg, [String tag="默认值"]) {
   
   }
   可以为函数指定多个位置参数
   void log(Object msg, [String tag="默认值"，int port=80]) {
   
   }
   这些参数可以调用也可以不调用，调用的时候可选参数的位置顺序不能乱
   ```

   

4. 函数类型别名 Typedefs

