

class Book{
  String title;
  String author;
  double price;
  Book(this.title,this.author,this.price);
  double discountedPrice(double discountPercent){
    double discountAmount = price*(discountPercent/100);
    return price - discountAmount;

  }
  void displayInfo(){
    print("Title : $title");
    print("Author : $author");
    print("Original Price : \TK${price.toStringAsFixed(2)}");
  }
}
class Employee{
  String name;
  double salary;
  Employee(this.name,this.salary);

}
class Manager extends Employee{
  String department;
  Manager(String name,double salary ,this.department) : super(name,salary);
  void displayInfo(){
    print("Name : $name");
    print("Salary : ${salary.toStringAsFixed(2)}");
    print("Department : $department");
  }

}
class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage) : super(name, salary);
  void displayInfo(){
    print("Name : $name");
    print("Salary : ${salary.toStringAsFixed(2)}");
    print("Programming Language : $programmingLanguage");
  }
}
abstract class Appliance{
  void turnOn();
  void turnOff();
}
class Fan extends Appliance{
  @override
  void turnOn(){
    print("Fan is running");

  }
  @override
  void turnOff(){
    print("Fan is now stopped");
  }

}
class Light extends Appliance{
  @override
  void turnOn(){
    print("Light is switched on ");
  }
  @override
  void turnOff(){
    print("Light is switched off");
  }
}

void main(){
  Book book1 = Book("DSA", "Noman", 400.00);
  Book book2 = Book("Dartbook", "Firoz", 200.00);
  print('Book 1:');
  book1.displayInfo();

  print("Discounted Price (15%) : \TK${book1.discountedPrice(15).toStringAsFixed(2)}");
  print('Book 2:');
  book2.displayInfo();

  print("Discounted Price (20%) : \TK${book2.discountedPrice(20).toStringAsFixed(2)}");

  Manager manager1 = Manager("Noman", 20000, "IT");
  manager1.displayInfo();
  Developer developer = Developer("Tanjim", 50000, "Flutter");
  developer.displayInfo();
  Fan fan = Fan();
  print('\nTesting Fan:');
  fan.turnOn();
  fan.turnOff();
  Light light = Light();
  print('\nTesting Light:');
  light.turnOn();
  light.turnOff();


}