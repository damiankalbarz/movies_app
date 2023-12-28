class Movie {
  final String name;
  final String imagePath;
  final String category;
  final int year;

  const Movie({
    required this.name,
    required this.imagePath,
    required this.category,
    required this.year,
  });

  static const movies = [
    Movie(
      name: 'The Sea Beast',
      imagePath:
      'https://images.unsplash.com/photo-1500462918059-b1a0cb512f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      category: 'Kids',
      year: 2022,
    ),
    Movie(
      name: 'Purple Hearts',
      imagePath:
      'https://images.unsplash.com/photo-1518134346374-184f9d21cea2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
      category: 'Romance',
      year: 2022,
    ),
    Movie(
      name: 'The Gray Man',
      imagePath: 'https://images.unsplash.com/photo-1559583109-3e7968136c99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      category: 'Thriller',
      year: 2022,
    ),
    Movie(
      name: 'Thirteen Lives',
      imagePath:
      'https://images.unsplash.com/photo-1559108318-39ed452bb6c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
      category: 'Drama',
      year: 2022,
    ),
    Movie(
      name: 'The Innocents',
      imagePath:
      'https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
      category: 'Thriller',
      year: 2022,
    ),
    Movie(
      name: 'Lightyear',
      imagePath:
      'https://images.unsplash.com/photo-1611419010196-a360856fc42f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
      category: 'Kids',
      year: 2022,
    ),
    Movie(
      name: 'Leave No Trace',
      imagePath:
      'https://images.unsplash.com/photo-1597910037310-7dd8ddb93e24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      category: 'Drama',
      year: 2022,
    ),
    Movie(
      name: 'Hustle',
      imagePath:
      'https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80',
      category: 'Drama',
      year: 2022,
    ),
  ];
}