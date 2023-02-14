// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(UpdateTabState(0)) {
    on<UpdateTabEvent>((event, emit) async {
      emit(UpdateTabState(event.index));
    });
  }

  // TODO: implement initialState
  NavState get initialState => UpdateTabState(0);
}

// ---------------------------------------
// Event for this bloc
// ---------------------------------------

@immutable
abstract class NavEvent {}

class UpdateTabEvent extends NavEvent {
  List<Object?> get props => [index];
  final int index;
  UpdateTabEvent({required this.index});
}

// ---------------------------------------
// States for this bloc
// ---------------------------------------

@immutable
abstract class NavState {}

class UpdateTabState extends NavState {
  final int index;
  UpdateTabState(this.index);
}
