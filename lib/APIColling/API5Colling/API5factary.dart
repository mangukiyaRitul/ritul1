
class APIColling5model
{
  final int postid;
  final int id;
  final String name;
  final String email;
  final String body;

  APIColling5model({required this.postid, required this.id, required this.name, required this.email, required this.body,});

  factory APIColling5model.fromJson(Map<String,dynamic> json) =>
      APIColling5model(
          postid: json["postId"],
          id: json["id"],
          name: json["name"],
          email: json["email"],
          body: json["body"],
      );

}