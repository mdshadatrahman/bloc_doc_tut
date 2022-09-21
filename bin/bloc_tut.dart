import 'package:bloc/bloc.dart';

void main() async {
  CounterCubit(10)
    ..increment()
    ..close();
}

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}
