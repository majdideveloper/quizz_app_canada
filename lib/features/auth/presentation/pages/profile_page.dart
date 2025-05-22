import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/locale_cubit/locale_cubit.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/core/widgets/secondry_button.dart';
import 'package:quizz_app_canada/features/auth/domain/entities/user_entity.dart';
import 'package:quizz_app_canada/features/auth/presentation/cubit/auth_cubit.dart';

class ProfilePage extends StatelessWidget {
  final UserEntity user;
  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is Unauthenticated) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil('/home', (route) => false);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileHeader(
                  user: user,
                ),
                Container(
                  padding: AppSpacing.screenPadding,
                  color: Theme.of(context).colorScheme.surface,
                  child: Column(
                    children: [
                      SettingsList(),
                      const SizedBox(height: 16),

                      // Account Settings
                      buildSectionTitle('Account Settings'),
                      buildListTile('Language', Icons.language, () {}, context),
                      Divider(
                        height: 0,
                        color: Theme.of(context).colorScheme.surface,
                        thickness: 3,
                      ),
                      buildListTile(
                          'Notifications', Icons.notifications, () {}, context),
                      buildListTile(
                          'Display Theme', Icons.dark_mode, () {}, context),
                      buildListTile(
                          'Practice Reminders', Icons.alarm, () {}, context),
                      buildListTile('Quiz Difficulty', Icons.videogame_asset,
                          () {}, context),
                      buildListTile('Downloaded Materials', Icons.download,
                          () {}, context),

                      // Security
                      buildSectionTitle('Security'),
                      buildListTile(
                          'Change Password', Icons.lock, () {}, context),
                      buildListTile('Two-Factor Authentication', Icons.security,
                          () {}, context),
                      buildListTile(
                          'Linked Devices', Icons.devices, () {}, context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget buildListTile(String title, IconData icon, void Function()? onTap,
      BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: ListTile(
        tileColor: Theme.of(context)
            .colorScheme
            .background, //!change the widget in the class ...
        leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  Widget buildActivityCard(String title, String date, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(date,
                    style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final UserEntity user;
  const ProfileHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 200,
      color: theme.colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(user.avatarUrl!),
          ),
          Text(user.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(user.email, style: TextStyle(color: Colors.grey)),
          Padding(
            padding: AppSpacing.sectionMargin,
            child: SecondryButton(
              text: 'Edit Profile',
              color: theme.colorScheme.primary,
              onPressed: () => Navigator.pushNamed(
                context,
                '/edit_profile_page',
                arguments: user,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class PerformanceOverviewCard extends StatelessWidget {
//   const PerformanceOverviewCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: const [
//             StatItem(label: 'Quizzes Taken', value: '47'),
//             StatItem(label: 'Average Score', value: '85%'),
//             StatItem(label: 'Highest Score', value: '98%'),
//           ],
//         ),
//       ),
//     );
//   }
// }

class StatItem extends StatelessWidget {
  final String label;
  final String value;

  const StatItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple)),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    final localeCubit = context.read<LocaleCubit>();
    return Column(
      children: [
        SettingsTile(
          icon: Icons.translate,
          title: 'Language Preferences',
          onTap: () {
            if (localeCubit.state == const Locale('en')) {
              localeCubit.switchToFrench();
            } else {
              localeCubit.switchToEnglish();
            }
          },
        ),
        SettingsTile(
          icon: Icons.dark_mode,
          title: 'Dark Mode',
          onTap: () => context.read<ThemeCubit>().toggleTheme(),
        ),
        SettingsTile(icon: Icons.account_box, title: 'Account Details'),
        SettingsTile(
          icon: Icons.question_answer,
          title: 'FAQ',
          onTap: () => Navigator.pushNamed(
            context,
            '/fags_list_page',
            //! need to fix all FAQ here
          ),
        ),
        SettingsTile(
          icon: Icons.logout,
          title: 'Sign Out',
          onTap: () => context.read<AuthCubit>().signOut(),
        ),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;

  final void Function()? onTap;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:quizz_app_canada/features/auth/domain/entities/user_entity.dart';

// class ProfilePage extends StatelessWidget {
//   final UserEntity user;
//   const ProfilePage({super.key, required this.user});

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           children: [
//             const SizedBox(height: 12),
//             CircleAvatar(
//               radius: 40,
//               backgroundColor: Colors.blue[100],
//               child: const Icon(Icons.person, size: 40),
//             ),
//             const SizedBox(height: 12),
//             const Text(
//               'John Smith',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//             ),
//             const SizedBox(height: 4),
//             const Text('john.smith@email.com',
//                 style: TextStyle(color: Colors.grey)),
//             const SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text('Edit Profile'),
//             ),

//             const SizedBox(height: 20),

//             // Course Completion
//             Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text('Course Completion'),
//                     const SizedBox(height: 8),
//                     LinearProgressIndicator(
//                       value: 0.75,
//                       backgroundColor: Colors.grey[300],
//                       color: Colors.orange,
//                     ),
//                     const SizedBox(height: 8),
//                     const Row(
//                       children: [
//                         Icon(Icons.quiz, color: Colors.orange),
//                         SizedBox(width: 8),
//                         Text('10/15 Quizzes Completed'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             const SizedBox(height: 16),

//             // Account Settings
//             buildSectionTitle('Account Settings'),
//             buildListTile('Language', Icons.language, () {}),
//             buildListTile('Notifications', Icons.notifications, () {}),
//             buildListTile('Display Theme', Icons.dark_mode, () {}),
//             buildListTile('Practice Reminders', Icons.alarm, () {}),
//             buildListTile('Quiz Difficulty', Icons.videogame_asset, () {}),
//             buildListTile('Downloaded Materials', Icons.download, () {}),

//             const SizedBox(height: 16),

//             // Security
//             buildSectionTitle('Security'),
//             buildListTile('Change Password', Icons.lock, () {}),
//             buildListTile('Two-Factor Authentication', Icons.security, () {}),
//             buildListTile('Linked Devices', Icons.devices, () {}),

//             const SizedBox(height: 16),

//             // Recent Activity
//             buildSectionTitle('Recent Activity'),
//             Row(
//               children: [
//                 Expanded(
//                     child: buildActivityCard('Circuit Basics PDF', '2 days ago',
//                         Icons.picture_as_pdf)),
//                 const SizedBox(width: 10),
//                 Expanded(
//                     child: buildActivityCard(
//                         'Safety Quiz', '3 days ago', Icons.school)),
//               ],
//             ),

//             const SizedBox(height: 24),
//             // Logout button
//             OutlinedButton(
//               onPressed: () {},
//               style: OutlinedButton.styleFrom(
//                 foregroundColor: Colors.red,
//                 side: const BorderSide(color: Colors.red),
//                 minimumSize: const Size.fromHeight(50),
//               ),
//               child: const Text('Log Out'),
//             ),

//             const SizedBox(height: 32),
//           ],
//         ),
//       ),
//     );
//   }
