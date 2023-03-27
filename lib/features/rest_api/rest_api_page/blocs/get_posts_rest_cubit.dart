import 'package:flutter_problem_solving/features/app/models/alert_model.dart';
import 'package:flutter_problem_solving/features/app/models/paginated_model.dart';
import 'package:flutter_problem_solving/utils/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_posts_rest_cubit.freezed.dart';
part 'get_posts_rest_state.dart';

@injectable
class GetPoststRestCubit extends Cubit<GetPostsRestState> {
  GetPoststRestCubit(this._postsRestRepository) : super(const GetPostsRestState.initial());

  final PostsRestRepository _postsRestRepository;

  Future<void> getPosts(
    int page, {
    int? size,
  }) async {
    emit(const GetPostsRestState.loading());

    final response = await _postsRestRepository.getPosts(
      page,
      size ?? $constants.api.maxItemToBeFetchedAtOneTime,
    );

    response.pick(
      onError: (error) {
        emit(GetPostsRestState.failed(alert: error));
      },
      onData: (posts) {
        emit(GetPostsRestState.success(posts: posts));
      },
    );
  }

  void refreshList() {
    emit(const GetPostsRestState.refresh());
  }
}
