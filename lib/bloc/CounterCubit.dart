import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  void increment() {
    addError(Exception('increment error!'), StackTrace.current);
    emit(state + 1);
  }

  // 在Cubit状态更新之前发生Change改变。一个改变由currentState和nextState组成。
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}
