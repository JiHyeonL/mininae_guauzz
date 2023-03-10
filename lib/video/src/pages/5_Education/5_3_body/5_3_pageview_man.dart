import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video_page_man extends StatefulWidget {
  const video_page_man({
    Key ?key,
    required this.id,
  }) : super(key: key);

  final int id;

  _5_video_page createState() => _5_video_page();
}
class _5_video_page extends State<video_page_man>{

  late final YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(

      initialVideoId: asd[widget.id-1],

      flags: YoutubePlayerFlags(
        hideThumbnail: true,
        //isLive: true,
        autoPlay: false,
        controlsVisibleAtStart: false,
        useHybridComposition: false,
      ),
    );
  }

  List asd = [
    'bwN5AJkmov8',
    'v-zsSLLay_Y',
    'AZAd_Ne19Q0',
    'VoibG-Fgj0s',
    '28br8ZUL3DY',
    'oSIMzAYn4po',
    'CWSX0-qmnG8',
    '5jI-noqr5O4',
    '4Y705luDtAE',
    'cjQtfVVW3jk',
    'KlxsFgs36ZE',
    'Eiq_4QnXA0Q',
    'ODw26rrnmuo',
    'TdCAj0J1xz4',
    '6klRbZLVJKw',
    'jMVhPwkKJVE',
    'iDxMCsozEVs',
    'wsmfE7ghtIc',
    '1Mod6diZ2ek',
    '53N8FWFhsro',
    'gHbXxm5uqvs',
    'tCjqWSW-OZo',
    '6I8JZgE9ETw',
    'UAc2Irid318',
    'tR_rIPuWsko',
    'Zc9_uuCnOiI',
    '0zl4w_mqpEw',
    'QBJZ2ErQKsM',
    'zgXJuybAES4'

  ];




  @override
  void dispose() {

    _controller.dispose();
    super.dispose();
  }

  Widget youtube(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      liveUIColor: Colors.amber,
    );
  }

  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;
    return Container(
      child:
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/(29/(29-widget.id)),), //상단 슬라이드
            child: Container(
              height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.01,
              color: Colors.blue.withOpacity(0.6),
            ),
          ),

          //상단 슬라이드 밑에 선
          Padding(
            padding: EdgeInsets.only(bottom:(MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.001,), //상단 슬라이드 밑에 선
            child: Container(
              height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.001,
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
          Container(
              height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.31,
              child: Semantics(
                  label: "유튜브 영상",
                  child: youtube(context)
              ))
        ],
      ),
    );
  }
}
