import '../231214/post.dart';
import 'Result.dart';

class RepositoryError implements Exception {
  String message = '잘못된 타입 캐스팅 입니다.';
}

abstract interface class PostRepository {
  Future<Result<List<Post>>> getPosts();
  Future<Result<Post>> addPost(Post post);
  Future<Result<Post>> deletePost(Post post);
  Future<Result<Post>> updatePost(Post post);
}