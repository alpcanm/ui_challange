part of detail_page;

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [
            SizedBox(
                height: 25,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Detail"))),
            const VerticalDivider(),
            SizedBox(
              height: 25,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Review",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  primary: Colors.white,
                ),
              ),
            )
          ]),
          const Divider(
            color: Colors.transparent,
          ),
          Text(
            product.comment!,
            style:
                GoogleFonts.roboto().copyWith(color: const Color(0xff8B8B8B)),
          ),
          // Text(
          //   'Read more...',
          //   style: Theme.of(context)
          //       .textTheme
          //       .headline6!
          //       .copyWith(color: Theme.of(context).primaryColor),
          // )
        ],
      ),
    );
  }
}
