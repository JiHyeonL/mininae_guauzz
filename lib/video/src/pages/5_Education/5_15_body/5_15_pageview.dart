import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video_page extends StatefulWidget {
  const video_page({
    Key ?key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  _5_video_page createState() => _5_video_page();
}

class _5_video_page extends State<video_page>{

  late final YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(

      initialVideoId: asd[widget.id-1],
      flags: YoutubePlayerFlags(
        hideThumbnail: true,

        autoPlay: false,
        controlsVisibleAtStart: false,
        useHybridComposition: false,
      ),
    );
  }

  List asd = [
    'iQK7zlpUNWw',
    'DHOCp6W6TOA',
    '2Xr-cfuXhuk',
    'ud19gE-vos4',
    '9PaofncBGDc',
    'CrDOzGbxxNM',
    'Betau5i8hC0',
    'BgjBSuCq0pM',
    'qPRLibKnOqQ',
    'KuPdRN9GgO0',

    'IfhxiNBmL9A',
    'rAcLz9CckvI',
    'Rhod9Osmryo',
    'aawWCbmKVbE',
    'TB4qA3S9ezI',
    'ufgBoedT55A',
    'y-mRvq0T0rM',
    'NcHbZs6nMO8',
    'Y1nmoIQqyr4',
    'J-hI16FQro0',

    'lR6546eD0KE',
    'Iy0hkRwt8mI',
    'uVkZgZJdbG8',
    'jRJ4f9wudqA',
    'HnQW06w4GZE',
    'UXbRWnFf52A',
    'AJFNtNF1qNk',
    'mgYt5AOAxTQ',
    'ujPu5FB3NNs',
    'LuYeaXWnV08'

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
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/(30/(30-widget.id)),), //상단 슬라이드
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