part of home_page;

class _SearchBox extends StatelessWidget {
  const _SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: Card(
          elevation: 4,
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here...',
                hintStyle: TextStyle(fontFamily: 'Tahoma', fontSize: 12),
                suffixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
        )),
        const GradientCard(
          iconData: Icons.bar_chart,
          iconSize: 24,
        )
      ],
    );
  }
}
