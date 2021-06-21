import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/src/bloc/count_bloc.dart';
import 'package:flutter_bloc_example/src/components/second_count_view.dart';

CountBloc2 countBloc2;

class SecondBlocDisplayWidget extends StatefulWidget {
   @override
  _SecondBlocDisplayWidgetState createState() => _SecondBlocDisplayWidgetState();
}

class _SecondBlocDisplayWidgetState extends State<SecondBlocDisplayWidget> {

  @override
  void initState() {
    super.initState();
    countBloc2 = CountBloc2();
  }

  @override
  void dispose() {
    super.dispose();
    countBloc2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bloc counter'),
      ),
      body: Column(
        children: [
          Expanded(child: SecondCountView()),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(icon: Icon(Icons.add, size: 40,), onPressed: (){
            countBloc2.add();
          }),
          IconButton(icon: Icon(Icons.remove, size: 40,), onPressed: (){
            countBloc2.subtract();
          }),
        ],
      ),
    );
  }
}
