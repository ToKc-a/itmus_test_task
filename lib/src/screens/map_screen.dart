import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itmus_test_task/src/screens/vacancy_detail_screen.dart';
import 'package:itmus_test_task/src/screens/widgets/cluster_icon_painter.dart';
import 'package:itmus_test_task/src/screens/widgets/map_point.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../domain/models/vacancy_model.dart';

class MapScreen extends StatefulWidget {
  final List<VacancyModel> vacancies;

  const MapScreen({super.key, required this.vacancies});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late final YandexMapController _mapController;

  var _mapZoom = 0.0;

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YandexMap(
        onMapCreated: (controller) async {
          _mapController = controller;
        },
        onCameraPositionChanged: (cameraPosition, _, __) {
          setState(() {
            _mapZoom = cameraPosition.zoom;
          });
        },
        mapObjects: [
          _getClusterizedCollection(
            placemarks: _getPlacemarkObjects(context, widget.vacancies),
          ),
        ],
      ),
    );
  }

  ClusterizedPlacemarkCollection _getClusterizedCollection({
    required List<PlacemarkMapObject> placemarks,
  }) {
    return ClusterizedPlacemarkCollection(
        mapId: const MapObjectId('clusterized-1'),
        placemarks: placemarks,
        radius: 50,
        minZoom: 15,
        onClusterAdded: (self, cluster) async {
          return cluster.copyWith(
            appearance: cluster.appearance.copyWith(
              opacity: 1.0,
              icon: PlacemarkIcon.single(
                PlacemarkIconStyle(
                  image: BitmapDescriptor.fromBytes(
                    await ClusterIconPainter(cluster.size)
                        .getClusterIconBytes(),
                  ),
                ),
              ),
            ),
          );
        },
        onClusterTap: (self, cluster) async {
          await _mapController.moveCamera(
            animation: const MapAnimation(
                type: MapAnimationType.linear, duration: 0.3),
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: cluster.placemarks.first.point,
                zoom: _mapZoom + 1,
              ),
            ),
          );
        });
  }
}

List<MapPoint> _getMapPoints(List<VacancyModel> vacancies) {
  List<MapPoint> points = [];
  var tempPointList = vacancies.where((element) => element.latitude != null);
  tempPointList.forEach((e) => points.add(MapPoint(
      name: e.vacancyId.toString(),
      latitude: e.latitude!,
      longitude: e.longitude!,
      vacancy: e)));
  print('Количество маркеров - ${points.length}');
  return points;
}

List<PlacemarkMapObject> _getPlacemarkObjects(
    BuildContext context, List<VacancyModel> vacancies) {
  return _getMapPoints(vacancies)
      .map(
        (point) => PlacemarkMapObject(
          mapId: MapObjectId('MapObject $point'),
          point: Point(latitude: point.latitude, longitude: point.longitude),
          opacity: 1,
          icon: PlacemarkIcon.single(
            PlacemarkIconStyle(
              image: BitmapDescriptor.fromAssetImage(
                'assets/icons/place.png',
              ),
              scale: 1,
            ),
          ),
          onTap: (_, __) =>
              Get.to(() => VacancyDetailScreen(vacancy: point.vacancy)),
        ),
      )
      .toList();
}

class _ModalBodyView extends StatelessWidget {
  const _ModalBodyView({required this.point});

  final MapPoint point;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(point.name, style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
          Text(
            '${point.latitude}, ${point.longitude}',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
