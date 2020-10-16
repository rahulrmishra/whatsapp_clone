import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryViewScreen extends StatefulWidget {
  @override
  _StoryViewScreenState createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  final controller = StoryController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoryView(
        storyItems: [
          StoryItem.text(
            title:
                "Hello there, this is going to awesome. done awesome photoshoot at studio.",
            backgroundColor: Colors.black,
          ),
          StoryItem.pageImage(
            url:
                "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
            caption: "Still sampling",
            controller: controller,
          ),
          StoryItem.pageImage(
              url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
              caption: "Working with gifs",
              controller: controller),
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
            caption: "Hello, from the other side",
            controller: controller,
          ),
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif",
            caption: "Hello, from the other side2",
            controller: controller,
          ),
        ],
        controller: controller,
        onComplete: () {
          Navigator.pop(context);
        });
  }
}
