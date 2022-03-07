part of home_page;

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: FlutterLogo(),
              ),
            ),
            Row(
              children: [
                Text('Hello,', style: GoogleFonts.roboto()),
                Text(
                  user.name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ],
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          elevation: 4,
          child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.notifications_none),
              )),
        )
      ],
    );
  }
}
