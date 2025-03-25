import 'package:flutter/material.dart';
import 'container.dart'; // Ensure this file contains the `ContainerOne` widget

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                      color: Colors.white, // Set text color
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 16, top: 16),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
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
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Suggestions',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://letsenhance.io/static/73136da51c245e80edc6ccfe44888a99/1015f/MainBefore.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
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
                      color: Colors.white,
                    ),
                  ),
                ),
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Flutter is an open-source UI software development toolkit created by Google, designed for building natively compiled applications for mobile, web, desktop, and embedded devices from a single codebase. It provides a fast and efficient development experience with features like hot reload, allowing developers to see changes instantly. Flutter uses the Dart programming language and leverages a highly customizable widget-based architecture, enabling the creation of beautiful, expressive user interfaces. With its ability to deliver high-performance applications and seamless cross-platform compatibility, Flutter has become a popular choice among developers for building modern, scalable applications.',
                        style: TextStyle(fontSize: 15, color: Colors.white),
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
