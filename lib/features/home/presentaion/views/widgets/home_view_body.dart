import 'package:bookly/features/home/presentaion/views/widgets/book_list_view.dart';

import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [BookListView()]);
  }
}
