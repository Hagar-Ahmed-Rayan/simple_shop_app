import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iclubprogect2/Models/Category.dart';
import 'package:iclubprogect2/Presentations/Screens/Favourite.dart';
import 'package:iclubprogect2/Presentations/Widgets/buildCategoryitem.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shop App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Favorite(),
                ),
              );
            },
            icon: SvgPicture.asset("assets/icons/heart.svg",
              color: Color(0xffe75a01),
              width: 20,
              height: 20,
            ),
          ),
        ],
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Categories:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Category.categories.length,
                  separatorBuilder: (context, index)=> SizedBox(
                    height: 25.0,
                  ),
                  itemBuilder: (context, index)
                  {
                    return buildCategoryItem( category: Category.categories[index], context: context);
                  }
              ),
            ],
          ),
        ),
      ),

    );
  }
}
