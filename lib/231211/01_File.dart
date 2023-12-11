import 'dart:io';

void copy(String source, String target) {
  File(source).writeAsStringSync(File(target).readAsStringSync());
}

void main() {
  copy('sourceFile', 'targetFile');
}