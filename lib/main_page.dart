import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/src/ui/bloc_display_widget.dart';

import 'src/ui/second_bloc_display_widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC Pattern'),
      ),
      body: Column(
        children: [
          _navigatorRoute(context, title: 'BLoC First',
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BlocDisplayWidget()));
          }),
          _navigatorRoute(context, title: 'BLoC Second',
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondBlocDisplayWidget()));
          }),
        ],
      ),
    );
  }

  Center _navigatorRoute(BuildContext context, {onTap,String title}) {
    return Center(
          child: TextButton(
            onPressed: onTap,
            child: Text(title, style: TextStyle(fontSize: 40),),
          ),
        );
  }
}
