import 'package:hive/hive.dart';
part 'comic_history.g.dart';

@HiveType(typeId: 1)
class ComicHistory {
  ComicHistory({
    required this.comicId,
    required this.chapterId,
    required this.comicName,
    required this.comicCover,
    required this.chapterName,
    required this.updateTime,
    required this.page,
  });

  factory ComicHistory.empty({
    required int comicId,
    required String comicName,
    required String comicCover,
  }) =>
      ComicHistory(
        comicId: comicId,
        chapterId: 0,
        comicName: comicName,
        comicCover: comicCover,
        chapterName: "",
        updateTime: DateTime.now(),
        page: 0,
      );

  @HiveField(0)
  int comicId;

  @HiveField(1)
  int chapterId;

  @HiveField(2)
  String comicName;

  @HiveField(3)
  String comicCover;

  @HiveField(4)
  String chapterName;

  @HiveField(5)
  int page;

  @HiveField(6)
  DateTime updateTime;
}
