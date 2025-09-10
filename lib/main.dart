import 'package:aaaaa/counter_bloc.dart';
import 'package:aaaaa/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aaaaa/counter_state.dart';
import 'package:bloc/bloc.dart';

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
      title: 'Flutter Demo',

      home:BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: const MyHomePage(title: "flutter demo homepage ",) ,
      )



    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(


      ) ,
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Text("you have pushed the button this many times:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  context.read<CounterBloc>().add(counterIncrementEvent());
                }
                , icon: Icon(Icons.add)),
                BlocConsumer<CounterBloc, CounterState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return Text("${state.counter}",
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  },
                ),
                IconButton(onPressed: (
                    ){
                  context.read<CounterBloc>().add(counterDecrementEvent());
                }, icon: Icon(Icons.remove))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

