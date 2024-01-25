import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
      theme: ThemeData(

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: ClipOval(
              child: Image.asset(
                height: 60,
                width: 60,
                'assets/man.jpg',
               fit: BoxFit.cover,),
            ),
          ),
          title: Text('Hello, I\'m', 
          style: TextStyle(
            color: Colors.grey.shade400
          ),),
          subtitle: const Text('Souleymane', 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
        ),
        actions: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.calendar)),
                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}