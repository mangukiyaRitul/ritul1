
class API4User
{
  final int id;
  final int user;
  final  String title;
  final bool completed;

  API4User({required this.id, required this.user, required this.title, required this.completed});

  factory API4User.fromJson(Map<String,dynamic> json){
    return API4User(
       id: json["id"],
      user: json["userId"],
      title: json["title"],
      completed: json["completed"],
    );
  }

}
