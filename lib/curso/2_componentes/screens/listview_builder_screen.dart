import 'package:examples/curso/2_componentes/utils/lorem.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIDs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final ScrollController scrollController = ScrollController();

  bool isLoading = false;

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    print('adding images ids');

    await Future.delayed(const Duration(seconds: 2));
    addImages(5);

    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      var pixels = scrollController.position.pixels;
      var position = scrollController.position.maxScrollExtent;
      if (pixels >= position) {
        fetchData();
      }
    });
  }

  void addImages(int n) {
    for (int i = 0; i < n; i++) {
      imagesIDs.add(imagesIDs.length + 1);
    }
    print('imagesIDs: ${imagesIDs.length}');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            itemCount: imagesIDs.length,
            itemBuilder: (BuildContext context, int index) {
              return FadeInImage(
                fit: BoxFit.fitHeight,
                placeholderFit: BoxFit.scaleDown,
                placeholder: const AssetImage('assets/Loading_icon.gif'),
                image: Pokemon.imageByID(imagesIDs[index]),
              );
            },
          ),
          if (isLoading) const PokemonLoadingAnimation(),
          if (isLoading) const CircularLoadingAnimation()
        ],
      ),
    );
  }
}

class CircularLoadingAnimation extends StatelessWidget {
  const CircularLoadingAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: MediaQuery.of(context).size.width / 2 - 30,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
        child: const CircularProgressIndicator(),
      ),
    );
  }
}

class PokemonLoadingAnimation extends StatelessWidget {
  const PokemonLoadingAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(height: 20),
              Image(
                image: AssetImage('assets/pokeball.gif'),
                height: 50,
              ),
            ],
          ),
          const Image(
            image: AssetImage('assets/pokelogo.png'),
            height: 70,
          ),
        ],
      ),
    );
  }
}
