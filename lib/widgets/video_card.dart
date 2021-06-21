import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';
import 'package:timeago/timeago.dart' as timeago;

class VideoCard extends StatelessWidget {
  final Video video;

  const VideoCard({Key? key, required this.video}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              video.thumbnailUrl,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
              //fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 12,
              right: 10,
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.black,
                child: Text(video.duration),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => print("Navigate to profile"),
                child: CircleAvatar(
                  foregroundImage: NetworkImage(video.author.profileImageUrl),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                        child: Text(
                      video.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                    Flexible(
                      child: Text(
                        '${video.author.username} * ${video.viewCount} views *  ${timeago.format(video.timestamp)}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white54, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
