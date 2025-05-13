import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/core/theme/theme_app.dart';
import 'package:quizz_app_canada/core/widgets/dashboard_header.dart';
import '../../domain/entities/resource_entity.dart';
import '../cubit/resource_cubit.dart';

class ResourcesList extends StatelessWidget {
  const ResourcesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResourceCubit, ResourceState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text("Initializing...")),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text("Error: $message")),
          loaded: (resources) => _buildContent(context, resources),
        );
      },
    );
  }
  //! rewrite this page with classs not widget builder

  Widget _buildContent(BuildContext context, List<ResourceEntity> resources) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: theme.colorScheme.surface,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardHeader(
                title: 'Resources',
                subtitle: 'Access study materials and resources',
              ),
              Divider(
                height: 1,
                color: theme.colorScheme.primary.withOpacity(0.2),
              ),
              _buildFilterChips(),
              const SizedBox(height: 12),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.6,
                  ),
                  itemCount: resources.length,
                  itemBuilder: (context, index) =>
                      _buildCard(resources[index], context),
                ),
              ),
            ],
          )),
    );
  }

  // Widget _buildFilterChips() {
  //   final types = ['All', 'PDFs', 'Links', 'Images', 'Videos'];
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 12.0),
  //     child: Wrap(
  //       spacing: 8,
  //       children: types
  //           .map((type) => FilterChip(
  //                 label: Text(type),
  //                 selected: false,
  //                 onSelected: (_) {}, // implement later
  //               ))
  //           .toList(),
  //     ),
  //   );
  // }

  Widget _buildFilterChips() {
    final types = ['All', 'PDFs', 'Links', 'Images', 'Videos'];

    return Container(
      height: 60, 
      color: Colors.white,
      child: Padding(
        padding: AppSpacing.sectionMargin,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          itemCount: types.length,
          separatorBuilder: (_, __) => const SizedBox(width: 8),
          itemBuilder: (context, index) {
            final type = types[index];
            return FilterChip(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              label: Text(type),
              selected: false,
              onSelected: (_) {
                // TODO: implement filter logic
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildCard(ResourceEntity resource, BuildContext context) {
    final theme = Theme.of(context);
    final isPdf = resource.type == 'pdf';
    final isLink = resource.type == 'link';
    final isImage = resource.type == 'image';
    final isVideo = resource.type == 'video';

    final icon = isPdf
        ? Icons.picture_as_pdf
        : isLink
            ? Icons.link
            : isImage
                ? Icons.image
                : Icons.video_library;

    final ctaLabel = isPdf
        ? 'Download PDF'
        : isLink
            ? 'Open Link'
            : isImage
                ? 'View Image'
                : 'Watch Video';

    return Card(
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (resource.thumbnailUrl != null)
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                resource.thumbnailUrl!,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            )
          else
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                color: Colors.white,
              ),
              child: Center(child: Icon(icon, size: 40)),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(resource.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(resource.description,
                maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              // icon: Icon(icon, size: 16),
              child: Text(ctaLabel,
                  style: TextStyle(
                    fontSize: 12,
                    color: isPdf ? Colors.white : theme.colorScheme.primary,
                  )),
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isPdf ? theme.colorScheme.secondary : Color(0xFFF9F9F9),
                minimumSize: const Size(double.infinity, 36),
              ),
              onPressed: () {
                // TODO: Handle resource open/download
              },
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
