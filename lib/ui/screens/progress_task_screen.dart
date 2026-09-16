import 'package:flutter/material.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          spacing: 10,
          children: [
            CircleAvatar(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('full name',style: Theme.of(context).textTheme.titleMedium?.copyWith(color:Colors.white),),
                Text('john.doe@example.com',style: Theme.of(context).textTheme.bodySmall?.copyWith(color:Colors.white),),
              ],
            )
          ]
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
        ],
      ),


      body: Center(child: Text('Progress Task Screen')),
    );
  }
}
