// ignore_for_file: non_constant_identifier_names

part of home_page;

class _Cities extends StatelessWidget {
  const _Cities({Key? key}) : super(key: key);
  final _divider = const VerticalDivider(
    color: Colors.transparent,
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          const _Column(title: 'India', URL: Texts.urlIndia),
          _divider,
          const _Column(title: 'Newyork', URL: Texts.urlNewyork),
          _divider,
          const _Column(title: 'Australia', URL: Texts.urlAustralia),
          _divider,
          const _Column(title: 'Poland', URL: Texts.urlPoland),
          _divider,
        ],
      ),
    );
  }
}

class _Column extends StatelessWidget {
  const _Column({
    Key? key,
    required this.URL,
    required this.title,
  }) : super(key: key);
  final String URL;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(URL),
          maxRadius: 30,
        ),
        const Divider(),
        Text(
          title,
          style: const TextStyle(fontFamily: 'TechnaSans', fontSize: 12),
        )
      ],
    );
  }
}
