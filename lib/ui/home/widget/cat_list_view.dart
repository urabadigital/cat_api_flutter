import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma/ui/home/bloc/home_bloc.dart';
import 'package:pragma/ui/home/view/detail_view.dart';
import 'package:pragma/ui/home/widget/shimmer.dart';
import 'package:pragma/ui/navigation/cubit/navigation.dart';

import '../../../core/home/domain/entities/entities.dart';

class CatListView extends StatelessWidget {
  const CatListView({super.key});

  @override
  Widget build(BuildContext context) {
    final cats = context.watch<HomeBloc>().state.cat;
    final isLoading = context.watch<HomeBloc>().state.isLoading;
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () => context.read<HomeBloc>().refreshCats(),
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.separated(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 20,
                  top: 5,
                ),
                physics: const BouncingScrollPhysics(),
                itemCount: cats.length,
                itemBuilder: (context, index) {
                  final CatEntity cat = cats[index];
                  return InkWell(
                    onTap: () {
                      context.read<HomeNavigation>().navigateCatDetails(
                            CatDetailView.path,
                            cat: cat,
                          );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.secondary),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                cat.name ?? '',
                                textAlign: TextAlign.left,
                                softWrap: true,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              Text(
                                'Más...',
                                textAlign: TextAlign.right,
                                softWrap: true,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 20,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: cat.url == null ||
                                      (cat.url?.isEmpty ?? false)
                                  ? const ContainerShimmer(
                                      height: 250,
                                    )
                                  : SizedBox(
                                      height: 250,
                                      width: double.infinity,
                                      child: Image.network(
                                        '${cat.url}',
                                        filterQuality: FilterQuality.high,
                                        fit: BoxFit.cover,
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          if (loadingProgress == null) {
                                            return child;
                                          }
                                          return Center(
                                            child: CircularProgressIndicator(
                                              value: loadingProgress
                                                          .expectedTotalBytes !=
                                                      null
                                                  ? loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!
                                                  : null,
                                            ),
                                          );
                                        },
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Center(
                                          child: Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Origin: ${cat.origin}',
                                textAlign: TextAlign.left,
                                softWrap: true,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                              Text(
                                'Intelligence: ${cat.intelligence}',
                                textAlign: TextAlign.right,
                                softWrap: true,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 20),
              ),
      ),
    );
  }
}
