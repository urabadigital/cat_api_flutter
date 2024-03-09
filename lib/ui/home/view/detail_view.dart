import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma/injectable_dependency.dart';
import 'package:pragma/ui/home/bloc/detail/detail_bloc.dart';

import '../../../core/home/domain/usecases/home_usecases.dart';

class CatDetailView extends StatelessWidget {
  const CatDetailView({super.key});

  static const String path = 'cat/:id';
  static const String name = 'cat';

  static Widget create({String? referenceImageId}) => BlocProvider(
        lazy: false,
        create: (context) => DetailBloc(
          homeUseCase: getIt<HomeUseCase>(),
        )..add(DetailEvent.detail(referenceImageId ?? '')),
        child: const CatDetailView(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (_, state) {
        if (state.cat?.id != '' && state.cat != null) {
          return Scaffold(
            appBar: AppBar(
              forceMaterialTransparency: true,
              centerTitle: true,
              title: Text(state.cat?.breeds?.first.name ?? ''),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Hero(
                    tag: 'cat',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        filterQuality: FilterQuality.medium,
                        fit: BoxFit.cover,
                        height: 300,
                        width: double.infinity,
                        imageUrl: state.cat?.url ?? '',
                        placeholder: (context, url) => Container(
                          height: 150,
                          color: Colors.grey.withOpacity(0.5),
                          child: const Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        ),
                        errorWidget: (context, url, error) => Container(
                          height: 150,
                          color: Colors.grey.withOpacity(0.5),
                          child: const Center(
                            child: Icon(
                              Icons.error,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Wrap(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 30,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.cat?.breeds?.first.description ??
                                          '',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      'Country of origin: ${state.cat?.breeds?.first.origin ?? ''}',
                                      maxLines: 6,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Intelligence: ${state.cat?.breeds?.first.intelligence ?? 0}',
                                      maxLines: 6,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Adaptability: ${state.cat?.breeds?.first.adaptability ?? ''}',
                                      maxLines: 6,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Time of life: ${state.cat?.breeds?.first.lifeSpan ?? ''}',
                                      maxLines: 6,
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
