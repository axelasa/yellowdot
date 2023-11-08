part of 'added_to_cart_bloc.dart';

abstract class AddedToCartState extends Equatable {
  const AddedToCartState();
  @override
  List<Object> get props => [];
}

class AddedToCartInitial extends AddedToCartState {

}

class AddToCart extends AddedToCartState{
  final int addedToCart ;

  const AddToCart(this.addedToCart):super();

  @override
  List<Object> get props => [addedToCart];

}