import 'package:bloc/bloc.dart';
import 'package:flutter_start_1/bloc/bloc/CounterBloc.dart';
import 'package:flutter_start_1/bloc/bloc/SimpleBlocObserver2.dart';

void main() async {
  // final bloc = CounterBloc();
  // print(bloc.state);
  // bloc.add(CounterIncrementPressed());
  // await Future.delayed(Duration.zero);
  // print(bloc.state);
  // await bloc.close(); // 为什么加await

  Bloc.observer = SimpleBlocObserver2();

  CounterBloc()
    ..add(CounterIncrementPressed())
    ..close();
}
