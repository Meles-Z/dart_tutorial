import 'package:bloc/bloc.dart';

sealed class CounterEvent {}

final class CounterIncrementPressed extends CounterEvent {}

class CounterBlock extends Bloc<CounterEvent, int> {
  CounterBlock() : super(0) {
    on<CounterIncrementPressed>((event, emit) {
      emit(state + 1);
    });
  }
}

Future<void> main() async {
  final block = CounterBlock();
  print(block.state);
  block.add(CounterIncrementPressed());
  final subscription = block.stream.listen(print);
  await Future.delayed(Duration.zero);
  print(block.state);
  await subscription.cancel();
  await block.close();
}
