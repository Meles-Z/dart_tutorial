
/*
Hi Ketema CEO of Zulu Tech
I believe you have carefully read this code. 
I used a linked list for this, there are multiple methods
 to achieve this, but I preferred using a linked list to take advantage 
 of dynamic memory allocation. Some of you may choose to use a list or 
 other built-in functions to accomplish this task.

 ** when you register task type status as complete or pending**
 **when you edit your task use title of task to find wich task will editable**
 Have a good testing time
*/
import 'dart:io';
class Task{
 String title;
String Description;
String DeuDate;
String Status;
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

  void viewTask(){
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

  void viewCompletedTask(){
    if(head==null){
      print("Task is empty");
      return;
    }
    Task? current=head;
    while(current !=null){
      if(current.Status=="complete"){
        print("-----------");
        print("Title:${current.title}");
        print("Desctiption:${current.Description}");
        print("DueDate:${current.DeuDate}");
        print("Status:${current.Status}");
      }
      current=current.next;
    }
  }

  void viewPendingTask(){
    if(head==null){
      print("Task is empty");
      return;
    }
    Task? current=head;
    while(current !=null){
      if(current.Status=="pending"){
        print("-----------");
        print("Title:${current.title}");
        print("Desctiption:${current.Description}");
        print("DueDate:${current.DeuDate}");
        print("Status:${current.Status}");
      }
      current=current.next;
    }
  }

  void editTask() {
  if (head == null) {
    print("Task list is empty. Nothing to edit.");
    return;
  }

  print("Enter the title of the task you want to edit:");
  final titleToEdit = stdin.readLineSync()!;

  Task? current = head;
  while (current != null) {
    if (current.title == titleToEdit) {
      print("Enter new title :");
      final newTitle = stdin.readLineSync();
      if (newTitle != null && newTitle.isNotEmpty) {
        current.title = newTitle;
      }

      print("Enter new description (or leave blank to keep the same):");
      final newDescription = stdin.readLineSync();
      if (newDescription != null && newDescription.isNotEmpty) {
        current.Description = newDescription;
      }

      print("Enter new due date (or leave blank to keep the same):");
      final newDueDate = stdin.readLineSync();
      if (newDueDate != null && newDueDate.isNotEmpty) {
        current.DeuDate = newDueDate;
      }

      print("Enter new status (or leave blank to keep the same):");
      final newStatus = stdin.readLineSync();
      if (newStatus != null && newStatus.isNotEmpty) {
        current.Status = newStatus;
      }

      print("Task edited successfully!");
      return;
    }

    current = current.next;
  }

  print("Task with title '$titleToEdit' not found.");
}


void deleteTask() {
  if (head == null) {
    print("Task list is empty. Nothing to delete.");
    return;
  }

  // delete if only one node
  if (head!.next == null) {
    head = null; 
    return;
  }

  Task? current = head;
  Task? previous = null;
  while (current != null && current.next != null) {
    previous = current;
    current = current.next;
  }

  if (previous != null) {
    previous.next = null; 
  } else {
    print("Unexpected error: Could not find node to delete.");
  }
}
}

void main(){
  final taskManager=taskManageApp();
  while(true){
    print("Task manager");
    print("1:Add task");
    print("2:View All task");
    print("3:View completed task");
    print("4:View Pending task");
    print("5:Edit task");
    print("6:Delete task");
    print("7: Exit");

    final choice=int.tryParse(stdin.readLineSync()!)??0;
    switch(choice){
      case 1:
        taskManager.addTask();
        break;
      case 2:
        taskManager.viewTask();
        break;
      case 3:
        taskManager.viewCompletedTask();
        break;
      case 4:
        taskManager.viewPendingTask();
        break;
      case 5:
        taskManager.editTask();
       
        break;
      case 6:
        taskManager.deleteTask();
        return;
      case 7:
        print("Exiting");
        return;
      default:
        print("Invalid choice please try again");
    }
  }
}