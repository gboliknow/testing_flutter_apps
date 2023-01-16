import 'package:flutter_test/flutter_test.dart';

import 'package:testing_flutter_apps/news_change_notifier.dart';
import 'package:testing_flutter_apps/news_service.dart';
import 'package:mocktail/mocktail.dart';

class MockNewsService extends Mock implements NewsService {}

void main() {
  late NewsChangeNotifier sut;
  late MockNewsService mockNewsService;

  setUp(() {
    mockNewsService = MockNewsService();
    sut = NewsChangeNotifier(mockNewsService);
  });
  test("intial values are correct", () {
    expect(sut.articles, []);
    expect(sut.isLoading, false);
  });
  group('getArticles', () {
    test('gets articles using the NewsService', () async {
      await sut.getArticles();
      verify(() {
        mockNewsService.getArticles();  
      }).called(1);
    });
  });
}
