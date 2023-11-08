import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  int cartItems = 0;
  CartBloc() : super(NoCartState()) {
    on<AddToCart>(_addedToCartEvent);
    on<RemoveFromCart>(_removeFromCart);
  }

  Future<void> _addedToCartEvent(event, Emitter<CartState> emit) async {
    print("adding $cartItems");
    emit(HasCartState(++cartItems));
  }

  Future<void> _removeFromCart(RemoveFromCart event, Emitter<CartState> emit) async {
    print("removing $cartItems");
    if(cartItems == 1) {
      cartItems =0;

      emit(NoCartState());
      return;
    }
    emit(HasCartState(--cartItems));
  }
}
