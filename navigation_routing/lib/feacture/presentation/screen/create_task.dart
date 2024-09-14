import 'package:flutter/material.dart';
import 'package:navigation_routing/feacture/presentation/widgets/custome_button.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleEditingController=TextEditingController();
    TextEditingController descriptionEditingController=TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Create Task'),
        centerTitle: true,
      ),
      body: Container(
        padding:const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const Text("Title",style: TextStyle(fontWeight: FontWeight.bold),),
             CustomeFormContainer(hint: 'Enter task title', controller:titleEditingController,),
            const SizedBox(height: 16,),
            const Text('Description', style: TextStyle(fontWeight: FontWeight.bold),),
             CustomeFormContainer(hint: 'Enter task description', controller:descriptionEditingController,),
            const SizedBox(height: 16,),
            CustomeButton(
              titleEditingController: titleEditingController, 
              descriptionEditingController: descriptionEditingController,
              text: 'Create', 
              onPressed: (){
                if(titleEditingController.text.isNotEmpty && descriptionEditingController.text.isNotEmpty){
                  Navigator.pop(context, {
                    "title":titleEditingController.text,
                    "description":descriptionEditingController.text
                  });
                }
              },
              ),
          ],
        ),
      ),
    );
  }
}

class CustomeFormContainer extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  const CustomeFormContainer({
    super.key,required this.hint, this.controller });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}