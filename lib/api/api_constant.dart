abstract class ApiConstant{
  static const String defaultErrorMessage = "error";
  static const String baseUrl = "api.themoviedb.org";
  static const String popularApi = "/3/movie/popular";
  static const Map<String, String> header = {
    "Authorization" : "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwNzE5NDM3M2JiMTIzNzUyMmE1MWM3MzY4OTI1ZDZmNiIsInN1YiI6IjY2MDllYWI4MWY5OGQxMDE0OWIyZDJiZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.1rSAQ3rNKKvthOXNEBZ2f1RRgJk36OTE9KbQ6lQFeiU",
    "accept" : "application/json"
  };

}