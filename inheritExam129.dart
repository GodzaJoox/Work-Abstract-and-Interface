//INTERFACE
abstract class Greeting{
  thai();
  english();
  japan();
}
abstract class NotYetGreet implements Greeting{
  void japan() {
    print("Ohiyo");
  }
}
class Greet extends NotYetGreet{
  void thai(){
    print("Arun sawad");
  }
  void english(){
    print("Good morning");
  }
}
void main(List<String> args) {
  var Gee = Greet();
  Gee.thai();
  Gee.english();
  Gee.japan();
  
}