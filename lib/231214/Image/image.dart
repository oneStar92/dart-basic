import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) {
  return http.get(Uri.parse(url))
      .then((value) => value.bodyBytes)
      .catchError((err) {
        print('Invalid Url');
        return http.get(Uri.parse('https://alimipro.com/favicon.ico'))
            .then((value) => value.bodyBytes);
      });
}

Future<void> saveFile(Uint8List bytes, String fileName) => File(fileName).writeAsBytes(bytes);

void main() async {
  final stopWatch = Stopwatch();

  // 연습문제 3
  await downloadImage('https://alimipro.com/favicon.ico')
      .then((value) => saveFile(value, 'icon.ico'));

  // 연습문제 4
  stopWatch.start();
  print('다운로드 시작');
  final data = await downloadImage('152435');
  stopWatch.stop();
  print('다운로드 끝');
  print('==========');
  print('소요시간 : ${stopWatch.elapsed}');
  print('용량 : ${data.lengthInBytes}bytes');
  print('');

  // 연습문제 5
  stopWatch.reset();
  stopWatch.start();
  print('다운로드 시작');
  final dataList = <Uint8List>[
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
    await downloadImage('https://alimipro.com/favicon.ico'),
  ];
  stopWatch.stop();
  print('다운로드 끝');
  print('==========');
  print('소요시간 : ${stopWatch.elapsed}');
  print('용량 : ${dataList.fold(0, (previousValue, element) => previousValue + element.lengthInBytes)}bytes');
  print('');

  stopWatch.reset();
  stopWatch.start();
  print('다운로드 시작');
  final futures = <Future<Uint8List>>[
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
    downloadImage('https://alimipro.com/favicon.ico'),
  ];
  final result = await Future.wait(futures);
  stopWatch.stop();
  print('다운로드 끝');
  print('==========');
  print('소요시간 : ${stopWatch.elapsed}');
  print('용량 : ${result.fold(0, (previousValue, element) => previousValue + element.lengthInBytes)}bytes');
}