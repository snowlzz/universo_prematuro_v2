import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter/material.dart';
import 'package:universo_prematuro_v2/app/modules/news/news_store.dart';

import 'comps/news.dart';

class NewsPage extends StatefulWidget {
  final String title;
  const NewsPage({Key? key, this.title = 'NewsPage'}) : super(key: key);
  @override
  NewsPageState createState() => NewsPageState();
}
class NewsPageState extends State<NewsPage> {
  final NewsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notícias'),
        centerTitle: true,
        elevation: 0
      ),
      body: Container(
        color: Colors.green,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Lançamento do app Universo Prematuro', 'Lançamento do app "Universo Prematuro" na Rádio Vida nova FM 205,9, no programa "OAB e Voce", no dia 21 de Novembro de 2019', 'images/n1.png', url: 'https://www.facebook.com/vidanovafranca/videos/2467613623513577/',)
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Verdade ON', 
              'O dia mundial da Prematuridade é comemorado em 17 de novembro e a data não passou despercebida em algumas instituições de Franca. Coincidentemente neste mês, a Universidade de Franca (UNIFRAN) lançou um aplicativo para auxiliar no cuidado de bebês nascidos om menos de 37 semanas de gestação.',
              // 'e a data não passou despercebida em algumas instituições de Franca'
              
              'images/n2.jpeg', url: 'https://portaldeboaspraticas.iff.fiocruz.br/atencao-recem-nascido/dia-mundial-da-prematuridade/',)
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Jornal da EPTV - 1ª Edição', 'Pesquisadores desenvolvem app que ajuda mães de prematuros em Franca-SP', 'images/n3.png', url: 'https://globoplay.globo.com/v/8150880')
            ),
            // 'Lançamento do app "Universo Prematuro" na Rádio Vida nova FM 205,9, no programa "OAB e Voce", no dia 21 de Novembro de 2019'
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Na Mídia - FAPESP', 'O projeto UNIVERSO PREMATURO, que leva o mesmo nome do App, faz parte de uma pesquisa: a pesquisa tem perspectiva de intervenção digital para assegurar o desenvolvimento integral de crianças nascidas prematuras durante seus primeiros anos de vida. 22 de novembro de 2019', 'images/n4.png', url: 'https://namidia.fapesp.br/aplicativo-auxilia-no-cuidado-de-bebes-prematuros/205108')
            ),
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: NewsContent('UNIFRAN desenvolve app para auxiliar no cuidado de prematuros', 'O projeto UNIVERSO PREMATURO, que leva o mesmo nome do App, faz parte de uma pesquisa: a pesquisa tem perspectiva de intervenção digital para assegurar o desenvolvimento integral de crianças nascidas prematuras durante seus primeiros anos de vida. 22 de novembro de 2019', 'images/n6.PNG')
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('UNIFRAN desenvolve app para auxiliar no cuidado de prematuros', 'A tecnologia pode ser uma boa aliada da saúde! Pesquisadores da UNIFRAN desenvolveram aplicativo que acompanha o desenvolvimento de bebês prematuros.', 'images/n5.png', url: 'https://noticias.cruzeirodosuleducacional.edu.br/projeto-universo-prematuro-da-unifran-e-destaque-em-materia-da-tv-record-interior/')
            ),
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: NewsContent('UNIFRAN desenvolve app para auxiliar no cuidado de prematuros', 'A tecnologia pode ser uma boa aliada da saúde! Pesquisadores da UNIFRAN desenvolveram aplicativo que acompanha o desenvolvimento de bebês prematuros.', 'images/n5.png')
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Grávida. E agora?', 'Advogada elaborou uma cartilha de orientação ao direito da gestante. Informação está na contida no aplicativo Universo Prematuro, lançado pela Unifran no ano passado, e ainda na versão impressa e e-book', 'images/n9.png', url: 'http://verdadeon.com.br/portal/2020/03/03/gravida-e-agora/')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Família Verzola Recebe - Carla Rezende e marisa Brunherotti', 'Entrevista sobre a cartilha de orientação ao direito da gestante.', 'images/n10.png', url: 'https://www.youtube.com/watch?v=aDjFh7EGy8E')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Projeto Universo Prematuro ganha bolsa da FAPESP', 'O projeto "Universo Prematuro" foi contemplado esse ano com a bolsa FAPESP (Fundação de Amparo à Pesquisa do estado de São Paulo), para a prática inovadora do seguimento do desenvolvimento e crescimento de lactentes que nasceram prematuros.', 'images/n11.png', url: 'https://noticias.cruzeirodosuleducacional.edu.br/projeto-universo-prematuro-ganha-bolsa-da-fapesp/')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Aluno ganha bolsa de Treinamento Técnico pela FAPESP', 'O aluno Vinicius Henrique do Carmo da Silva, graduado em engenharia mecatrônica pela Unifran, foi contemplado com um bolsa de Treinamento Técnico pela FAPESP', 'images/n12.png', url: 'https://noticias.cruzeirodosuleducacional.edu.br/aluno-ganha-bolsa-de-treinamento-tecnico-pela-fapesp/')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Cartilha da UNIFRAN para Gestantes concorre ao Prêmio Innovare 2020', 'A cartilha: Gestantes, Direito, Saúde e Educação, elaborada a partir do curso de Doutorado em Promoção de Saúde e o Laboratório de Estratégias em Promoção da Saúde (LEPS) da UNIFRAN, instituição que integra a Cruzeiro do Sul Educacional, está concorrendo ao Prêmio Innovare 2020.', 'images/n13.png', url: 'https://noticias.cruzeirodosuleducacional.edu.br/cartilha-unifran-gestantes-concorre-premio-innovare-2020/')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Nova atualização do App e Centro Especializado no Desenvolvimento integral do pré-termo', 'Aplicativo desenvolvido na UNIFRAN para auxiliar no cuidado de bebês prematuros apresenta nova atualização e Centro Especializado no Desenvolvimento Integral do pré-termo', 'images/n14.png', url: 'https://noticias.cruzeirodosuleducacional.edu.br/aplicativo-desenvolvido-na-unifran-para-auxiliar-no-cuidado-de-bebes-prematuros-apresenta-nova-atualizacao-e-centro-especializado-no-desenvolvimento-integral-do-pre-termo/')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Entrevista CBN Universo Prematuro', 'Programa "Universo Prematuro" foi desenvolvido em faculdade da cidade e deve estar disponível em breve', 'images/n15.png', url: 'https://www.cbnribeirao.com.br')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Entrevista com Marisa A. Brunherotti - Coordenadora do projeto Universo Prematuro', 'Entrevista realizada pelo jornalista Realindo Junior no dia 28/12/19 com a coordenadora do projeto Universo Prematuro', 'images/n17.png', url: 'https://www.youtube.com/watch?v=V-ycn7D3VFI')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Documentário Mães de UTI', 'Documentário realizado por estudantes do 6º semestre de jornalismo da UNIFRAN com a participação especial do projeto Universo Prematuro', 'images/n18.png', url: 'https://www.youtube.com/watch?v=qZaKdsFMrRg')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Expocom Sudeste 2021 - Participação Universo Prematuro', 'Duas produções do Curso de Jornalismo da Unifran, com temas sobre saúde, estão classificadas para o Expocom Sudeste 2021, incluido o projeto Universo Prematuro', 'images/n19.png', url: 'https://agendasette.com.br/2021/06/30/entre-os-finalistas/')
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NewsContent('Projeto de assistência a famílias de prematuros ganha espaço e pode até virar lei em Franca', 'Prefeito Alexandre Ferreira deve incluir link para aplicativo no portal da Prefeitura; proteção às crianças', 'images/n21.png', url: 'https://www.jornaldafranca.com.br/projeto-de-assistencia-a-familias-de-prematuros-ganha-espaco-e-pode-ate-virar-lei/?fbclid=IwAR3k1cxpc7LV7dr95VFJzLhyQhpDIy7vQIFa_Rdk3QRWUbQtImHtibywLjM')
            ),
          ],
        ),
      ),
    );
  }
}