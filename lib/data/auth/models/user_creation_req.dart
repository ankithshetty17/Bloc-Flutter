class UserCreationReq{
  String? Firstname;
  String? Lastname;
  String? Email;
  String? Password;
  int? Gender;
  String ? Age;
  


  UserCreationReq({
    required this.Firstname,
    required this.Lastname,
    required this.Email,
    required this.Password,
  });
}