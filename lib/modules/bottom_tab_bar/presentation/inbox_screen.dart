import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moon_sports/utils/app_color.dart';
import 'package:moon_sports/widgets/custom_appBar.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  late String videoTitle;

  final List<String> _videoUrlList = [
    'https://www.youtube.com/watch?v=k157GjJHvK4',
    'https://www.youtube.com/watch?v=Nnop2walGmM',
    'https://www.youtube.com/watch?v=PLIsDVqACZ0',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarSize: 70.h,
        backGroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.sp,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: _videoUrlList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final ytController = YoutubePlayerController(
              initialVideoId:
                  YoutubePlayer.convertUrlToId(_videoUrlList[index])!,
              flags: const YoutubePlayerFlags(
                autoPlay: false,
                enableCaption: true,
                captionLanguage: 'en',
              ),
            );
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 7),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        child: YoutubePlayer(
                          controller: ytController
                            ..addListener(
                              () {
                                if (ytController.value.isPlaying) {
                                  setState(() {});
                                } else {}
                              },
                            ),
                          showVideoProgressIndicator: false,
                          progressIndicatorColor: Colors.transparent,
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(isExpanded: true),
                            FullScreenButton(),
                          ],
                          onEnded: (YoutubeMetaData md) {
                            ytController.reset();
                            md.videoId;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                       "Tum Se (Full Video): Shahid Kapoor, Kriti | Sachin-Jigar, Raghav Chaitanya, Varun Jain, Indraneel",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
