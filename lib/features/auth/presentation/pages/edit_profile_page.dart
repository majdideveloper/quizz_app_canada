import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quizz_app_canada/features/auth/domain/entities/user_entity.dart';
import 'dart:io';

class EditProfilePage extends StatefulWidget {
  final UserEntity? user;
  const EditProfilePage({super.key, this.user});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  File? _imageFile;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() => _imageFile = File(pickedFile.path));
    }
  }

  void _saveProfile() {
    final name = _nameController.text.trim();
    final email = _emailController.text.trim();

    // TODO: Add your logic here to save profile info to Supabase or your backend

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Profile updated successfully!')),
    );
  }

  @override
  void initState() {
    _nameController.text = widget.user?.name ?? '';
    _emailController.text = widget.user?.email ?? '';
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile Image
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 48,
                backgroundColor: theme.colorScheme.primary.withOpacity(0.1),
                backgroundImage:
                    _imageFile != null ? FileImage(_imageFile!) : widget.user?.avatarUrl != null
                        ? NetworkImage(widget.user!.avatarUrl!)
                        : null,
                child: _imageFile == null && widget.user?.avatarUrl == null
                    ? Icon(Icons.person,
                        size: 48, color: theme.colorScheme.primary)
                    : null,
              ),
            ),
            const SizedBox(height: 20),

            // Name Field
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Email Field
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // Save Button
            ElevatedButton.icon(
              onPressed: _saveProfile,
              icon: const Icon(Icons.save),
              label: const Text('Save'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
