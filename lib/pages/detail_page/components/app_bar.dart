part of detail_page;

class _DetailAppBar extends StatelessWidget implements PreferredSize {
  const _DetailAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Details',
        style: Theme.of(context).textTheme.headline6,
      ),
      leading: RoundedRectangleCardIcon(
          onPressed: () {
            Navigator.pop(context);
          },
          iconData: Icons.arrow_back),
      actions: [
        RoundedRectangleCardIcon(
          onPressed: () {},
          iconData: Icons.more_horiz,
        )
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
