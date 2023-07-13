import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../shared/extensions.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/helper.dart';
import '../../../shared/theme/text_theme.dart';
import '../../../shared/widgets/nav.dart';
import '../../request_details/request_details_view.dart';

class RequestTile extends StatelessWidget {
  const RequestTile({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Nav.to(const RequestDetailsView());
      },
      child: Container(
        decoration: KHelper.of(context).elevatedBox,
        margin: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            left: BorderSide(color: KColors.of(context).accentColor, width: 3),
          )),
          padding: EdgeInsets.all(KHelper.hPadding),
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              const IconText(
                  icon: Icons.reset_tv_rounded, text: 'NO : 2124151545'),
              10.h,
              const Divider(),
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(
                      icon: Icons.timelapse,
                      text: "11/7/2023",
                      style: KTextStyle.of(context).body2),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      radius: 15,
                      child: Text("8m", style: TextStyle(fontSize: 11)),
                    ),
                  ),
                ],
              ),
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(
                    icon: Icons.location_on_outlined,
                    text: 'المنصوره شارع قناة السويس',
                    style: KTextStyle.of(context).body2,
                  ),
                  IconButton(
                    onPressed: () async {
                      String url =
                          "google.navigation:q=31.388537669971903,31.034472131501534";
                      await launchUrlString(url);
                    },
                    icon: Transform.rotate(
                        angle: 45,
                        child: const Icon(
                          Icons.assistant_navigation,
                          size: 30,
                        )),
                    color: KColors.accentColorD,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText(
      {super.key, required this.icon, required this.text, this.style});

  final IconData icon;
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        5.w,
        Text(
          text,
          style: style ?? KTextStyle.of(context).smallTitle,
        ),
      ],
    );
  }
}
