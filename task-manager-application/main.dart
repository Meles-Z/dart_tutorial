
/*
Hi ketema i beliave you read this code carefully. I use linked list for this beacuase there is multi 
method how we can do this but i preaferd lisked list for this to use daynamic memory location.
maybe many of your guys can use list and other some biult in function to do this task.
*/
import 'dart:io';
class Task{
final String title;
final String Description;
final String DeuDate;
final String Status;
Task? next;

Task({required this.title, 
required this.Description,
required this.DeuDate,
required this.Status,
this.next
});
}
class taskManageApp{
  Task? head;
  void addTask(){
    print("Enter title of task");
    final title=stdin.readLineSync()!;
    print("Enter description of task");
    final desc=stdin.readLineSync()!;
    print("Enter dueDate of task");
    final deuDate=stdin.readLineSync()!;
    print("Enter status of task");
    final status=stdin.readLineSync()!;

    // create new task
    final newTask=Task(title: title, Description: desc, DeuDate: deuDate, Status: status);
    if(head==null){
      head=newTask;
    }else{
      Task? current=head;
      while(current!.next != null){
        current=current.next;
      }
      current.next=newTask;

    }
  }

  void printTask(){
    if(head==null){
      print("Task is empty");
      return;
    }
    Task? current=head;
    while(current !=null){
      print("-----------");
      print("Title:${current.title}");
      print("Desctiption:${current.Description}");
      print("DueDate:${current.DeuDate}");
      print("Status:${current.Status}");
      current=current.next;
    }
  }
}

void main(){
  final taskManager=taskManageApp();
  while(true){
    print("Task manager");
    print("1:Add task");
    print("2:Print task");
    print("3: Exit");

    final choice=int.tryParse(stdin.readLineSync()!)??0;
    switch(choice){
      case 1:
        taskManager.addTask();
        break;
      case 2:
        taskManager.printTask();
        break;
      case 3:
        print("Exiting");
        return;
      default:
        print("Invalid choice please try again");

    }
  }
}