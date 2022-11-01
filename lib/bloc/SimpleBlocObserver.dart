import 'package:bloc/bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  // 如果我们希望能够对所有 变化 做出响应，我们可以简单地创建自己的 BlocObserve (Bloc观察者)来观察改变。
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
