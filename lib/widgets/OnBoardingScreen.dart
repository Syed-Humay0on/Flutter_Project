import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageindex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index){
                    setState(() {
                      _pageindex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnBoardingContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    demo_data.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: dotindicator(isActive: index == _pageindex),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            curve: Curves.ease,
                            duration: const Duration(milliseconds: 300));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: SvgPicture.string(
                        '<svg height="800px" width="800px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" xml:space="preserve"><path style="fill:#2D2D2D;" d="M256,0C114.608,0,0,114.608,0,256c0,141.376,114.608,256,256,256s256-114.624,256-256C512,114.608,397.392,0,256,0z"/><polygon style="fill:#FFFFFF;" points="214.656,95.936 378.016,256 214.656,416.064 165.856,366.096 278.208,256 165.856,145.904 "/></svg>',

                        // "../../web/assets/right-arrow-next-svgrepo-com.svg",
                        
                        // height: 24,
                        fit: BoxFit.cover,  
                        // clipBehavior: Clip.hardEdge,
                        // clipBehavior: Clip.hardEdge,    
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class dotindicator extends StatelessWidget {
  const dotindicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Theme.of(context).primaryColor.withOpacity(0.4),
        borderRadius: isActive ? BorderRadius.zero : BorderRadius.circular(0),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}

// ignore: non_constant_identifier_names
final List<Onboard> demo_data = [
  Onboard(
    image: "../../web/assets/pngegg.png",
    title: "Find the perfect \n asset you're looking for",
    description:
        "Here You'll see rich variety of assets \n carefully classified for seamless browsing experience.",
  ),
  Onboard(
    image: "../../web/assets/Collab.png",
    title: "Collab with Team Leads and Devs \n Get creative and sharp together",
    description:
        "Meet individuals with your own liking of expertise \n Grow and Evolve together as Team.",
  ),
  Onboard(
    image: "../../web/assets/Teams.png",
    title: "Stand out from the Others \n Master the art of Perfection",
    description:
        "Solidify your team and skillset \n think critically with Confidence.",
  ),
];

class OnBoardingContent extends StatelessWidget {
  // ignore: use_super_parameters
  const OnBoardingContent(
      {Key? key,
      required this.image,
      required this.title,
      required this.description})
      : super(key: key);
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          const Spacer(),
          Image.asset(
            image,
            height: 250,
          ),
          const Spacer(),
          Text(title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w500)),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ]);
  }
}
