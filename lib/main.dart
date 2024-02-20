import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter First',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  Color bodyColor = Colors.deepPurple;
  int scoreA = 0;
  int scoreB = 0;
  //Text msg =Text("airplane mode is off",style: TextStyle(fontSize: 40),textAlign:TextAlign.center);

  @override


  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.deepPurple,
        title: Text("Point Count",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
        centerTitle: true,

        
      ),
      body: Column(children: [SizedBox(height: 50,),
        Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text("Team A",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Text(scoreA.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
              TextButton(onPressed: () {setState(() {
                scoreA+=1;
              });}, child: Text("add 1 Point",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),),
              TextButton(onPressed: () {setState(() {
                scoreA+=2;
              });}, child: Text("add 2 Point",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),),
              TextButton(onPressed: () {setState(() {
                scoreA+=3;
              });}, child: Text("add 3 Point",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),),
              ],
               ),
               SizedBox(child: VerticalDivider(color: Colors.black,thickness: 2,),height: 300,width: 40,),
               Column(
            children: [
              Text("Team B",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              Text(scoreB.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
              TextButton(onPressed: () {setState(() {
                scoreB+=1;
              });}, child: Text("add 1 Point",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),),
              TextButton(onPressed: () {setState(() {
                scoreB+=2;
              });}, child: Text("add 2 Point",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),),
              TextButton(onPressed: () {setState(() {
                scoreB+=3;
              });}, child: Text("add 3 Point",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),),
              ],
               )
               ],
               
                ),SizedBox(height: 20,),
                TextButton(onPressed: () {setState(() {
                scoreB=0;
                scoreA=0;
              });}, child: Text("Reset",style: TextStyle(color: Colors.white),),style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),),
      ],),
                 
      
    );
  }
}