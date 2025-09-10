class CounterState {
  int counter;
  CounterState ({required this.counter});
}
 class CounterInitial extends CounterState {
  CounterInitial(): super(counter:0);
}
class counterIncreament extends CounterState {
  counterIncreament({required super.counter});
}
class counterDecrement extends CounterState{
  counterDecrement({required super.counter});
}