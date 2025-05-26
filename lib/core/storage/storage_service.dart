abstract class StorageService {
  /// Uploads a file to the given bucket and path. Returns the public URL or throws on error.
  Future<String> uploadFile({
    required String bucket,
    required String path,
    required List<int> bytes,
    required String contentType,
  });

  /// Updates (replaces) a file at the given bucket and path. Returns the public URL or throws on error.
  Future<String> updateFile({
    required String bucket,
    required String path,
    required List<int> bytes,
    required String contentType,
  });

  /// Deletes a file at the given bucket and path.
  Future<void> deleteFile({
    required String bucket,
    required String path,
  });

  /// Downloads a file from the given bucket and path. Returns the bytes.
  Future<List<int>> downloadFile({
    required String bucket,
    required String path,
  });
}
