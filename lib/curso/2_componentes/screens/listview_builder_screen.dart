import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIDs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      var pixels = scrollController.position.pixels;
      var position = scrollController.position.maxScrollExtent;
      if (pixels >= position) {
        print('adding images ids');
        addImages(3);
        print('imagesIDs: ${imagesIDs.length}');
        setState(() {});
      }
      // pretyPrint('$pixels - $position');
    });
  }

  void addImages(int n) {
    for (int i = 0; i < n; i++) {
      imagesIDs.add(imagesIDs.length + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
        itemCount: imagesIDs.length,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
            fit: BoxFit.fitHeight,
            placeholderFit: BoxFit.scaleDown,
            placeholder: const AssetImage('assets/Loading_icon.gif'),
            image: NetworkImage(
              // 'https://picsum.photos/1000/600?image=${imagesIDs[index]}',
              // 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/${imagesIDs[index]}.png',
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${imagesIDs[index]}.png',
              // 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/${imagesIDs[index]}.png',
              // 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/${imagesIDs[index]}.png',
              // 'https://static.wikia.nocookie.net/espokemon/images/1/17/Mega-Lucario_XY.gif',
            ),
          );
        },
      ),
    );
  }
}
