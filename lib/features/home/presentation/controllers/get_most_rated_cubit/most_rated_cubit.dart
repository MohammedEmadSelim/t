import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:listview/features/home/presentation/entities/top_rated_movies_model.dart';
import 'package:meta/meta.dart';

part 'most_rated_state.dart';

class MostRatedCubit extends Cubit<MostRatedState> {
  MostRatedCubit() : super(MostRatedInitial());

  Future<MostRatedMovieModel> getTopRated() async {
    var dio = Dio();
    dio.options.headers = {
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMzE3ODcxZGNkMTVjZDhlNTVmOGExNDIwNjBjZTc0MCIsIm5iZiI6MTc1MDMwOTQyMy4xMzQsInN1YiI6IjY4NTM5YTJmYTljOTQ2Mjc4ZTk1NTkyMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.1DmYJmrWlxNfgr9JAo4edy2GuyH0PEhSB4Qg9ennojc",
      "accept": "application/json"
    };
    var res = await dio.get(
        'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=vote_average.desc&without_genres=99,10755&vote_count.gte=200');





    var deSeriaData = MostRatedMovieModel.fromJson(res.data);
    // print(deSeriaData.page);
    return deSeriaData;
  }
}
