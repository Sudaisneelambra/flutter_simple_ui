import 'package:exp_ui/views/widgets/container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController(); 
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
               Container(
                  width: double.infinity, // Set width as per requirement
                  height: 400, // Set height as per requirement
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Scrollbar(
                    controller: scrollController,
                    thumbVisibility: false,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: scrollController,
                      child: Row(
                        children: [
                           ContainerOne(
                          url:
                              'https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          title: 'Puppy',
                          description: 'German guide dog',
                        ),
                        SizedBox(width: 16),
                        ContainerOne(
                          url:
                              'https://images.pexels.com/photos/1108102/pexels-photo-1108102.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          title: 'Dobie',
                          description: 'Indian anticat',
                        ),
                        SizedBox(width: 16),
                        ContainerOne(
                          url:
                              'https://images.pexels.com/photos/1108101/pexels-photo-1108101.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          title: 'Worker',
                          description: 'Mechanics in cars',
                        ),
                        SizedBox(width: 16),
                        ContainerOne(
                          url:
                              'https://images.pexels.com/photos/1108100/pexels-photo-1108100.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          title: 'Snow',
                          description: 'Everests',
                        ),
                        SizedBox(width: 16),
                        ContainerOne(
                          url:
                              'https://images.pexels.com/photos/1108103/pexels-photo-1108103.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          title: 'Museum',
                          description: 'German museum',
                        ),
                        SizedBox(width: 16),
                        ContainerOne(
                          url:
                              'https://images.pexels.com/photos/1108104/pexels-photo-1108104.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          title: 'Puppy',
                          description: 'Everests',
                        ),
                        ]
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Suggestions',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Row(
                        children: [
                          Container(
                            width: constraints.maxWidth * 0.4, 
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                image: NetworkImage('https://www.shutterstock.com/image-vector/power-play-dynamic-gaming-controller-260nw-2321548437.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: constraints.maxWidth * 0.6,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Center(
                                child: Wrap(
                                  children: [
                                    Text(
                                      'Game addiction, also known as gaming disorder, is a condition where individuals become excessively engaged in video games, often to the point where it negatively impacts their daily lives. This addiction can lead to neglect of responsibilities, social isolation, poor academic or work performance, and even health issues due to prolonged screen time, sleep deprivation, and lack of physical activity. The immersive nature of games, particularly online multiplayer and role-playing games, can make players lose track of time and reality, leading to compulsive gaming behavior. Psychological factors, such as the need for achievement, social interaction, or escape from real-life problems, often contribute to addiction. Moreover, the reward system in many games, designed to keep players engaged, can lead to dependency, making it difficult to quit. While gaming can be a fun and stress-relieving activity, excessive and uncontrolled play can result in serious consequences, including anxiety, depression, and strained relationships with family and friends. Recognizing the signs of addiction early and maintaining a healthy balance between gaming and other aspects of life is crucial for overall well-being. Encouraging moderation, setting time limits, and engaging in alternative hobbies can help prevent gaming addiction and promote a healthier lifestyle.',
                                      style: TextStyle(fontSize: 15,fontStyle: FontStyle.italic),
                                      )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Flutter is an open-source UI software development toolkit created by Google, designed for building natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase. It provides a fast and efficient development experience with features like hot reload, allowing developers to see changes instantly. Flutter uses the Dart programming language and leverages a highly customizable widget-based architecture, enabling the creation of beautiful, expressive user interfaces. With its ability to deliver high-performance applications and seamless cross-platform compatibility, Flutter has become a popular choice among developers for building modern, scalable applications.',
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.justify,
                      ),
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

