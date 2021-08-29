
class FavoriteItem {
  final String favimage, favtitle;


  FavoriteItem({
    required this.favimage,
    required this.favtitle,

  });
  static final List<FavoriteItem> items = [
    FavoriteItem(
      favimage: "assets/productsImages/blause.png",
      favtitle: "Summer Cute Red Blouse",
    ),
    FavoriteItem(
      favimage: "assets/productsImages/Jumber2.png",
      favtitle: "Cute Red Sweatshirt",
    ),
    FavoriteItem(
      favimage:  "assets/productsImages/Jumper.png",
      favtitle: "Casual Pullover",
    ),
    FavoriteItem(
      favimage: "assets/productsImages/blause2.png",
      favtitle: "Cute Long Sleeves Blouse",
    ),
    FavoriteItem(
      favimage: "assets/productsImages/Blue.png",
      favtitle: "Comfort Nike Shoes",
    ),
    FavoriteItem(
      favimage: "assets/productsImages/trousers.png",
      favtitle: "Comfort Boyfriend Jeans",
    ),
    ];

}