import 'package:babymeal/dependencies_config.dart';
import 'package:babymeal/services/db.service.dart';
import 'package:babymeal/widgets/dashboard/dashboard_item.widget.dart';
import 'package:flutter/material.dart';

class DashboardContentWidget extends StatelessWidget {
  const DashboardContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DashboardItem(
                flex: 3,
                title: '4',
                subtitle: 'Feeding logs',
              ),
              DashboardItem(
                flex: 2,
                title: '2',
                subtitle: 'Schedule',
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DashboardItem(
                flex: 2,
                title: '1',
                subtitle: 'Mood',
              ),
              DashboardItem(
                flex: 3,
                title: '12',
                subtitle: 'Growth',
              ),
            ],
          ),
          Text(
            'Today',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          NewItemsWidget(),
        ],
      ),
    );
  }
}

class NewItemsWidget extends StatelessWidget {
  const NewItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt.get<DbService>().feedings,
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Expanded(
            child: ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.feed),
                  title: Text(snapshot.data[index].date),
                );
              },
            ),
          );
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
