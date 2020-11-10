class Peliculas {

  List<Pelicula> items = new List();

  Peliculas();

  Peliculas.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add( pelicula );
    }

  }

}



class Pelicula {

  String uniqueId;

  int voteCount;
  int id;
  double voteAverage;
  String name;
  double popularity;
  String posterPath;
  String originalLanguage;
  String originalName;
  List<int> genreIds;
  String backdropPath;
  String overview;

  Pelicula({
    this.voteCount,
    this.id,
    this.voteAverage,
    this.name,
    this.popularity,
    this.posterPath,
    this.originalLanguage,
    this.originalName,
    this.genreIds,
    this.backdropPath,
    this.overview,
  });

  Pelicula.fromJsonMap( Map<String, dynamic> json ) {

    voteCount        = json['vote_count'];
    id               = json['id'];
    voteAverage      = json['vote_average'] / 1;
    name            = json['name'];
    popularity       = json['popularity'] / 1;
    posterPath       = json['poster_path'];
    originalLanguage = json['original_language'];
    originalName    = json['original_name'];
    genreIds         = json['genre_ids'].cast<int>();
    backdropPath     = json['backdrop_path'];
    overview         = json['overview'];


  }

  getPosterImg() {

    if ( posterPath == null ) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }

  }

  getBackgroundImg() {

    if ( posterPath == null ) {
      return 'https://cdn11.bigcommerce.com/s-auu4kfi2d9/stencil/59512910-bb6d-0136-46ec-71c445b85d45/e/933395a0-cb1b-0135-a812-525400970412/icons/icon-no-image.svg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }

  }



}


