class ViewState {
  String? error;

  bool loading;

  ViewState({this.error, this.loading = false});

  bool get hasError => error != null;
}
