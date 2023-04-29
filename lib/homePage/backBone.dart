// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:spotify_copyui/colorConst.dart';
import 'package:spotify_copyui/musicClass.dart';

class BackBone extends StatelessWidget {
  BackBone({super.key});

  List<Widget> todayMusicList = [
    Music(
        artistName: "Sleepy Vibes",
        title: "9:02 pm.",
        musicType: MusicType().single,
        thumbnail:
            "https://e-cdn-images.dzcdn.net/images/artist/920206140b51e04493a6e5f60748de47/264x264-000000-80-0-0.jpg"),
    const SizedBox(
      width: 10,
    ),
    Music(
        artistName: "NetNavi",
        title: "Boosted",
        musicType: MusicType().single,
        thumbnail:
            "https://i.scdn.co/image/ab67616d00001e0278a0bdbe0e23296012b43895"),
    const SizedBox(
      width: 10,
    ),
    Music(
        artistName: "Guy Rickard",
        title: "As The Sun Rises",
        thumbnail:
            "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/sky-sunset-music-cd-cover-art-template-design-785eb1b97ac41be2d3a66625a2a6cb0b_screen.jpg?ts=1599871143",
        musicType: MusicType().single),
  ];

  List<Widget> uniqueMusicList = [
    Music(
        artistName: "Yuforia",
        title: "Pharaoh's Chamber",
        musicType: MusicType().single,
        thumbnail: "https://f4.bcbits.com/img/a1261563014_16.jpg"),
    const SizedBox(
      width: 10,
    ),
    Music(
        artistName: "Lofi Temple",
        title: "the perfume of rain",
        musicType: MusicType().single,
        thumbnail:
            "https://static.qobuz.com/images/covers/aa/jp/cdr7eqby6jpaa_600.jpg"),
    const SizedBox(
      width: 10,
    ),
    Music(
        artistName: "Prithvi",
        title: "Dragonflies",
        musicType: MusicType().single,
        thumbnail:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1UJamoS2H9UDn-NMIFAoIdrv7ArGTbE4N-g&usqp=CAU"),
  ];

  List<Widget> jumpBackMusic = [
    Music(
      artistName: "Sleepy Vibes",
      title: "Close Your Eyes",
      musicType: MusicType().single,
      thumbnail:
          "https://i.scdn.co/image/ab67616d0000b273792f458aabf49edee67296fe",
    ),
    const SizedBox(
      width: 10,
    ),
    Music(
        artistName: "Lofi Temple",
        title: "the perfume of rain",
        musicType: MusicType().single,
        thumbnail:
            "https://static.qobuz.com/images/covers/aa/jp/cdr7eqby6jpaa_600.jpg"),
    const SizedBox(
      width: 10,
    ),
    Music(
        artistName: "Prithvi",
        title: "Found A Treasure In You",
        musicType: MusicType().single,
        thumbnail:
            "https://source.boomplaymusic.com/group10/M00/06/15/47b87ee7d3094e579ee09d3cb9fe551c_320_320.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tags
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Tags(),
            ),

            const SizedBox(
              height: 45,
            ),

            // Recommend txt
            const Text(
              "Recommended for today",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),

            const SizedBox(
              height: 10,
            ),

            // Recommended for today musics
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              scrollDirection: Axis.horizontal,
              child: Row(children: todayMusicList),
            ),

            const SizedBox(
              height: 45,
            ),

            // Uniquely yours
            const Text(
              "Uniquely yours",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),

            const SizedBox(
              height: 10,
            ),

            // Recommended for today musics
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              scrollDirection: Axis.horizontal,
              child: Row(children: uniqueMusicList),
            ),

            const SizedBox(
              height: 45,
            ),

            // jump back in
            const Text(
              "Jump back in",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),

            const SizedBox(
              height: 10,
            ),

            // Recommended for jump musics
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.fast),
              scrollDirection: Axis.horizontal,
              child: Row(children: jumpBackMusic),
            ),

            const SizedBox(
              height: 90,
            )
          ],
        ),
      ),
    );
  }
}

class Tags extends StatelessWidget {
  const Tags({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Text(
            "Music",
            style: TextStyle(color: customWhite),
          ),
        ),
        const SizedBox(width: 15),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Text(
            "Podcasts & Shows",
            style: TextStyle(color: customWhite),
          ),
        )
      ],
    );
  }
}

class Music extends StatelessWidget {
  Music(
      {super.key,
      required this.artistName,
      required this.title,
      required this.musicType,
      required this.thumbnail});

  String thumbnail;
  String musicType;
  String title;
  String artistName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 160,
          height: 160,
          child: Image.network(
            thumbnail,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress != null) {
                return const Center(child: CircularProgressIndicator());
              }
              return child;
            },
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "${MusicType().single == musicType ? MusicType().single : MusicType().band} • $artistName",
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
