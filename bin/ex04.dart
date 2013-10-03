import 'dart:math' as mathematique;

void main (){
  question1();
  question2();
  question3();
  question4();
  question5();
  //ex04: Write functions with parametes and use them in the given context
}

/*
Le code de Arnaud Genest:

num fibonacci(num n) {
    if (n == 0 || n == 1) {
        return n;}
    else
{return fibonacci(n-1) + fibonacci(n-2);}}

List fibonacciLine(num n) {
    var list = new List(n);
    for (var x = 0; x < n; x++) {
        list[x] = fibonacci(x);
    }
    return list;}

Le code de Charles Gagnon:

num fibonacci(num n) {
    if (n == 0 || n == 1) {
        return n;}
    else
{return fibonacci(n-1) + fibonacci(n-2);}}

List fibonacciLine(num n) {
    var list = new List(n);
    for (var x = 0; x < n; x++) {
        list[x] = fibonacci(x);
    }
    return list;}

 */

void question1() {
  //Print the first 11 numbers, starting with 0, of the Fibonacci sequence.
  print(fibonacciLine(11));
}

num fibonacci(num n) {
  if (n == 0 || n == 1) {
    return n;
  } else {
    return fibonacci(n-1) + fibonacci(n-2);
  }
}

List fibonacciLine(num n) {
  var list = new List(n);
  for (var x = 0; x < n; x++) {
    list[x] = fibonacci(x);
  }
  return list;
}

void question2() {
  //Calculate the end point of the line
  //I've tried different methods but couldn't use sin and cos using dart math...
  var locx = (980/2);
  var locy = (660/2);
  var angle = 33;
  var rad = angle * 0.0174532;
  var linelenth = 120;
  var x = (linelenth * mathematique.cos(rad)) + locx;
  var y = (linelenth * mathematique.sin(rad)) + locy;
  print("The coordinates of the end of the line is ($x , $y)");
}

void question3() {
  //Calculate the time in years,months and days passed between your birthday at noon and today at noon
  DateTime bday = new DateTime(1987,3,19,12,0,0);
  DateTime today = new DateTime(2013,9,30,12,0,0);
  var difference = (today.difference(bday));
  print ((difference.inDays));
}

void question4() {
  //Calculate a compound interest each year for 10 years of 100$ at a fixed interest rate of 3.3
  var interest = 0.033;
  var invest = 1000;
  var rate = (1+interest);
  for (int o = 1; o < 11; o++)
    print(invest*mathematique.pow(rate,o));
}

void question5() {
  //Calculate the first 20 terms of the 12 times table
  var y = 12;
  for (int x = 1; x <= 20; x++)
  print(x * y);
}
