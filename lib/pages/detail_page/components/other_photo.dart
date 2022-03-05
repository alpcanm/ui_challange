part of detail_page;

class _OtherPhotos extends StatelessWidget {
  const _OtherPhotos({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * 0.1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: product.otherPhotos?.length ?? 0,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(product.otherPhotos![index]),
              maxRadius: 25,
              child: product.otherPhotos!.length == index + 1
                  ? const _LastIndexPhoto()
                  : null,
            ),
          );
        },
      ),
    );
  }
}

class _LastIndexPhoto extends StatelessWidget {
  const _LastIndexPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        color: Colors.black54,
        height: double.infinity, width: double.infinity,
        child: const Center(
          child: Text('10+'),
        ),
        // color: Colors.black38,
      ),
    );
  }
}
