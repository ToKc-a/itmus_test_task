class FilterModel {
  final int filterId;
  final String filterTitle;
  bool isSelect;

  FilterModel(
      {required this.filterId,
      required this.filterTitle,
      this.isSelect = false});
}
