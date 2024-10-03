import 'dart:math';

abstract class Shape{
  calculateArea();
}
//interface
abstract class Drawable{
  draw();
}

class Circle extends Shape implements Drawable{
  int radius;

  Circle(this.radius);
  @override
  calculateArea() {
    return pi * pow(radius, 2); 
  }
  @override
  draw() {
    print("Drawing Circle with radius : ${radius}");
  }
}
class Rectangle extends Shape implements Drawable{
  int width;
  int height;

  Rectangle(this.width,this.height);
  @override
  calculateArea(){
    return print("Area of Rectangle : ${width*height}");
  }
  @override
  draw() {
    print("Drawing Rectangle with width : ${width} and height: ${height}");
  }
}

void main(List<String> args) {
  var circle = Circle(5);
  circle.draw();
  print ("Area of Circle : ${circle.calculateArea().toStringAsFixed(2)}");
  var rectangle = Rectangle(10, 20);
  rectangle.draw();
  rectangle.calculateArea();
  
}



