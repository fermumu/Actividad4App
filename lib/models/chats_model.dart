class ChatsModel {
  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatsModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.imageUrl});
}

List<ChatsModel> messageData = [
  new ChatsModel(
      name: "Hector Muñoz",
      message: "Hola",
      time: "14:45",
      imageUrl:
          "https://static.wikia.nocookie.net/doblaje/images/8/8f/H%C3%A9ctor-mitolog%C3%ADa_griega-1a1.jpg/revision/latest/top-crop/width/360/height/450?cb=20150701022531&path-prefix=es"),
  new ChatsModel(
      name: "Andres Escobar",
      message: "Desarrollador",
      time: "14:45",
      imageUrl:
          "http://www.radiolakalle.pe/wp-content/uploads/2019/05/hectorlavoe2.jpg"),
  new ChatsModel(
      name: "Camilo Buitrago",
      message: "Me gusta jugar ",
      time: "14:45",
      imageUrl:
          "https://2.bp.blogspot.com/-G_0kEiurlbo/WldZqAmlw9I/AAAAAAAAAEQ/kjwPgXF86D47JbW23BxAxzeLxkDZmF-AACEwYBhgL/s1600/Hector_Troya_500%2B%25281%2529.jpg"),
  new ChatsModel(
      name: "Jose Canseco",
      message: "No hago nada",
      time: "14:45",
      imageUrl:
          "https://img.mlbstatic.com/mlb-photos/image/upload/d_people:generic:headshot:67:current.png/w_213,q_auto:best/v1/people/593576/headshot/67/current"),
  new ChatsModel(
      name: "Migel Fuentes",
      message: "PLayback",
      time: "14:45",
      imageUrl:
          "https://i.scdn.co/image/fb6f6b52082b66ee883bccf31fec0640e901ef25"),
  new ChatsModel(
      name: "Fernando Muñoz",
      message: "Hola",
      time: "14:45",
      imageUrl:
          "https://media-exp1.licdn.com/dms/image/C4E03AQGOqwhAKW6C2w/profile-displayphoto-shrink_200_200/0/1580352671756?e=2147483647&v=beta&t=TGRMWjFFkGbIspWtIQP37yEfQPObibVcsJXrGP6vfKw")

  new ChatsModel(
      name: "Fernando Muñoz",
      message: "Hola",
      time: "14:45",
      imageUrl:
          "https://media-exp1.licdn.com/dms/image/C4E03AQGOqwhAKW6C2w/profile-displayphoto-shrink_200_200/0/1580352671756?e=2147483647&v=beta&t=TGRMWjFFkGbIspWtIQP37yEfQPObibVcsJXrGP6vfKw")
];
