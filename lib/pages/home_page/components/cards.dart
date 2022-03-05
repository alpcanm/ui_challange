part of home_page;

class _CardList extends StatelessWidget {
  const _CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.38,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return _CustomCard(
            product: productList[index],
          );
        },
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width * 0.8,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(product: product)),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      product.photoURL ?? '',
                    ),
                  ),
                ),
                const Divider(
                  height: 9,
                  color: Colors.transparent,
                ),
                Text(
                  'Misty Rock Resort',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 18),
                ),
                SizedBox(
                  width: context.width * 0.8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Wayand',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      const GradientCard(
                        iconData: Icons.arrow_forward_ios_rounded,
                        iconSize: 12,
                      )
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
