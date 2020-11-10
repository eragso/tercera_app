class Cast {

  List<Actor> actores = new List();



  Cast.fromJsonList( List<dynamic> jsonList  ){

    if ( jsonList == null ) return;

    jsonList.forEach( (item) {
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }

}




class Actor {
  String characterAct;
  String creditIdAct;
  int idAct;
  String nameAct;
  int genderAct;
  String profilePathAct;
  int orderAct;

  Actor({
    this.characterAct,
    this.creditIdAct,
    this.idAct,
    this.nameAct,
    this.genderAct,
    this.profilePathAct,
    this.orderAct,
  });

  Actor.fromJsonMap( Map<String, dynamic> json ) {
    characterAct = json['character'];
    creditIdAct = json['credit_id'];
    idAct = json['id'];
    nameAct = json['name'];
    genderAct = json['gender'];
    profilePathAct = json['profile_path'];
    orderAct = json['order'];

  }

   getFoto() {

    if ( profilePathAct == null ) {
      return 'http://forum.spaceengine.org/styles/se/theme/images/no_avatar.jpg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePathAct';
    }

  }

}
