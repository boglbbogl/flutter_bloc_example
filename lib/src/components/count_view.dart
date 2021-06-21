import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/src/ui/bloc_display_widget.dart';

class CountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: countBloc.count,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot){
          if(snapshot.hasData){
          return Text(snapshot.data.toString(), style: TextStyle(fontSize: 80),);
          }
          return CircularProgressIndicator();
          },
    ),
    );
  }
}
