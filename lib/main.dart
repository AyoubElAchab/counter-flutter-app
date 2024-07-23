import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home : Test(),
  ));
}

// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
 class Test extends StatefulWidget {
   const Test({super.key});
 
   @override
   State<Test> createState() => _TestState();
 }
 
 class _TestState extends State<Test> {
  int ninjaLevel = 0;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor : Colors.grey[900],
       appBar : AppBar(
         title : Text('nenja id card'),
         centerTitle : true,
         backgroundColor: Colors.grey[850],
         elevation : 0.0,
       ),
       floatingActionButton : FloatingActionButton(
         onPressed : () {
           setState((){
             ninjaLevel += 1;
           });
         },
         child :  Icon(Icons.add),
         backgroundColor : Colors.grey[800],
       ),
       body : Padding(
         padding : EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
         child : Column(
           crossAxisAlignment : CrossAxisAlignment.start,
           children : [
             Center(
               child :  CircleAvatar(
                 backgroundImage: AssetImage('assets/profile.jpg'),
                 radius : 40.0,
               ),
             ),
             Divider(
               height : 90.0,
               color : Colors.grey[800],
             ),
             Text(
               'NAME',
               style : TextStyle(
                 color : Colors.grey,
                 letterSpacing : 2.0,
               ),
             ),
             SizedBox(height : 10.0),
             Text(
               'AYOUB',
               style : TextStyle(
                 color : Colors.amberAccent[200],
                 fontSize : 28.0,
                 fontWeight : FontWeight.bold,
                 letterSpacing : 2.0,
               ),
             ),
             SizedBox(height : 30.0),
             Text(
               'CURRENT LEVEL ',
               style : TextStyle(
                 color : Colors.grey,
                 letterSpacing : 2.0,
               ),
             ),
             SizedBox(height : 10.0),
             Text(
               '$ninjaLevel',
               style : TextStyle(
                 color : Colors.amberAccent[200],
                 fontSize : 28.0,
                 fontWeight : FontWeight.bold,
                 letterSpacing : 2.0,
               ),
             ),
             SizedBox(height : 30.0),
             Row(
               children : [
                 Icon(
                   Icons.email,
                   color: Colors.grey[400],
                 ),
                 SizedBox(width : 10.0),
                 Text(
                   'ayoub@ayoub.com',
                   style : TextStyle(
                     color : Colors.grey[400],
                     fontSize : 18.0,
                     letterSpacing : 1.0,
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
     );
   }
 }
 