import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/src/ui/bloc_display_widget.dart';

class CloneCountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: countBloc.count,
        initialData: 0,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          if(snapshot.hasData) {
            return Text(snapshot.data.toString(),
              style: TextStyle(fontSize: 80, color: Colors.red),);
          }
          return CircularProgressIndicator();
        },

      ),
    );
  }
}
