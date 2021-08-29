

class Product {
  final String image, title,price,description;
  final int size, id;


  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.size,
    required this.id,
    required this.price,
  });


  static List<Product> Products = [
    Product(
        image: "assets/productsImages/Blue.png",
        title: 'Office Code',
        description: 'Running Lightweight Breathable Nike Shoes',
        size: 42,
        id: 1,
        price: '180',
    ),
    Product(
        image: "assets/productsImages/Green.png",
        title: 'Office Code',
        description: 'Running Gym Tennis Walking Sneaker Athletic Shoes ',
        size: 40,
        id: 1,
        price: '105.9',
    ),
    Product(
        image: "assets/productsImages/Grey.png",
        title: 'Office Code',
        description: 'Athletic Running Blue Shoes',
        size: 12,
        id: 1,
        price: '55',
    ),
    Product(
        image: "assets/productsImages/Yellow.png",
        title: 'Office Code',
        description: 'Nike Dunk Low Yellow Shoes',
        size: 12,
        id: 1,
        price: '111',
    ),
    Product(
        image: "assets/productsImages/Purple.png",
        title: 'Office Code',
        description: 'Nike Air Purple Shoes',
        size: 12,
        id: 1,
        price: '140.33',
    ),
    Product(
        image: "assets/productsImages/Orange.png",
        title: 'Office Code',
        description: 'Nike Air Orange Shoes',
        size: 12,
        id: 1,
        price: '160',
    ),

    Product(
        image: "assets/productsImages/blause.png",
        title: 'Office Code',
        description: 'Summer Short-Sleeved Blouse',
        size: 42,
        id: 2,
        price: '78.55',
    ),
    Product(
        image: "assets/productsImages/blause2.png",
        title: 'Office Code',
        description: 'Long Sleeve Blouse',
        size: 40,
        id: 2,
        price: '90.99',
    ),
    Product(
        image: "assets/productsImages/clothes.png",
        title: 'Office Code',
        description: 'Casual Long Sleeve Sweatshirt Crewnek',
        size: 12,
        id: 2,
        price: '110.87',
    ),
    Product(
        image: "assets/productsImages/Jumber2.png",
        title: 'Office Code',
        description: 'Crewneck Pullover Sweater ',
        size: 12,
        id: 2,
        price: '200',

    ),
    Product(
        image: "assets/productsImages/Jumper.png",
        title: 'Office Code',
        description: 'Off White Sweatshirt',
        size: 12,
        id: 2,
        price: '28',

    ),
    Product(
        image: "assets/productsImages/trousers.png",
        title: 'Office Code',
        description: 'High Rise Destroyed Boyfriend Jeans',
        size: 12,
        id: 2,
        price: '50.99',

    ),
    Product(
        image: "assets/productsImages/bag_1.png",
        title: 'Office Code',
        description: 'Top Zip Blue Handbag',
        size: 42,
        id: 3,
        price: '115',

    ),
    Product(
        image: "assets/productsImages/bag_2.png",
        title: 'Office Code',
        description: 'Crossbody Brown Bag',
        size: 42,
        id: 3,
        price: '100.6',

    ),
    Product(
        image: "assets/productsImages/bag_3.png",
        title: 'Office Code',
        description: 'Black Handbag',
        size: 42,
        id: 3,
        price: '200',

    ),
    Product(
        image: "assets/productsImages/bag_4.png",
        title: 'Office Code',
        description: 'Top Zip Crossbody Orange Bag',
        size: 42,
        id: 3,
        price: '300.9',

    ),
    Product(
        image: "assets/productsImages/bag_5.png",
        title: 'Office Code',
        description: 'Top Handle Pink Bag',
        size: 42,
        id: 3,
        price: '60.08',

    ),
    Product(
        image: "assets/productsImages/bag_6.png",
        title: 'Office Code',
        description: 'Top Zip Crossbody Black Bag',
        size: 42,
        id: 3,
        price: '105',

    ),
  ];


}