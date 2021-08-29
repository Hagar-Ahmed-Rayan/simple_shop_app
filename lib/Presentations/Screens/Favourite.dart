import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iclubprogect2/Models/favoriteItems.dart';


class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Top Rated',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff272c3f),
      ),
      body:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/productsImages/back.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  itemCount:FavoriteItem.items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                  ),
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20.0),
                          child: Image.asset(
                            FavoriteItem.items[index].favimage,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical:5.0,
                        ),
                        child: Text(
                          FavoriteItem.items[index].favtitle,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                      ),


                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );



  }
}

