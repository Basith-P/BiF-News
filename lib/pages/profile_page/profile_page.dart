import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/list_tile_text.dart';
import 'widgets/custom_card.dart';
import '/widgets/circle_avatar_with_shadow.dart';
import '/utils/vars.dart';

class ProfilePage extends StatelessWidget {
  static const routName = '/profile';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        elevation: 0,
        title: Text(
          'PROFILE',
          style: appBarTextStyle,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        'Hello,\nmy name',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    const Hero(
                      tag: 'profilePic',
                      child: CircleAvatarWithShadow(
                        image: AssetImage('assets/images/1.png'),
                        radius: 70,
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
                Text(
                  'is Basith.\nI\'m a Developer.',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 20),
                buildCustomCard(
                  context,
                  Icons.sentiment_satisfied_alt_outlined,
                  'About',
                  [
                    Text(
                      'I\'m a developer focused on flutter and a computer science student',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(height: 1.8),
                    ),
                  ],
                ),
                buildCustomCard(
                  context,
                  Icons.code_outlined,
                  'Languages',
                  const [
                    ListTileText('Flutter'),
                    ListTileText('Python'),
                    ListTileText('HTML'),
                    ListTileText('CSS'),
                  ],
                ),
                buildCustomCard(
                  context,
                  Icons.sports_soccer_outlined,
                  'Hobbies',
                  const [
                    ListTileText('Reading'),
                    ListTileText('Make videos'),
                  ],
                ),
                buildCustomCard(
                  context,
                  Icons.public_outlined,
                  'Social',
                  [
                    InkWell(
                      child: const ListTileText(
                        'GitHub',
                        icon: Icons.call_made_rounded,
                      ),
                      onTap: () => _launchURL('https://github.com/Basith-P'),
                    ),
                    InkWell(
                      child: const ListTileText(
                        'LinkedIn',
                        icon: Icons.call_made_rounded,
                      ),
                      onTap: () => _launchURL('https://www.linkedin.com/in/basithp9/'),
                    ),
                    InkWell(
                      child: const ListTileText(
                        'Instagram',
                        icon: Icons.call_made_rounded,
                      ),
                      onTap: () => _launchURL('https://www.instagram.com/basith_nst/'),
                    ),
                    InkWell(
                      child: const ListTileText(
                        'YouTube',
                        icon: Icons.call_made_rounded,
                      ),
                      onTap: () => _launchURL(
                          'https://www.youtube.com/channel/UCe-QNDe5ywUCHE2MSY_3q7Q?sub_confirmation=1'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
