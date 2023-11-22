// import 'dart:convert';
//
// import 'package:flutter/services.dart';
// import 'package:offside/core/extensions/iterable_extensions.dart';
// import 'package:offside/domain/models/team.dart';
// import 'package:offside/domain/repositories/teams_repository.dart';
//
// class TeamsInMemory {
//   late final List<Team>? _teams;
//
//   List<Team> get teams => _teams!;
//
//   @override
//   Future<void> add(Team item) {
//     // TODO: implement add
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<List<Team>> all() async {
//     await _maybeLoadFromAssets();
//     return teams;
//   }
//
//   @override
//   Future<Team?> byId({required int id}) async {
//     await _maybeLoadFromAssets();
//     return teams.find((t) => t.id == id);
//   }
//
//   @override
//   Future<void> clear() {
//     // TODO: implement clear
//     throw UnimplementedError();
//   }
//
//   @override
//   Future<void> remove(Team item) {
//     // TODO: implement remove
//     throw UnimplementedError();
//   }
// }
