import '../components/texts.dart';

class BoardModel {
  String svgPath;
  String comment;
  BoardModel({
    required this.svgPath,
    required this.comment,
  });
}

List<BoardModel> boardList = [
  BoardModel(
    svgPath: 'assets/svg/on_board1.svg',
    comment: Texts.onBoard1Text,
  ),
  BoardModel(
    svgPath: 'assets/svg/on_board2.svg',
    comment: Texts.onBoard1Text,
  ),
  BoardModel(
    svgPath: 'assets/svg/on_board3.svg',
    comment: Texts.onBoard1Text,
  ),
];
