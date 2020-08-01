import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class _RefreshControllerCreator {
  const _RefreshControllerCreator();

  RefreshController call({bool initialRefresh = false}) =>
      use(_RefreshControllerHook(initialRefresh));
}

const useRefreshController = _RefreshControllerCreator();

class _RefreshControllerHook extends Hook<RefreshController> {
  final bool initialRefresh;

  const _RefreshControllerHook(this.initialRefresh);

  @override
  HookState<RefreshController, Hook<RefreshController>> createState() =>
      _RefreshControllerHookState();
}

class _RefreshControllerHookState
    extends HookState<RefreshController, _RefreshControllerHook> {
  RefreshController _refreshController;

  @override
  void initHook() {
    super.initHook();
    _refreshController =
        RefreshController(initialRefresh: hook.initialRefresh ?? false);
  }

  @override
  RefreshController build(BuildContext context) => _refreshController;

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }
}
