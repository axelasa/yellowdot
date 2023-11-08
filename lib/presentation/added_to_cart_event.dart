part of 'added_to_cart_bloc.dart';

abstract class AddedToCartEvent extends Equatable {
  const AddedToCartEvent();
  @override

  List<Object?> get props =>[];
}

class AddToCart extends AddedToCartEvent{
  final int value1,value2;
  const AddToCart(this.value1, this.value2):super();
}

class RemoveFromCart extends AddedToCartEvent{
  final int value1,value2;
  const RemoveFromCart(this.value1, this.value2):super();
}
