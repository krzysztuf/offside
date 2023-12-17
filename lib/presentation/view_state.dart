class ViewState {
  String? error;

  ViewState({this.error});

  bool get hasError => error != null;
}
