part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();
  @override
  List<Object> get props => [];
}

class NoCartState extends CartState {

}

class HasCartState extends CartState{
  final int cartItems;

  const HasCartState(this.cartItems):super();

  @override
  List<Object> get props => [cartItems];

}