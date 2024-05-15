import 'package:dblp/common/provider.dart';
import 'package:flutter/material.dart';

import 'publication_list_model.dart';

class PublicationListWidget extends StatelessWidget {
  const PublicationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<PublicationListViewModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("D B L P"),
          centerTitle: true,
        ),
        body: Stack(children: [
          const _MovieListWidget(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              onChanged: model?.searchPublication,
              decoration: InputDecoration(
                labelText: 'Search',
                filled: true,
                fillColor: Colors.white.withAlpha(235),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
              ),
            ),
          ),
        ]));
  }
}

class _MovieListWidget extends StatelessWidget {
  const _MovieListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<PublicationListViewModel>(context);
    return ListView.builder(
      controller: ScrollController(),
      padding: const EdgeInsets.only(top: 70),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemCount: model?.publications.length,
      itemExtent: 163,
      itemBuilder: (BuildContext context, int index) {
        model?.showedPublicationAtIndex(index);
        return _MovieListRowWidget(index: index);
      },
    );
  }
}

class _MovieListRowWidget extends StatelessWidget {
  final int index;
  const _MovieListRowWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.read<PublicationListViewModel>(context);
    final publication = model?.publications[index];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  blurRadius: 8,
                  blurStyle: BlurStyle.outer,
                )
              ],
              border: Border.all(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            publication?.info?.title ?? "Null",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 3),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
