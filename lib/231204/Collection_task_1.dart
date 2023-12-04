class Student {
  final String name;

  Student({
    required this.name,
  });
}

class City {
  final String name;

  City({
    required this.name,
  });
}

void main() {
  //우리나라 도시 이르 모음 Set 사용(중복 허용 X)
  final citiesOfKorea = <String>{'Seoul', 'Incheon', 'Daejeon', 'Busan',};
  final testScoresByStudent = <Student, int>{ //학생별 시험 점수 Map 사용
    Student(name: 'Kim'): 98,
    Student(name: 'Park'): 5,
    Student(name: 'Lee'): 83,
  };
  final populationByCity = <City, int>{ //도시별 인구수 Map 사용
    City(name: 'Seoul'): 9400249,
    City(name: 'Incheon'): 2990276,
    City(name: 'Daejeon'): 1443965,
  };
}