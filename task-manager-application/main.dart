// here is what i understand from this code ketama I will use linkedlist method
import 'dart:io';

class taskManagerApp{
  String? Title="";
  String? Descreption="";
  String? DeuDate="";
  String? Status="";

  void addTask(){
    print("Enter title of project:");
    Title=stdin.readLineSync();
    print("Enter Description of project:");
    Descreption=stdin.readLineSync();
    print("Enter due date of project:");
    DeuDate=stdin.readLineSync();
    print("Enter title of project:");
    Status=stdin.readLineSync();
    print(Title);
    print(Descreption);
    print(DeuDate);
    print(Status);
  }
  void viewTask(){
    print("view task");

  }
  void editTask(){
    print("edit task");

  }
  void deleteTask(){
    print("delete task");

  }
}
void main(){
  var t=taskManagerApp();
  t.addTask();
}