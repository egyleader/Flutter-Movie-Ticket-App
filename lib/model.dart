class Movie {
  String title;

  String age;

  String categorires;

  String imageURL;

  String logo;

  double rating;

  String technology;

  DateTime date;

  Movie(
      {required this.title,
      required this.imageURL,
      required this.logo,
      required this.age,
      required this.rating,
      required this.date,
      required this.categorires,
      required this.technology});
}

final List<Movie> movies = [
  Movie(
      title: 'The Irishman',
      imageURL:
          'https://lh6.googleusercontent.com/proxy/Q7IxHgbc0KPJJXyz3iG4YtLoZ2tujvlF4_NOHJWj54bnD133PH4LJQb_vyrUSQ45rL8XHe-doyHDp9SY9vA3pn43e-iQA236PQ',
      logo: 'assets/images/logos/irishman.png',
      age: 'R',
      rating: 8,
      date: DateTime(2019),
      categorires: 'Crime, Drama, Thriller',
      technology: 'DataSat, Dolby Digital '),
  Movie(
      title: 'JOKER',
      imageURL:
          'https://mir-s3-cdn-cf.behance.net/project_modules/1400/c58b4681277211.5cfa6e54a6d3d.jpg',
      logo: 'assets/images/logos/joker.png',
      age: '18+',
      rating: 8.7,
      date: DateTime(2019),
      categorires: 'Crime, Drama, Thriller',
      technology: 'DataSat, Dolby Digital '),
  Movie(
      title: 'Avengers: Endgame',
      imageURL:
          'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg',
      logo: 'assets/images/logos/avengers.png',
      age: 'PG-13',
      rating: 8.5,
      date: DateTime(2019),
      categorires: ' Action, Adventure, Drama',
      technology: 'DataSat, Dolby Digital '),
  Movie(
      title: 'Once upon a time in Hollywood',
      imageURL:
          'https://posterposse.com/wp-content/uploads/2019/07/Once-upon-a-time-in-hollywood-Poster-Posse-Hughes.png',
      logo: 'assets/images/logos/hollywood.png',
      age: 'R',
      rating: 7.7,
      date: DateTime(2019),
      categorires: 'Drama, Comedy-drama',
      technology: 'DataSat, Dolby Digital '),
];
