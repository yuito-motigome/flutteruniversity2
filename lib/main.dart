import 'package:flutter/material.dart';
import 'package:flutteruniversity2/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String sampletext = "Youhaveflutter.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: 
      ChangeNotifierProvider<MainModel>(
        create: (_){return MainModel();},
        child: Scaffold( 
        
        appBar: AppBar(
    
          title: Text("provider"),
        ),
        body: 
        Consumer<MainModel>(builder: (context,model,child){
            return Center(
            
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  model.sampletext,
                ),
                RaisedButton(onPressed: (){model.changeSampleText();},
                child:Text("OK")
                )

              ],
            ),
          );
        }),
    ),
      ),
    );
  }
}

