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
        backgroundColor: Colors.lime,
          appBar: AppBar(
            backgroundColor: Color(0xFFF05262),
            centerTitle: true,
            title: Text("Cooking Recipes",style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 25,
            ),),
          ),

          body:
          ListView.builder
            (
              itemCount: recipes.length,
              itemBuilder: (BuildContext ctxt, int index) {
                Recipes recipe = recipes[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: InkWell(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(
                        builder: (_)=> RecipeDetail(
                          recipe: recipe,
                        )
                    )),
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
                                        child: Text(recipe.name,style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20
                                        ),

                                        ),
                                      )),
                                  decoration: BoxDecoration(
                                      color: Color(recipe.color),
                                    //  borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 50),
                              child: Image.asset(
                                recipe.imagePath,
                                height: 110,
                                width: 180,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
          )



      ),
    );
  }
}

