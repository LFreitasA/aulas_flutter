import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Catioros"),
            bottom: TabBar(
              tabs: tabs,
              isScrollable: true,
            ),
          ),
          body: Racas(),
        ),
      ),
    );
  }
}

class Racas extends StatelessWidget {
  const Racas({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
          child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/%EB%8B%A5%EC%8A%A4%ED%9B%88%ED%8A%B8%28%EB%8B%A8%EB%AA%A8%EC%A2%85%29_%28Dachshund_%28Short%29%29.jpg/800px-%EB%8B%A5%EC%8A%A4%ED%9B%88%ED%8A%B8%28%EB%8B%A8%EB%AA%A8%EC%A2%85%29_%28Dachshund_%28Short%29%29.jpg'),
        ),
        Center(
          child: Image.network(
              'https://image.cachorrogato.com.br/thumb/500/500/1/imagens/racas/imagem142.jpg'),
        ),
        Center(
          child: Image.network(
              'https://images.trustinnews.pt/uploads/sites/5/2022/06/220615_GettyImages-694817842-1-1600x1068.jpg'),
        ),
        Center(
          child: Image.network(
              'https://www.lojadocao.pt/image/cache/data/BLOG/pug-834x433.jpg'),
        ),
        Center(
          child: Image.network(
              'https://cdn.vidaativa.pt/uploads/2018/04/cocker-spaniel-cao.jpg'),
        ),
        Center(
          child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/a/a3/Black-Magic-Big-Boy.jpg'),
        ),
        Center(
          child: Image.network(
              'https://quintadapatada.com/wp-content/uploads/2019/01/bordercollie.jpg'),
        ),
        Center(
          child: Image.network(
              'https://www.zooplus.pt/magazine/wp-content/uploads/2018/06/beagle_1.jpeg'),
        ),
        Center(
          child: Image.network(
              'https://static1.patasdacasa.com.br/articles/6/39/46/@/17262-o-weimaraner-e-um-cachorro-grande-e-com-articles_media_mobile-2.jpg'),
        ),
        Center(
          child: Image.network(
              'https://image.cachorrogato.com.br/thumb/500/500/1/imagens/racas/imagem125.jpg'),
        ),
      ],
    );
  }
}

final tabs = [
  Tab(
    child: Text("Dachshund"),
  ),
  Tab(
    child: Text("Golden"),
  ),
  Tab(
    child: Text("Bulldog"),
  ),
  Tab(
    child: Text("Pug"),
  ),
  Tab(
    child: Text("Spaniel"),
  ),
  Tab(
    child: Text("Husky"),
  ),
  Tab(
    child: Text("Border Collie"),
  ),
  Tab(
    child: Text("Beagle"),
  ),
  Tab(
    child: Text("Weimaraner"),
  ),
  Tab(
    child: Text("Dalmata"),
  ),
];
