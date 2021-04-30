class recipecls {
  String catid1;
  String catname1;
  String recipeid1;
  String recipename1;
  List recipeimage1;
  String recipeingred1;
  List recipesteps1;
  String reciperating1;
  String recipecalorie1;
  String recipeservings1;
  String recipetime1;
  List recipeauthor1;

  recipecls({this.catid1, this.catname1,this.recipeauthor1, this.recipecalorie1,this.recipeid1,this.recipeimage1,
    this.recipeingred1,this.recipename1, this.reciperating1,this.recipeservings1,this.recipesteps1,this.recipetime1});

  recipecls.fromJson(Map<String, dynamic> json) {
    catid1 = json['catId'];
    catname1 = json['catName'];
    recipeauthor1  =json['recipeAuthor'];
    recipecalorie1  =json['recipeCalorie'];
    recipeid1  =json['recipeId'];
    recipeimage1  =json['recipeImage'];
    recipeingred1  =json['recipeIngred'];
    recipename1  =json['recipeName'];
    reciperating1  =json['recipeRating'];
    recipeservings1  =json['recipeServings'];
    recipesteps1  =json['recipeSteps'];
    recipetime1  =json['recipeTime'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> recipe2 = new Map<String,dynamic>();
    recipe2['catID']= this.catid1;
    recipe2['catName']= this.catname1;
    recipe2['recipeAuthor']= this.recipeauthor1;
    recipe2['recipeCalorie']= this.recipecalorie1;
    recipe2['recipeId']= this.recipeid1;
    recipe2['recipeImage']= this.recipeimage1;
    recipe2['recipeName']= this.recipename1;
    recipe2['recipeIngred']= this.reciperating1;
    recipe2['recipeRating']= this.recipeingred1;
    recipe2['recipeServings']= this.recipeservings1;
    recipe2['recipeSteps']= this.recipesteps1;
    recipe2['recipeTime']= this.recipetime1;
  }

}