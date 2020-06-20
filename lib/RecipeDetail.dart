import 'package:cookingrecipe/module/recipes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeDetail extends StatefulWidget {
  final Recipes recipe;

  const RecipeDetail({Key key, this.recipe}) : super(key: key);

  @override
  _SmoothDetailState createState() => _SmoothDetailState();
}

class _SmoothDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.recipe.name),
          backgroundColor: Color(widget.recipe.color),
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(

                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 320),
                    child: Container(
                      height:screenHeight * 1.0,
                      width: 500,
                      color: Color(widget.recipe.color),
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.only(top: 60,left: 16),
                            child: Text("Ingredients",style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                            ),),
                          ),

                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                               // color: Colors.white,
                              ),
                              height: 50,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      child: Text(widget.recipe.ingredient1,style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      child: Text(widget.recipe.ingredient2,style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(

                                      child: Text(widget.recipe.ingredient3,style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                               // color: Colors.white,
                              ),
                              height: 50,

                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      child: Text(widget.recipe.ingredient4,style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(
                                      child: Text(widget.recipe.ingredient5,style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Container(

                                      child: Text(widget.recipe.ingredient6,style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 16),
                            child: Text("Recipe",style: TextStyle(
                                color: Colors.white,
                                fontSize: 25
                            ),),

                          ),

                          Padding(

                                padding: const EdgeInsets.all(16.0),
                                child: Text(widget.recipe.recipe,style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),),
                            )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70,left: 35),
                    child: Image.asset(widget.recipe.imagePath,height: 350,width: 300,),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
