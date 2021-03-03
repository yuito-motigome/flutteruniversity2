import 'package:flutter/material.dart';
import 'package:flutteruniversity2/secound.dart';
import 'package:flutteruniversity2/get_user_name.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(1000, (index) => "$index 番目のアイテム");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white 
          
        
      ),
      home: 
      Scaffold(
      appBar: AppBar(
        
        centerTitle: true,
        title: Text("mytube"),
        actions: [
          SizedBox(
          width: 40,
          child:
          FlatButton(onPressed: (){
            //todo
          }, child: Icon(Icons.search)),),
          SizedBox(
          width: 40,
          child:
          FlatButton(onPressed: (
          ){
            //todo
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GetUserName("fmqvj8VqotkBuUxIDkAB")),
          );
          }, child: Icon(Icons.more_vert))),
          ],
        leading: Image.asset("images/youtube.png"),
        
      ),
      body:Container(
        child: 
        Column(children: [
          Row(children: [
            SizedBox( child:Image.asset("images/picture.jpg"),
            width: 80,
            height: 60,),
            
            const SizedBox(
              width: 8,

            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const Text("上森チャンネル",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                FlatButton(onPressed: (){

                  //todo
                }, 
                  child: Row(children: [
                  Icon(Icons.video_call,color: Colors.red,),
                  Text("登録する",style: TextStyle(fontSize: 12),),
                  Text("チャンネル登録者数　9999人",style: TextStyle(fontSize: 10),)
                  
                  
                ],))
                
              ],)  
            
          ],),
          Expanded(
                      child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context,index){
                return ListTile(
                  leading: Image.asset("images/picture.jpg"),
                  title: Column(children: [
                    Text("Youtube初投稿",style: TextStyle(fontWeight: FontWeight.bold),),
                    Row(children: [
                      Text(
                        "9999回再生",
                        style: TextStyle(fontSize: 9),
                      ),
                      Text(
                        "9日前",
                        style: TextStyle(fontSize: 9),)
                    ],)
                  ],),
                  
                  
                  trailing: Icon(Icons.more_vert),
                );
              }
              ),
          )
        ],),
      )
      
      ),
    );
  }
}

