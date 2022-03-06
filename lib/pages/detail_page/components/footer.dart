part of detail_page;

class _Footer extends StatelessWidget {
  const _Footer({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                product.price!,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontSize: 32),
              ),
              const Text('/Person'),
            ],
          ),
          const VerticalDivider(),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              children: const [Text('Continue '), Icon(Icons.arrow_forward)],
            ),
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16)),
          )
        ],
      ),
    );
  }
}
