part of 'added_to_cart_bloc.dart';

abstract class AddedToCartState extends Equatable {
  const AddedToCartState();
  @override
  List<Object> get props => [];
}

class AddedToCartInitial extends AddedToCartState {

}

class CartState extends AddedToCartState{
  final int addedToCart ,removeFromCart;

  const CartState(this.addedToCart, this.removeFromCart):super();

  @override
  List<Object> get props => [addedToCart];

}