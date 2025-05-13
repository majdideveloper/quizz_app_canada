import 'package:flutter/material.dart';
import 'package:quizz_app_canada/features/auth/domain/entities/user_entity.dart';
import 'package:quizz_app_canada/features/course/presentation/pages/courses_page.dart';
import 'package:quizz_app_canada/features/resource/presentation/widgets/resources_list.dart';
import 'home_dashboard_page.dart';
import 'profile_page.dart';

class DashboardUserPage extends StatefulWidget {
  final UserEntity user;
  const DashboardUserPage({super.key, required this.user});

  @override
  State<DashboardUserPage> createState() => _DashboardUserPageState();
}

class _DashboardUserPageState extends State<DashboardUserPage> {
  int _selectedIndex = 0;

  List<Widget> get _pages => [
        HomeDashboardPage(
          user: widget.user,
        ),
        CoursesPage(),
        HomeDashboardPage(
          user: widget.user,
        ),
        ResourcesList(),
        ProfilePage(user: widget.user),
      ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Quzzies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Resources',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '__Profile',
          ),
        ],
      ),
    );
  }
}
