import 'package:flutter/material.dart';

class SavedRecipesScreen extends StatefulWidget {
  @override
  _SavedRecipesScreenState createState() => _SavedRecipesScreenState();
}

class _SavedRecipesScreenState extends State<SavedRecipesScreen> {
  var _SavedRecipes = <SavedRecipe>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'AppBar Demo',
          style: TextStyle(fontSize: 24.0, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help_outline),
            tooltip: 'Show Help',
            iconSize: 32.0,
            color: Color(0xFFFFAC50),
            onPressed: () {
              //scaffoldKey.currentState.showSnackBar(snackBar);
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: _buildSuggestions(),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 5, 48),
        child:
          RawMaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            fillColor: Color(0xFFFFAC50),
            elevation: 6.0,
            onPressed: () {},
            child: Text(
              'Add new',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            constraints: BoxConstraints.tightFor(width: 180.0, height: 50.0),
          ),
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          if (index >= _SavedRecipes.length) {
            _SavedRecipes.addAll(generateSavedRecipe());
          }

          return _buildRow(_SavedRecipes[index]);
        });
  }

  Widget _buildRow(SavedRecipe savedRecipe) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 1.0,
      child: Container(
        height: 100.0,
        padding: EdgeInsets.fromLTRB(12.0, 10.0, 16.0, 10.0),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/images/sample_recipe.png',
                    height: 150.0,
                    width: 100.0,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Jollof rice and Chicken',
                      style: TextStyle(fontFamily: 'DMSans', fontSize: 18.0),
                      textAlign: TextAlign.start),
                )),
            Expanded(
                flex: 0,
                child: IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      size: 32.0,
                    ),
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }

  List<SavedRecipe> generateSavedRecipe() {
    return <SavedRecipe>[
      SavedRecipe(
          image: 'assets/images/sample_recipe.png',
          title: 'Jollof rice and Chicken'),
      SavedRecipe(
          image: 'assets/images/sample_recipe.png',
          title: 'Jollof rice and Chicken'),
      SavedRecipe(
          image: 'assets/images/sample_recipe.png',
          title: 'Jollof rice and Chicken'),
      SavedRecipe(
          image: 'assets/images/sample_recipe.png',
          title: 'Jollof rice and Chicken'),
      SavedRecipe(
          image: 'assets/images/sample_recipe.png',
          title: 'Jollof rice and Chicken'),
      SavedRecipe(
          image: 'assets/images/sample_recipe.png',
          title: 'Jollof rice and Chicken'),
      SavedRecipe(
          image: 'assets/images/sample_recipe.png',
          title: 'Jollof rice and Chicken'),
      SavedRecipe(
          image: 'assets/images/sample_recipe.png',
          title: 'Jollof rice and Chicken'),
    ];
  }
}

class SavedRecipe {
  final String image;
  final String title;

  SavedRecipe({this.image, this.title});
}
