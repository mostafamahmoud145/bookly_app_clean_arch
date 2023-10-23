import 'package:flutter/cupertino.dart';
import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      sliver: SliverList.separated(
        separatorBuilder: ((context, index) => const SizedBox(
              height: 20,
            )),
        itemBuilder: (context, index) => const BookListViewItem(),
        itemCount: 10,
      ),
    );
  }
}
