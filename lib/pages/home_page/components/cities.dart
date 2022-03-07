// ignore_for_file: non_constant_identifier_names

part of home_page;

class _Cities extends StatelessWidget {
  const _Cities({Key? key}) : super(key: key);
  final _divider = const VerticalDivider(
    color: Colors.transparent,
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.15,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: circleCitiesList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              _divider,
              _Column(
                  URL: circleCitiesList[index].url,
                  title: circleCitiesList[index].title),
            ],
          );
        },
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
          maxRadius: 25,
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
