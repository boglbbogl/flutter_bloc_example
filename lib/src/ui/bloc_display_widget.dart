import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/src/bloc/count_bloc.dart';
import 'package:flutter_bloc_example/src/components/clone_count_view.dart';
import 'package:flutter_bloc_example/src/components/count_view.dart';

CountBloc countBloc;

class BlocDisplayWidget extends StatefulWidget {
  @override
  _BlocDisplayWidgetState createState() => _BlocDisplayWidgetState();
}

class _BlocDisplayWidgetState extends State<BlocDisplayWidget> {

  @override
  void initState() {
    super.initState();
    countBloc = CountBloc();
  }

  @override
  void dispose() {
    super.dispose();
    // countBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bloc counter'),
      ),
      body: Column(
        children: [
          Expanded(child: CountView()),
          Expanded(child: CloneCountView()),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(icon: Icon(Icons.add, size: 40,), onPressed: (){
            countBloc.countEventBloc.countEventSink.add(CountEvent.ADD_EVENT);
          }),
          IconButton(icon: Icon(Icons.remove, size: 40,), onPressed: (){
            countBloc.countEventBloc.countEventSink.add(CountEvent.SUBTRACT_EVENT);
          }),
        ],
      ),
    );
  }
}
