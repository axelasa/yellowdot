part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();
  @override

  List<Object?> get props =>[];
}

class AddToCart extends CartEvent{

  const AddToCart():super();
}

class RemoveFromCart extends CartEvent{
  const RemoveFromCart():super();
}
