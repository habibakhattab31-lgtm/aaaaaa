

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aaaaa/counter_event.dart';
import 'package:aaaaa/counter_state.dart';
import 'counter_state.dart';


class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()){
    on<CounterEvent>((event ,emit){
      if(event is counterIncrementEvent){
        emit(counterIncreament(counter:state.counter+1));
      }
      else if
        (event is counterDecrementEvent){
        emit(counterDecrement(counter: state.counter-1));
      };

    }
  );
  }
}

