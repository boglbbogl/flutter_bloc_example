import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/src/ui/bloc_display_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Pattern'),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BlocDisplayWidget()));
          },
          child: Text('BLoC Page', style: TextStyle(fontSize: 40),),
        ),
      ),
    );
  }
}
