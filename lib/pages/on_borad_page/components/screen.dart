part of on_board_page;

class _PageViewScreen extends StatelessWidget {
  const _PageViewScreen({
    Key? key,
    required this.boardModel,
  }) : super(key: key);
  final BoardModel boardModel;
  @override
  Widget build(BuildContext context) {
    final _svg = SvgPicture.asset(
      boardModel.svgPath,
      semanticsLabel: 'Acme Logo',
      width: context.width * 0.8,
    );
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _svg,
            const Divider(color: Colors.transparent, height: 40),
            Text(
              Texts.onBoard1Title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6,
            ),
            const Divider(color: Colors.transparent),
            Text(
              Texts.onBoard1Text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
