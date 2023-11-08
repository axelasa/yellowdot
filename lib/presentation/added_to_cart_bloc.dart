import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'added_to_cart_event.dart';
part 'added_to_cart_state.dart';

class AddedToCartBloc extends Bloc<AddedToCartEvent, AddedToCartState> {
  AddedToCartBloc() : super(AddedToCartInitial()) {
    on<AddedToCartEvent>(_addedToCartEvent);
  }

  FutureOr<void> _addedToCartEvent(event, Emitter<AddedToCartState> emit) async {
  }
}
