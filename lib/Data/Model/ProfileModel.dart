class ProfileModel {
  final String id;
  final String name;
  final String photo;
  final String email;
  final String password;

  ProfileModel(
      {required this.id,
      required this.name,
      required this.photo,
      required this.email,
      required this.password});
  factory ProfileModel.fromJson(Map<String, dynamic> jsonData) {
    return ProfileModel(
        id: jsonData['id'],
        name: jsonData['name'],
        photo: jsonData['photo'],
        email: jsonData['email'],
        password: jsonData['password']);
  }
  toJson(){
  return{
  'id':id,
  'name':name,
  'photo':photo,
  'email':email,
  'password':password,
  };
}

}
