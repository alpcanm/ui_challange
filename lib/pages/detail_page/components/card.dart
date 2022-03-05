part of detail_page;

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  final Color _color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            width: context.width * 0.9,
            height: context.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(product.photoURL!),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title!,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: _color),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: _color,
                          ),
                          Text(
                            product.cityName!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: _color),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                            color: _color,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_rounded),
                            color: _color,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
