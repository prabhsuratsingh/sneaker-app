import 'shoe.dart';

class Cart {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Shoe1',
      price: '2000',
      imagePath: 'lib/images/_1a3c1b3c-7827-40ec-9af5-ba6a340ed5be.jpg',
      description: 'Good Shoe',
    ),
    Shoe(
      name: 'Shoe2',
      price: '3000',
      imagePath: 'lib/images/_9e4b4efc-a5c3-4edb-b72d-360fd0c69deb.jpg',
      description: 'Good Shoe',
    ),
    Shoe(
      name: 'Shoe3',
      price: '4000',
      imagePath: 'lib/images/_74becc42-0ef4-4a89-8d2d-17166d2ab31a.jpg',
      description: 'Good Shoe',
    ),
    Shoe(
      name: 'Shoe4',
      price: '5000',
      imagePath: 'lib/images/_75ef3d4a-2e99-4c59-b630-fedbbbb541ea.jpg',
      description: 'Good Shoe',
    ),
  ];

  //list of items in cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}