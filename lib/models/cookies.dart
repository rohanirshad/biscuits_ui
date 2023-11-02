class Cookie {
  String name;
  String price;
  String image;
  Cookie({required this.name, required this.price, required this.image});
}

final cookies = [
  Cookie(name: "Chocolate\nchips", price: "20 USD", image: "assets/1.png"),
  Cookie(name: "Oatmeal with raisins", price: "16 USD", image: "assets/2.png"),
];

class Biscuits {
  String name;
  String price;
  String image;
  Biscuits({required this.name, required this.price, required this.image});
}

final biscuits = [
  Biscuits(name: "Chocolate\nCream", price: "35 USD", image: "assets/3.png"),
  Biscuits(name: "Peanut\nButter", price: "40 USD", image: 'assets/4.png'),
];
