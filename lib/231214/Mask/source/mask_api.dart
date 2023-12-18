import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/mask_dto.dart';

Future<MaskDto> getMask() async {
  final response = await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
  return MaskDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
}