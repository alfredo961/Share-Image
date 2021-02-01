import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:share_example/providers/share_provider.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final providerWatch = context.watch<ShareProvider>();
    final providerRead = context.read<ShareProvider>();
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      height: size.height * 0.5,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.black45, borderRadius: BorderRadius.circular(21)),
      child: Stack(
        children: [
          Column(
            children: [
              Image.network("${providerWatch.image}"),
              Text(
                '${providerWatch.title}',
                style: Theme.of(context).textTheme.headline1,
              ),
              Flexible(
                child: Text(
                  '¿Cómo te gustaría que te recordaran? ¿Te has preguntado alguna vez de dónde vienen tus sueños, tu pasión, tus intereses? ¿De verdad tratas de ser tú mismo e intentas aportar algo valioso a este mundo? Joe Gardner es un maestro de música cuya verdadera pasión es tocar jazz. Pero, cuando le llega la oportunidad que lleva buscando toda su vida, sufre un accidente que le trasporta a un lugar donde se ve obligado a pensar qué significa realmente tener alma. La historia de un viaje desde las calles de Nueva York hasta los reinos cósmicos, para descubrir las respuestas a las preguntas más importantes de la vida.',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(CupertinoIcons.share),
                onPressed: () => providerRead.sharePost(),
              )
            ],
          )
        ],
      ),
    );
  }
}
