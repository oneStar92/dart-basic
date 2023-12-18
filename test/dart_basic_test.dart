import 'dart:math';
import 'package:dart_basic/231214/post.dart';
import 'package:dart_basic/231218/Result.dart';
import 'package:dart_basic/231218/post_manager.dart';
import 'package:dart_basic/231218/post_repository.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

bool isEven(int number) => number % 2 == 0 ? true : false;
int findMax(List<int> numbers) => numbers.reduce((value, element) => max(value, element));
String reverseString(String source) => source.split('').fold('', (previousValue, element) => element + previousValue);

class MockPostMemoryRepositoryImpl implements PostRepository {
  final posts = <Post>[];

  @override
  Future<Result<Post>> addPost(Post post) {
    return Future(() {
      posts.add(post);
      return Result.success(post);
    });
  }

  @override
  Future<Result<Post>> deletePost(Post post) {
    return Future(() => posts.remove(post) ? Result.success(post) : Result.failure(RepositoryError()));
  }

  @override
  Future<Result<List<Post>>> getPosts() {
    return Future.value(Result.success(posts));
  }

  @override
  Future<Result<Post>> updatePost(Post post) {
    return Future(() {
      final index = posts.indexWhere((element) => element.id == post.id);
      if (index == -1) {
        return Result.failure(RepositoryError());
      } else {
        posts[index] = post;
        return Result.success(post);
      }
    });
  }
}

void main() {
  test('짝수 판별 Test', () {
    expect(true, isEven(4));
    expect(false, isEven(5));
    expect(false, isEven(1));
  });
  
  test('최대값 찾기 Test', () {
    expect(12, findMax([1, 10, 2, 0, -3, 12]));
    expect(9, findMax([2, 5, 1, 9, 3]));
  });

  test('문자열 뒤집기 Test', () {
    expect('String', reverseString('gnirtS'));
    expect('olleH', reverseString('Hello'));
  });

  final repository = MockPostMemoryRepositoryImpl();
  final postManager = PostManager(postRepository: repository);
  final firstPost = Post(userId: 1, id: 1, title: '1번', body: '1번 내용');
  final secondPost = Post(userId: 2, id: 5, title: '1번', body: '3번 내용');

  test('Post Manager Add Test', () async {
    //given, when
    final result = await postManager.addPost(firstPost);
    //then
    expect(ResultStatus.success, result.status);
  });

  test('Post Manager Update Test', () async {
    //given, when
    final firstResult = await postManager.updatePost(firstPost);
    //then
    expect(ResultStatus.success, firstResult.status);
    //given, when
    final secondResult = await postManager.updatePost(secondPost);
    //then
    expect(ResultStatus.failed, secondResult.status);
  });

  test('Post Manager Delete Test', () async {
    //given, when
    final firstResult = await postManager.deletePost(firstPost);
    //then
    expect(ResultStatus.success, firstResult.status);

    //given, when
    final secondResult = await postManager.deletePost(firstPost);
    //then
    expect(ResultStatus.failed, secondResult.status);
  });

  test('Post Manager Delete Test', () async {
    // when
    final firstResult = await postManager.getPosts();
    //then
    expect(ResultStatus.success, firstResult.status);
    expect(0, firstResult.value?.length);

    //given, when
    final secondResult = await postManager.addPost(firstPost)
        .then((_) => postManager.getPosts());
    //then
    expect(ResultStatus.success, secondResult.status);
    expect(1, secondResult.value?.length);
  });
}
