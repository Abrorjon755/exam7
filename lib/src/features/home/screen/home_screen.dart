import 'package:exam7/src/common/model/coin_model.dart';
import 'package:exam7/src/common/utils/context_extension.dart';
import 'package:exam7/src/features/home/data/home_repository.dart';
import 'package:exam7/src/features/home/screen/home_app_bar.dart';
import 'package:exam7/src/features/home/screen/home_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Crypto> coins = [];

  void getCoins() {
    coins = [];
    final result = HomeRepository.getAll();
    coins.addAll(result);
  }

  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    getCoins();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: HomeAppBar(),
      ),
      body: DefaultTabController(
        length: 3,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.lang.date,
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.colors.onSecondaryContainer,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    context.lang.forYouToday,
                    style: context.textTheme.titleLarge?.copyWith(
                      color: context.colors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 20),
                  for (int i = 0; i < 3; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              context.colors.inverseSurface,
                              context.colors.onInverseSurface,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: SizedBox(
                          height: 185,
                          width: 330,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  context.lang.stableIncome,
                                  style: context.textTheme.titleLarge?.copyWith(
                                      color: context.colors.onPrimary,
                                      fontWeight: FontWeight.w700),
                                ),
                                const Spacer(),
                                Text(
                                  context.lang.lowRisk,
                                  style:
                                      context.textTheme.titleMedium?.copyWith(
                                    color: context.colors.onPrimary,
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          context.lang.percent,
                                          style: context.textTheme.titleLarge
                                              ?.copyWith(
                                            color: context.colors.onPrimary,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          context.lang.perYear,
                                          style: context.textTheme.titleMedium
                                              ?.copyWith(
                                            color: context.colors.onPrimary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                          context.colors.onPrimary,
                                        ),
                                        padding: const WidgetStatePropertyAll(
                                          EdgeInsets.symmetric(
                                            vertical: 11,
                                            horizontal: 35,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        context.lang.view,
                                        style: context.textTheme.titleLarge
                                            ?.copyWith(
                                          color: context.colors.primary,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.lang.investingStrategies,
                    style: context.textTheme.titleLarge?.copyWith(
                      color: context.colors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: HomeCard(
                          text: context.lang.theBigLong,
                          percent: "15.16%",
                          plus: "+3",
                          color1: context.myColors.gradient1,
                          color2: context.myColors.gradient2,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: HomeCard(
                          text: context.lang.aggressiveGrowth,
                          percent: "159%",
                          plus: "+2",
                          color1: context.myColors.gradient3,
                          color2: context.myColors.gradient4,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: HomeCard(
                          text: context.lang.bestProjects,
                          percent: "46.22%",
                          plus: "+12",
                          color1: context.myColors.gradient5,
                          color2: context.myColors.gradient6,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: HomeCard(
                          text: context.lang.strategy,
                          percent: "26.08%",
                          plus: "+2",
                          color1: context.myColors.gradient7,
                          color2: context.myColors.gradient8,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    context.lang.coinList,
                    style: context.textTheme.titleLarge?.copyWith(
                      color: context.colors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: TabBar(
                overlayColor: WidgetStateColor.transparent,
                tabAlignment: TabAlignment.start,
                dividerHeight: 0,
                labelPadding: const EdgeInsets.only(left: 20),
                isScrollable: true,
                indicatorColor: WidgetStateColor.transparent,
                physics: const BouncingScrollPhysics(),
                onTap: (value) {
                  setState(() {
                    activeIndex = value;
                  });
                },
                tabs: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: activeIndex == 0
                          ? context.colors.primary
                          : context.colors.onPrimary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      child: Text(
                        "🔥 ${context.lang.trending}",
                        style: context.textTheme.titleLarge?.copyWith(
                          color: activeIndex == 0
                              ? context.colors.onPrimary
                              : context.colors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: activeIndex == 1
                          ? context.colors.primary
                          : context.colors.onPrimary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      child: Text(
                        "📺 ${context.lang.watchlist}",
                        style: context.textTheme.titleLarge?.copyWith(
                          color: activeIndex == 1
                              ? context.colors.onPrimary
                              : context.colors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: activeIndex == 2
                          ? context.colors.primary
                          : context.colors.onPrimary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      child: Text(
                        "❤️ ${context.lang.favorites}",
                        style: context.textTheme.titleLarge?.copyWith(
                          color: activeIndex == 2
                              ? context.colors.onPrimary
                              : context.colors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            for (var e in coins)
              ListTile(
                leading: Image(
                  image: AssetImage(e.image),
                ),
                title: Text(
                  e.name,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: context.colors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  e.subname,
                  style: context.textTheme.titleSmall?.copyWith(
                    color: context.colors.onSecondaryContainer,
                  ),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      e.price,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.colors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      e.change,
                      style: context.textTheme.titleSmall?.copyWith(
                        color: e.change.startsWith('-')
                            ? context.colors.onError
                            : context.colors.error,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
