import 'package:flutter/material.dart';

import 'accordin.dart';
import 'accordin2.dart';
import 'accordin3.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/app.png"), fit: BoxFit.cover)),
        ),
        const Accordion(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            title: 'Dashboard',
            child: Column(
              children: [
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'Accounting',
                  child: Accordion2(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion2(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'HRM',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'CRM',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion3(
                  title: 'Project',
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'POS',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        const Accordion(
            icon: Icon(
              Icons.perm_identity_rounded,
              color: Colors.green,
            ),
            title: 'HRM System',
            child: Column(
              children: [
                Accordion3(
                  title: 'Project',
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'HRM',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'CRM',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'CRM',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'POS',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'POS',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'POS',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
                Accordion3(
                  title: 'Project',
                ),
                Accordion3(
                  title: 'Project',
                ),
                Accordion3(
                  title: 'Project',
                ),
                Accordion3(
                  title: 'Project',
                ),
                Accordion3(
                  title: 'Project',
                ),
                Accordion3(
                  title: 'Project',
                ),
                Accordion2(
                  icon: Icon(Icons.add),
                  title: 'POS',
                  child: Accordion(
                    icon: Icon(Icons.add),
                    title: 'Level3',
                    child: Column(
                      children: [
                        Accordion(
                          icon: Icon(Icons.add),
                          title: 'Level4',
                          child: Text('Level4 content'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        const Accordion(
          icon: Icon(
            Icons.format_shapes,
            color: Colors.green,
          ),
          title: 'Accounting System',
          child: Text('Level2 content'),
        ),
        Accordion(
          icon: Icon(Icons.add),
          title: 'Level2',
          child: Text('Level2 content'),
        ),
        Accordion(
          icon: Icon(Icons.add),
          title: 'Level2',
          child: Text('Level2 content'),
        ),
        Accordion(
          icon: Icon(Icons.add),
          title: 'Level2',
          child: Text('Level2 content'),
        ),
      ],
    );
  }
}
