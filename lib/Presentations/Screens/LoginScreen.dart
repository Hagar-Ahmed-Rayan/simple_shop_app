import 'package:flutter/material.dart';
import 'package:iclubprogect2/Presentations/Screens/AboutUs.dart';
import 'package:iclubprogect2/Presentations/Screens/HomeScreen.dart';
class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
         Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/productsImages/back.png'),
               fit: BoxFit.cover,
               repeat: ImageRepeat.repeat,
             ),
           ),
           child: Padding(

              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SingleChildScrollView(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(

                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        onChanged: (value){
                          print(value);
                        },

                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff272c3f)
                            )
                          ),
                          labelText: 'Email Address',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff272c3f))
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Color(0xff272c3f),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onFieldSubmitted: (value){
                          print(value);
                        },
                        onChanged: (value){
                          print(value);
                        },

                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff272c3f)
                              )
                          ),
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff272c3f))
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff272c3f),
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Color(0xff272c3f),
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff272c3f),
                          borderRadius: BorderRadiusDirectional.circular(10.0),
                        ),
                        width: double.infinity,
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                            ),
                            );
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Color(0xffe9e1ea),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => infoAboutUs(),
                                ),
                              );
                            },
                            child: Text(
                              'ABOUT US',
                              style: TextStyle(
                                color: Color(0xff272c3f),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
         ),

        );

  }
}
