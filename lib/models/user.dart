class AppUser{
  String? id;
  String userName;
  String? password;
  String email;
  AppUser({
    this.id,
    required this.userName,
    this.password,
    required this.email
  });
  Map<String,dynamic> toMap(){
    return{
      'userName':userName,
      'email':email,
    };
  }
  factory AppUser.fromMap(Map<String,dynamic> map){
    return AppUser(
      userName: map['userName']??'',
      email: map['email']??'',
    );
  }

}