import 'package:cookingrecipe/RecipeDetail.dart';
import 'package:cookingrecipe/module/recipes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF05262),
          centerTitle: true,
          title: Text("Cooking Recipes",style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 25,
          ),),
        ),
        body:
        ListView(
          children: <Widget>[
            SizedBox(height: 60,),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:
                  (_) => RecipeDetail(

              ),)),
              child: Container(

                child: Stack(

                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35,top: 30),
                          child: Container(
                            height: 140,
                            width: 390,
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Text(recipes[0].name,style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20
                                  ),

                                  ),
                                )),
                            decoration: BoxDecoration(
                                color: Color(recipes[0].color),
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 20),
                        child: Image.asset(
                          recipes[0].imagePath,
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(


              child: Stack(

                children: <Widget>[



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35,top: 30),
                        child: Container(
                          height: 140,
                          width: 390,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Text(recipes[1].name,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20
                                ),

                                ),
                              )),
                          decoration: BoxDecoration(
                              color: Color(recipes[1].color),
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 20),
                      child: Image.asset(
                        recipes[1].imagePath,
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(


              child: Stack(

                children: <Widget>[



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 35,top: 30),
                        child: Container(
                          height: 140,
                          width: 390,
                          child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Text(recipes[2].name,style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20
                                ),

                                ),
                              )),
                          decoration: BoxDecoration(
                              color: Color(recipes[2].color),
                              borderRadius: BorderRadius.circular(100)
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 20),
                      child: Image.asset(
                        recipes[2].imagePath,
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),



      ),
    );
  }
}

