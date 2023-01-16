import 'package:college_bag/pages/career_page.dart';
import 'package:college_bag/pages/home_page.dart';
import 'package:college_bag/pages/jobs_page.dart';
import 'package:college_bag/pages/more_page.dart';
import 'package:college_bag/pages/podcast_page.dart';
import 'package:college_bag/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserLayout extends StatefulWidget {
  const UserLayout({super.key});

  @override
  State<UserLayout> createState() => _UserLayoutState();
}

class _UserLayoutState extends State<UserLayout>
    with TickerProviderStateMixin<UserLayout> {
  static const List<Destination> allDestinations = <Destination>[
    Destination(0, 'Home', '/', FontAwesomeIcons.house, ColorUtils.black),
    Destination(
        1, 'Jobs', '/jobs', FontAwesomeIcons.suitcase, ColorUtils.black),
    Destination(2, 'Career', '/career', FontAwesomeIcons.graduationCap,
        ColorUtils.black),
    Destination(
        3, 'Podcast', '/podcast', FontAwesomeIcons.podcast, ColorUtils.black),
    Destination(
        4, 'More', '/more', FontAwesomeIcons.ellipsis, ColorUtils.black),
  ];

  // late final List<GlobalKey<NavigatorState>> navigatorKeys;
  late final GlobalKey<NavigatorState> navigatorKey;
  // late final List<AnimationController> destinationFaders;
  // late final List<Widget> destinationViews;
  int selectedIndex = 0;

  // AnimationController buildFaderController() {
  //   final AnimationController controller = AnimationController(
  //       vsync: this, duration: const Duration(milliseconds: 200));
  //   controller.addStatusListener((AnimationStatus status) {
  //     if (status == AnimationStatus.dismissed) {
  //       setState(() {});
  //     }
  //   });
  //   return controller;
  // }

  // Widget? renderDestinationView(
  //     {required Destination destination,
  //     required GlobalKey<NavigatorState> navigatorKey,
  //     required RouteSettings settings}) {
  //   switch (destination.index) {
  //     case 0:
  //       return HomePage(key: navigatorKey);
  //     case 1:
  //       return JobsPage(key: navigatorKey);
  //     case 2:
  //       return CareerPage(key: navigatorKey);
  //     case 3:
  //       return PodcastPage(key: navigatorKey);
  //     case 4:
  //       return MorePage(key: navigatorKey);
  //   }
  //   return null;
  // }

  @override
  void initState() {
    super.initState();
    navigatorKey = GlobalKey();
    // navigatorKeys = List<GlobalKey<NavigatorState>>.generate(
    //     allDestinations.length, (int index) => GlobalKey()).toList();
    // destinationFaders = List<AnimationController>.generate(
    //     allDestinations.length, (int index) => buildFaderController()).toList();
    // destinationFaders[selectedIndex].value = 1.0;
    // destinationViews = allDestinations.map((Destination destination) {
    //   return FadeTransition(
    //       opacity: destinationFaders[destination.index]
    //           .drive(CurveTween(curve: Curves.fastOutSlowIn)),
    //       child: DestinationView(
    //         // settings: settings,
    //         destination: destination,
    //         navigatorKey: navigatorKeys[destination.index],
    //       ));
    // }).toList();
  }

  // @override
  // void dispose() {
  //   for (final AnimationController controller in destinationFaders) {
  //     controller.dispose();
  //   }
  //   super.dispose();
  // }

  Route _renderRoute({Widget? child, RouteSettings? settings}) {
    return MaterialPageRoute(settings: settings, builder: (context) => child!);
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _renderRoute(settings: settings, child: const HomePage());
      case "/jobs":
        return _renderRoute(settings: settings, child: const JobsPage());
      case "/career":
        return _renderRoute(settings: settings, child: const CareerPage());
      case "/podcast":
        return _renderRoute(settings: settings, child: const PodcastPage());
      case "/more":
        return _renderRoute(settings: settings, child: const MorePage());
      default:
        return _renderRoute(settings: settings, child: const HomePage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // final NavigatorState navigator =
        //     navigatorKeys[selectedIndex].currentState!;
        // print('navigator -->${navigator}');
        // print('navigator.canPop() -->${navigator.canPop()}');
        // if (!navigator.canPop()) {
        //   return true;
        // }
        // navigator.pop();
        return false;
      },
      child: Scaffold(
        body: Navigator(key: navigatorKey, onGenerateRoute: generateRoute),
        // SafeArea(
        //   top: false,
        //   child: Stack(
        //     fit: StackFit.expand,
        //     children: allDestinations.map((Destination destination) {
        //       final int index = destination.index;
        //       final Widget view = destinationViews[index];
        //       if (index == selectedIndex) {
        //         destinationFaders[index].forward();
        //         return Offstage(offstage: false, child: view);
        //       } else {
        //         destinationFaders[index].reverse();
        //         if (destinationFaders[index].isAnimating) {
        //           return IgnorePointer(child: view);
        //         }
        //         return Offstage(child: view);
        //       }
        //     }).toList(),
        //   ),
        // ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: ColorUtils.white,
          height: 60.0,
          selectedIndex: selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedIndex = index;
              navigatorKey.currentState
                  ?.pushReplacementNamed(allDestinations[index].path);
            });
          },
          destinations: allDestinations.map((Destination destination) {
            return NavigationDestination(
              selectedIcon: FaIcon(
                destination.icon,
                size: 20.0,
                color: ColorUtils.white,
              ),
              icon: FaIcon(
                destination.icon,
                size: 20.0,
              ),
              label: destination.title,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Destination {
  const Destination(this.index, this.title, this.path, this.icon, this.color);
  final int index;
  final String title;
  final String path;
  final IconData icon;
  final Color color;
}

// class DestinationView extends StatefulWidget {
//   const DestinationView({
//     super.key,
//     required this.destination,
//     required this.navigatorKey,
//   });

//   final Destination destination;
//   final Key navigatorKey;

//   @override
//   State<DestinationView> createState() => _DestinationViewState();
// }

// class _DestinationViewState extends State<DestinationView> {
//   Widget renderErrorPage() {
//     return const Scaffold(
//       body: Center(
//         child: Text('Error Page'),
//       ),
//     );
//   }

//   Widget setHomeRoutes(RouteSettings settings) {
//     print('settings.name -->${settings.name}');
//     switch (settings.name) {
//       case '/':
//         return const HomePage();
//       case '/detail':
//         return const JobsPage();
//       default:
//         return renderErrorPage();
//     }
//   }

//   Widget setJobsRoutes(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return const JobsPage();
//       default:
//         return renderErrorPage();
//     }
//   }

//   Widget setCareerRoutes(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return const CareerPage();
//       default:
//         return renderErrorPage();
//     }
//   }

//   Widget setPodcastRoutes(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return const PodcastPage();
//       default:
//         return renderErrorPage();
//     }
//   }

//   Widget setMoreRoutes(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return const MorePage();
//       default:
//         return renderErrorPage();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       key: widget.navigatorKey,
//       onGenerateRoute: (RouteSettings settings) {
//         return MaterialPageRoute<void>(
//           settings: settings,
//           builder: (BuildContext context) {
//             switch (widget.destination.index) {
//               case 0:
//                 return setHomeRoutes(settings);
//               case 1:
//                 return setJobsRoutes(settings);
//               case 2:
//                 return setCareerRoutes(settings);
//               case 3:
//                 return setPodcastRoutes(settings);
//               case 4:
//                 return setMoreRoutes(settings);
//             }
//             assert(false);
//             return renderErrorPage();
//           },
//         );
//       },
//     );
//   }
// }
