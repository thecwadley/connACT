import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'join_games_widget.dart' show JoinGamesWidget;
import 'package:flutter/material.dart';

class JoinGamesModel extends FlutterFlowModel<JoinGamesWidget> {
  ///  Local state fields for this page.

  List<GameRecord> sortedgames = [];
  void addToSortedgames(GameRecord item) => sortedgames.add(item);
  void removeFromSortedgames(GameRecord item) => sortedgames.remove(item);
  void removeAtIndexFromSortedgames(int index) => sortedgames.removeAt(index);
  void insertAtIndexInSortedgames(int index, GameRecord item) =>
      sortedgames.insert(index, item);
  void updateSortedgamesAtIndex(int index, Function(GameRecord) updateFn) =>
      sortedgames[index] = updateFn(sortedgames[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
