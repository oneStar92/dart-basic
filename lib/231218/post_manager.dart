import 'Result.dart';
import '../231214/post.dart';
import 'post_repository.dart';

class PostManager {
  final PostRepository _postRepository;

  PostManager({
    required PostRepository postRepository,
  }) : _postRepository = postRepository;

  Future<Result<void>> addPost(Post post) async {
    return await _postRepository.addPost(post);
  }

  Future<Result<void>> deletePost(Post post) async {
    return await _postRepository.deletePost(post);
  }

  Future<Result<void>> updatePost(Post post) async {
    return await _postRepository.updatePost(post);
  }

  Future<Result<List<Post>>> getPosts() async {
    return await _postRepository.getPosts();
  }
}