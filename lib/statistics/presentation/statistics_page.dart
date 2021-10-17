import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:words_native/core/presentation/app_bar.dart';
import 'package:words_native/core/presentation/drawer_widget.dart';
import 'package:words_native/core/presentation/routes/app_router.gr.dart';
import 'package:words_native/core/presentation/toasts.dart';
import 'package:words_native/generated/l10n.dart';
import 'package:words_native/statistics/domain/statistics_notifier.dart';
import 'package:words_native/statistics/presentation/stat_card.dart';
import 'package:words_native/statistics/presentation/stat_table.dart';
import 'package:words_native/statistics/shared/providers.dart';

class StatisticsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StatisticsPageState();
  }
}

class StatisticsPageState extends State<StatisticsPage> {
  @override
  void initState() {
    super.initState();
    // ref
    //     .read(repoDetailNotifierProvider.notifier)
    //     .getRepoDetail(widget.repo.fullName);
    Future.microtask(
      () => context.read(statisticsNotifierProvider.notifier).getStatistics(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final state = ref(statisticsNotifierProvider);
      return ProviderListener<StatisticsState>(
        onChange: (context, state) {
          state.maybeWhen(
            loadSuccess: (statistics) {
              if (!statistics.isFresh) {
                showNoConnectionToast(
                  S.of(context).offline_info,
                  context,
                );
              }
            },
            orElse: () {},
          );
        },
        provider: statisticsNotifierProvider,
        child: Scaffold(
          appBar: AppBarWidget(
            header: S.of(context).statistics_title,
            showBackButton: true,
          ),
          drawer: const DrawerWidget(),
          body: state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (_) {
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      S.of(context).statistics_header,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    StatCard(
                      iconData: Icon(MdiIcons.accountMultiple,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 45),
                      value: _.statistic.entity.users_count,
                      description: Text(
                        S.of(context).users_count,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    GestureDetector(
                      onTap: () => AutoRouter.of(context).push(
                        const ListAllWordsRoute(),
                      ),
                      child: StatCard(
                        iconData: Icon(MdiIcons.cards,
                            color: Theme.of(context).accentColor, size: 45),
                        value: _.statistic.entity.all,
                        description: Text(S.of(context).all),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    GestureDetector(
                      onTap: () => AutoRouter.of(context).push(
                        const ListUnknownWordsRoute(),
                      ),
                      child: StatCard(
                        iconData: Icon(MdiIcons.eyeOff,
                            color:
                                Theme.of(context).colorScheme.secondaryVariant,
                            size: 45),
                        value: _.statistic.entity.not_dones,
                        description: Text(S.of(context).not_dones),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    GestureDetector(
                      onTap: () => AutoRouter.of(context).push(
                        const ListKnownWordsRoute(),
                      ),
                      child: StatCard(
                        iconData: Icon(MdiIcons.school,
                            color: Theme.of(context).colorScheme.secondary,
                            size: 45),
                        value: _.statistic.entity.dones,
                        description: Text(S.of(context).dones),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    StatCard(
                      iconData: Icon(MdiIcons.eyeCircle,
                          color: Theme.of(context).accentColor, size: 45),
                      value: _.statistic.entity.total_views,
                      description: Text(S.of(context).total_views),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    StatCard(
                      iconData: Icon(MdiIcons.cardsOutline,
                          color: Theme.of(context).colorScheme.secondaryVariant,
                          size: 45),
                      value: _.statistic.entity.updated_this_month,
                      description: Text(S.of(context).updated_this_month),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    StatCard(
                      iconData: Icon(MdiIcons.update,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 45),
                      value: _.statistic.entity.updated_today,
                      description: Text(S.of(context).updated_today),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      S.of(context).most_viewed,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    StatTable(
                      words: _.statistic.entity.most_viewed,
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      S.of(context).added_today,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    StatTable(
                      words: _.statistic.entity.added_today,
                    ),
                  ],
                ),
              );
            },
            loadFailure: (_) => Center(
              child: Text(_.failure.toString()),
            ),
          ),
        ),
      );
    });
  }
}
