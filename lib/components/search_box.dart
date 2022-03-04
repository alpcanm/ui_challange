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
        Card(
          color: Theme.of(context).primaryColor,
          shadowColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 8,
          child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.skateboarding,
                  color: Colors.white,
                ),
              )),
        )
      ],
    );
  }
}
