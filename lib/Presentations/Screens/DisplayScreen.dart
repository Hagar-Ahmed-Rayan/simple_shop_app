import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iclubprogect2/Models/Category.dart';
import 'package:iclubprogect2/Models/product.dart';

class DisplayScreen extends StatefulWidget {
  static String routeName = 'displayScreen';
  const DisplayScreen({Key? key}) : super(key: key);

  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  List<Product> categoryProducts = [];
  late Category category;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    category = ModalRoute.of(context)!.settings.arguments as Category;
    categoryProducts = Product.Products.where((element) => element.id == category.id).toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff272c3f),
        actions: [
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/search.svg",
              color:Colors.white,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/cart.svg",
              color: Colors.white,
            ),
          ),


        ],
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/productsImages/back.png'),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: ListView.separated(
          itemCount: categoryProducts.length,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(

                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                     height: 180.0,
                     width: 180.0,

                    decoration: BoxDecoration(


                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Image.asset(
                      categoryProducts[index].image,

                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          categoryProducts[index].description,
                          style:TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          '\$${categoryProducts[index].price}',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),



                ],
              ),
            );
          },
          separatorBuilder: (context, index)=>SizedBox(
            height: 10.0,
          ),

        ),
      ),
    );
  }
}

