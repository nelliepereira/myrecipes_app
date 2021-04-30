class Imageban {
  String images;

  Imageban({this.images});

  Imageban.fromJson(Map<String, dynamic> json) {
    images  =json['Images'];

  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> dataimg = new Map<String,dynamic>();
    dataimg['Images']= this.images;

  }

}
