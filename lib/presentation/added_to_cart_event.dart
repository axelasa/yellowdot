part of 'added_to_cart_bloc.dart';

abstract class AddedToCartEvent extends Equatable {
  const AddedToCartEvent();
  @override

  List<Object?> get props =>[];
}

class CartStatus extends AddedToCartEvent{

  const CartStatus():super();
}