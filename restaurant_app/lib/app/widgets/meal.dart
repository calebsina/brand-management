final List<Meal> _meals = [
  Meal(
    name: 'Burger',
    price: 10.99,
    image:
        'https://fat-tiger.in/wp-content/uploads/2022/08/swiggy-2_0034_Meditarranean-pizza-scaled.jpg',
  ),
  Meal(
    name: 'Pizza',
    price: 12.99,
    image:
        'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/1:1/w_2560%2Cc_limit/Smashburger-recipe-120219.jpg',
  ),
  Meal(
    name: 'Pastas',
    price: 9.99,
    image:
        'https://media.istockphoto.com/id/185065945/photo/pasta-variation.jpg?s=612x612&w=0&k=20&c=MQEjU7uAnvTISNoI78MpCdum7sjN93tjeED3rFqjdHw=',
  ),
  Meal(
    name: 'Salad',
    price: 8.99,
    image:
        'https://www.eatingwell.com/thmb/rmLlvSjdnJCCy_7iqqj3x7XS72c=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/chopped-power-salad-with-chicken-0ad93f1931524a679c0f8854d74e6e57.jpg',
  ),
  Meal(
    name: 'Sashu',
    price: 11.99,
    image:
        'https://www.lemonblossoms.com/wp-content/uploads/2020/06/Chicken-Shawarma-Recipe-S5.jpg',
  ),
  Meal(
    name: 'Egg',
    price: 6.99,
    image:
        'https://media.istockphoto.com/id/185065945/photo/pasta-variation.jpg?s=612x612&w=0&k=20&c=MQEjU7uAnvTISNoI78MpCdum7sjN93tjeED3rFqjdHw=',
  ),
];

class Meal {
  final String name;
  final double price;
  final String image;

  Meal({required this.name, required this.price, required this.image});
}
