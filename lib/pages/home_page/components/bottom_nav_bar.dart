part of home_page;

class _BottomNavBar extends StatefulWidget {
  const _BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<_BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<_BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          elevation: 5,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '.'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_rounded), label: '.'),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: '.'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '.'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: const Color(0xffF9DDCF),
          onTap: onTap,
        ),
      ),
    );
  }

  void onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}