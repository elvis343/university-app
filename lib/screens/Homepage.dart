import 'package:flutter/material.dart';
import 'package:university_app/screens/Home.dart';
import 'package:university_app/screens/profile.dart';
import 'package:university_app/screens/grades.dart';
import 'package:university_app/screens/course.dart';
import 'package:university_app/screens/about_us.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  int _currentindex=0;
  
  List<Widget> widgetlist=[
    const Home(),
    const Course(),
    Grades(),
    const Profile(),
    const About_Us(),

  ];
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
  //  appBar:AppBar(title:const Text("Homepage"),backgroundColor: Colors.black,
                  
  //  ),

    backgroundColor: Colors.grey,
    body:IndexedStack(
      index: _currentindex,
      children: widgetlist,
    ),
     bottomNavigationBar:BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,

    currentIndex: _currentindex,
     onTap: (int index){
      setState((){
      _currentindex=index;}
      );

    },
      items:const [
      BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label:'Home',
       backgroundColor: Colors.black,
       
      ),
   
        BottomNavigationBarItem(
         icon: Icon(Icons.book),
         label:'Course',
       backgroundColor: Color.fromARGB(225, 7, 77, 77),
  
      
       
       ),  
      BottomNavigationBarItem(
         icon: Icon(Icons.grade_sharp),
         label:'Grades',
         backgroundColor: Colors.black,
       
      ),   
       BottomNavigationBarItem(
         icon: Icon(Icons.person),
         label:'Profile',
        backgroundColor: Colors.black,
       
      ),
      BottomNavigationBarItem(
         icon: Icon(Icons.person),
         label:'Aboutus',
        backgroundColor: Colors.black,
      ),
      
    ],
   

 ));
}
}