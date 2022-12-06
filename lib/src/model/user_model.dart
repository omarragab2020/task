import 'dart:convert';

///****************************************
///region Model UserModelFields
class UserModelFields {
  static const String id = 'id';
  static const String image = 'image';
  static const String title = 'title';
  static const String description = 'description';

  static const List<String> list=[id,image,title,description];
}
///endregion Model UserModelFields


///****************************************
///region Model UserModel
class UserModel{
  ///region Fields
  int? id;
  String? image;
  String? title;
  String? description;
  ///endregion Fields

  ///region FieldsList
  List<String> fieldsList = UserModelFields.list;
  List<dynamic> get toArgs => [id,image,title,description];
  ///endregion FieldsList

  ///region newInstance
  UserModel get newInstance => UserModel();
  ///endregion newInstance

  ///region default constructor
  UserModel({this.id,this.image,this.title,this.description});
  ///endregion default constructor

  ///region withFields constructor
  UserModel.withFields(this.id,this.image,this.title,this.description);
  ///endregion withFields constructor

  ///region fromMap
  UserModel.fromMap(Map<String, dynamic> map) {updateFromMap(map);}
  ///endregion fromMap

  ///region fromMapList
  static List<UserModel> fromMapList(List<Map<String, dynamic>> list) {
    return list.map((e) => UserModel.fromMap(e)).toList();
  }
  ///endregion fromMapList

  ///region fromJson
  UserModel.fromJson(String jsonInput):this.fromMap(json.decode(jsonInput));
  ///endregion fromJson

  ///region toMap
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map={};
    if(id != null){map[UserModelFields.id] = id;}
    if(image != null){map[UserModelFields.image] = image;}
    if(title != null){map[UserModelFields.title] = title;}
    if(description != null){map[UserModelFields.description] = description;}
    return map;
  }
  ///endregion toMap

  ///region toJson
  String toJson() => json.encode(toMap());
  ///endregion toJson

  ///region toString
  @override
  String toString() => toMap().toString();
  ///endregion toString

  ///region copyWith
  UserModel copyWith({int? id,String? image,String? title,String? description}){
    return UserModel()
      ..id=id??this.id
      ..image=image??this.image
      ..title=title??this.title
      ..description=description??this.description;
  }
  ///endregion copyWith

  ///region updateWith
  void updateWith({int? id,String? image,String? title,String? description}){
    if(id!=null){this.id=id;}
    if(image!=null){this.image=image;}
    if(title!=null){this.title=title;}
    if(description!=null){this.description=description;}
  }
  ///endregion updateWith

  ///region updateFrom
  void updateFrom({required UserModel another}){
    if(another.id!=null){id=another.id;}
    if(another.image!=null){image=another.image;}
    if(another.title!=null){title=another.title;}
    if(another.description!=null){description=another.description;}
  }
  ///endregion updateFrom

  ///region updateFromMap
  void updateFromMap(Map<String,dynamic> map){
    if(map[UserModelFields.id] != null){id = int.tryParse(map[UserModelFields.id].toString()) ;}
    if(map[UserModelFields.image] != null){image = map[UserModelFields.image] .toString();}
    if(map[UserModelFields.title] != null){title = map[UserModelFields.title] .toString();}
    if(map[UserModelFields.description] != null){description = map[UserModelFields.description] .toString();}}
  ///endregion updateFromMap

  ///region Equality
  @override
  bool operator ==(Object other) {
    if(identical(this, other)) return true;
    return other is UserModel &&
        id==other.id&&
        image==other.image&&
        title==other.title&&
        description==other.description;
  }

  bool isTheSameObjectID(UserModel other) => id != null && other.id != null && id == other.id;
  @override
  int get hashCode => id.hashCode ^
  image.hashCode ^
  title.hashCode ^
  description.hashCode;
///endregion Equality

}
///endregion Model UserModel
    