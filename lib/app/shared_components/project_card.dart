import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management/app/constans/app_constants.dart';

class ProjectCardData {
  final ImageProvider projectImage;
  final String projectName;
  final String releaseTime;

  const ProjectCardData({
    required this.projectImage,
    required this.projectName,
    required this.releaseTime,
  });
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.data,
    Key? key,
  }) : super(key: key);

  final ProjectCardData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _ProfilImage(image: data.projectImage),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TitleText(data.projectName),
            const SizedBox(height: 5),
            Row(
              children: [
                const _SubtitleText("Duration : "),
                _ReleaseTimeText(data.releaseTime)
              ],
            ),
            //const Divider(thickness: 1,),
          ],
        ),
      ],
    );
  }
}

/* -----------------------------> COMPONENTS <------------------------------ */

class _ProfilImage extends StatelessWidget {
  const _ProfilImage({required this.image, Key? key}) : super(key: key);

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        padding: const EdgeInsets.all(kSpacing),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          image: DecorationImage(
            image: image,
            fit: BoxFit.fill,
          ),
        ));
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText(this.data, {Key? key}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data.capitalize!,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: kFontColorPallets[0],
        letterSpacing: 0.8,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _SubtitleText extends StatelessWidget {
  const _SubtitleText(this.data, {Key? key}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 11, color: kFontColorPallets[2]),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _ReleaseTimeText extends StatelessWidget {
  const _ReleaseTimeText(this.data, {Key? key}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kNotifColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2.5),
      child: Text(
        data,
        style: const TextStyle(fontSize: 9, color: Colors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
