import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:u_tweet/common/loading_page.dart';
import 'package:u_tweet/common/rounded_small_button.dart';
import 'package:u_tweet/constants/assets_constants.dart';
import 'package:u_tweet/core/utils.dart';
import 'package:u_tweet/features/auth/controller/auth_controller.dart';
import 'package:u_tweet/features/tweet/controller/tweet_controller.dart';
import 'package:u_tweet/theme/pallete.dart';

class CreateTweetScreen extends ConsumerStatefulWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const CreateTweetScreen());
  const CreateTweetScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateTweetScreenState();
}

class _CreateTweetScreenState extends ConsumerState<CreateTweetScreen> {
  final tweetTextController = TextEditingController();
  List<File> images = [];
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    tweetTextController.dispose();
    _pageController.dispose();
  }

  void shareTweet() {
    ref
        .read(tweetControllerProvider.notifier)
        .shareTweet(
          images: images,
          text: tweetTextController.text,
          context: context,
          repliedTo: '',
          repliedToUserId: '',
        );
    Navigator.pop(context);
  }

  void onPickImages() async {
    images = await pickImages();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = ref.watch(currentUserDetailsProvider).value;
    final isLoading = ref.watch(tweetControllerProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close, size: 30),
        ),
        actions: [
          RoundedSmallButton(
            onTap: shareTweet,
            label: 'Tweet',
            backgroundColor: Pallete.blueColor,
            textColor: Pallete.whiteColor,
          ),
        ],
      ),
      body:
          isLoading || currentUser == null
              ? const Loader()
              : SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              currentUser.profilePic,
                            ),
                            radius: 30,
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: TextField(
                              controller: tweetTextController,
                              style: const TextStyle(fontSize: 22),
                              decoration: const InputDecoration(
                                hintText: "What's happening?",
                                hintStyle: TextStyle(
                                  color: Pallete.greyColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                                border: InputBorder.none,
                              ),
                              maxLines: null,
                            ),
                          ),
                        ],
                      ),
                      if (images.isNotEmpty)
                        SizedBox(
                          height: 400,
                          child: PageView.builder(
                            controller: _pageController,
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                child: Image.file(
                                  images[index],
                                  fit: BoxFit.contain,
                                ),
                              );
                            },
                            onPageChanged: (index) {
                              setState(() {
                                // Update the state if necessary
                              });
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10),
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Pallete.greyColor, width: 0.3)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(left: 15, right: 15),
              child: GestureDetector(
                onTap: onPickImages,
                child: SvgPicture.asset(AssetsConstants.galleryIcon),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(left: 15, right: 15),
              child: SvgPicture.asset(AssetsConstants.gifIcon),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0).copyWith(left: 15, right: 15),
              child: SvgPicture.asset(AssetsConstants.emojiIcon),
            ),
          ],
        ),
      ),
    );
  }
}
