import 'package:cooper_tec_test/app/modules/home/widget/box_search_widget.dart';
import 'package:cooper_tec_test/app/modules/home/widget/empty_widget.dart';
import 'package:cooper_tec_test/app/modules/home/widget/volume_card.dart';
import 'package:cooper_tec_test/app/shared/helpers/status_enum.dart';
import 'package:cooper_tec_test/app/shared/widget/loading_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import '../../shared/helpers/snack_bar_helper.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get<HomeStore>();

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return store.status == StatusEnum.loading
          ? const LoadingWidget()
          : Scaffold(
              appBar: AppBar(
                title: const Text('Books'),
              ),
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BoxSearchWidget(
                      textController: searchController,
                      onPressed: () {
                        if (searchController.text.isNotEmpty) {
                          try {
                            store.getVolumes(searchText: searchController.text);
                            searchController.text = "";
                          } on DioError catch (error) {
                            SnackbarHelper.showFailure(
                              context,
                              message: error.response!.data,
                            );
                          }
                        } else {
                          SnackbarHelper.showFailure(
                            context,
                            message: "Campo de pesquisa obrigátorio",
                          );
                        }
                      },
                    ),
                  ),
                  store.status == StatusEnum.empty
                      ? const EmptyWidget()
                      : Expanded(
                          child: ListView.builder(
                            itemCount: store.volumes!.items!.length,
                            itemBuilder: (context, index) {
                              final volume = store.volumes!.items![index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: VolumeCardWidget(
                                  onTap: () {
                                    Modular.to.pushNamed(
                                      '/details',
                                      arguments: {
                                        "detailsVolume": volume.volumeInfo
                                      },
                                    );
                                  },
                                  imageUrl: volume.volumeInfo!.imageLinks !=
                                          null
                                      ? volume.volumeInfo!.imageLinks!
                                          .smallThumbnail
                                      : "https://www.shutterstock.com/image-vector/default-image-icon-thin-linear-260nw-2136460353.jpg",
                                  title: volume.volumeInfo!.title!,
                                  description: volume.volumeInfo!.description ??
                                      "Não há descrição",
                                ),
                              );
                            },
                          ),
                        )
                ],
              ),
            );
    });
  }
}
