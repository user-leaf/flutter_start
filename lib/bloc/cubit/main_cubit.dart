import 'package:bloc/bloc.dart';
import 'package:flutter_start_1/bloc/cubit/CounterCubit.dart';
import 'package:flutter_start_1/bloc/cubit/SimpleBlocObserver.dart';

void main() async {
  // Stream<int> stream = countStream(10);
  // int sum = await sumStream(stream);
  // print(sum);

  // final cubit = new CounterCubit(0);
  // print(cubit.state);
  // cubit.increment();
  // print(cubit.state);
  // cubit.close();

  // final cubit = new CounterCubit(0);
  // final subscription = cubit.stream.listen(print);
  // cubit.increment();
  // await Future.delayed(Duration.zero);
  // await subscription.cancel();
  // await cubit.close();

  Bloc.observer = SimpleBlocObserver();

  CounterCubit(0)
    ..increment()
    ..close();
}

Stream<int> countStream(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}
