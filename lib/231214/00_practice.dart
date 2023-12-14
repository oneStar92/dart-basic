import 'package:http/http.dart' as http;
import 'dart:convert';
import 'todo.dart';
import 'post.dart';
import 'comment.dart';

Future<List<Todo>> getTodos() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  final jsonList = jsonDecode(response.body) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

Future<Todo> getTodo(int id) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  return Todo.fromJson(jsonDecode(response.body));
}

Future<List<Post>> getPosts() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  final jsonList = jsonDecode(response.body) as List<dynamic>;
  return jsonList.map((e) => Post.fromJson(e)).toList();
}

Future<List<Comment>> getComments() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
  final jsonList = jsonDecode(response.body) as List<dynamic>;
  return jsonList.map((e) => Comment.fromJson(e)).toList();
}

void main() async {
  // 실습 1
  final Todo todo = await getTodo(1);
  print(todo.title);

  // 실습 2
  List<Todo> todos = await getTodos();
  todos.forEach((e) {
    print('${e.toJson()}');
  });

  // 실습 3
  List<Post> posts = await getPosts();
  posts.forEach((e) {
    print('${e.userId}님이 남기신 ${e.id}번 글');
    print('제목: ${e.title}');
    print('내용');
    print(e.body);
    print('');
  });
}