import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/locale_cubit/locale_cubit.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ProfileHeader(
                  user: user,
                ),
                SizedBox(height: 20),
                PerformanceOverviewCard(),
                SizedBox(height: 24),
                SettingsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final UserEntity user;
  const ProfileHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          // backgroundImage: AssetImage('assets/avatar.png'),
        ),
        Text(user.name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text(user.email, style: TextStyle(color: Colors.grey)),
        EditProfileButton(),
      ],
    );
  }
}

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: const Text('Edit Profile'),
    );
  }
}

class PerformanceOverviewCard extends StatelessWidget {
  const PerformanceOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            StatItem(label: 'Quizzes Taken', value: '47'),
            StatItem(label: 'Average Score', value: '85%'),
            StatItem(label: 'Highest Score', value: '98%'),
          ],
        ),
      ),
    );
  }
}

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
