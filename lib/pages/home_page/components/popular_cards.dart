part of home_page;

class _PopularCards extends StatelessWidget {
  const _PopularCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
          _PopularCard(url: Texts.cardUrl1),
          _PopularCard(url: Texts.cardUrl2),
        ],
      ),
    );
  }
}

class _PopularCard extends StatelessWidget {
  const _PopularCard({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.85,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      url,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Misty Rock Resort',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontSize: 14),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Theme.of(context).primaryColor,
                          ),
                          Text(
                            'Wayand',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
