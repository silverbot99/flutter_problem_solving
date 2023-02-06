import 'package:flutter/material.dart';
import 'package:flutter_problem_solving/utils/methods/shortcuts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  // final double currentAmount;

  @override
  State<StatefulWidget> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: getSize(context).width,
        height: getSize(context).height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Chào buổi sáng, Silvia'),
              ),
               Padding(
                 padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.grey,
                   ),
                   child: Column(
                     children: [
                       const Padding(
                         padding: EdgeInsets.only(top: 8),
                          child: Text("Bây giờ bạn cảm thấy thế nào?"),
                       ),
                       Padding(
                         padding: EdgeInsets.only(top: 8),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             IconButton(
                                 onPressed: () {},
                                 icon: const Icon(
                                   Icons.sentiment_very_satisfied,
                                   size: 32,
                                   color: Colors.white,
                                 ),
                             ),
                             IconButton(
                               onPressed: () {},
                               icon: const Icon(
                                           Icons.mood_bad,
                                           size: 32,
                                           color: Colors.white,
                                         ),),
                             IconButton(
                               onPressed: () {},
                               icon: const Icon(
                                           Icons.sentiment_dissatisfied,
                                           size: 32,
                                           color: Colors.white,
                                         ),),
                             IconButton(
                               onPressed: () {},
                               icon: const Icon(
                                           Icons.sentiment_very_dissatisfied,
                                           size: 32,
                                           color: Colors.white,
                                         ),),
                             IconButton(
                               onPressed: () {},
                               icon: const Icon(
                                           Icons.sentiment_very_dissatisfied_outlined,
                                           size: 32,
                                           color: Colors.white,
                                         ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),

              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text("Vấn đề của bạn hiện tại"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                        child: TextField(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}