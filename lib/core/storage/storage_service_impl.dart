import 'package:supabase_flutter/supabase_flutter.dart';
import 'storage_service.dart';
import 'package:quizz_app_canada/core/utils/logger.dart';
import 'dart:typed_data';

class SupabaseStorageService implements StorageService {
  final SupabaseClient client;
  SupabaseStorageService({required this.client});

  @override
  Future<String> uploadFile({
    required String bucket,
    required String path,
    required List<int> bytes,
    required String contentType,
  }) async {
    AppLogger.logger.i('Uploading file to: $bucket/$path');
    final storage = client.storage.from(bucket);
    try {
      final res = await storage.uploadBinary(path, Uint8List.fromList(bytes),
          fileOptions: FileOptions(contentType: contentType, upsert: true));
      final publicUrl = storage.getPublicUrl(path);
      AppLogger.logger.i('File uploaded. Public URL: $publicUrl');
      return publicUrl;
    } catch (e, stack) {
      AppLogger.logger.e('Error uploading file', error: e, stackTrace: stack);
      rethrow;
    }
  }

  @override
  Future<void> deleteFile(
      {required String bucket, required String path}) async {
    AppLogger.logger.i('Deleting file at: $bucket/$path');
    final storage = client.storage.from(bucket);
    try {
      await storage.remove([path]);
      AppLogger.logger.i('File deleted: $bucket/$path');
    } catch (e, stack) {
      AppLogger.logger.e('Error deleting file', error: e, stackTrace: stack);
      rethrow;
    }
  }

  @override
  Future<List<int>> downloadFile(
      {required String bucket, required String path}) async {
    AppLogger.logger.i('Downloading file from: $bucket/$path');
    final storage = client.storage.from(bucket);
    try {
      final data = await storage.download(path);
      AppLogger.logger.i('File downloaded: $bucket/$path');
      return data;
    } catch (e, stack) {
      AppLogger.logger.e('Error downloading file', error: e, stackTrace: stack);
      rethrow;
    }
  }

  @override
  Future<String> updateFile({
    required String bucket,
    required String path,
    required List<int> bytes,
    required String contentType,
  }) async {
    AppLogger.logger.i('Updating file at: $bucket/$path');
    final storage = client.storage.from(bucket);
    try {
      final res = await storage.updateBinary(path, Uint8List.fromList(bytes),
          fileOptions: FileOptions(contentType: contentType, upsert: true));
      final publicUrl = storage.getPublicUrl(path);
      AppLogger.logger.i('File updated. Public URL: $publicUrl');
      return publicUrl;
    } catch (e, stack) {
      AppLogger.logger.e('Error updating file', error: e, stackTrace: stack);
      rethrow;
    }
  }
}
