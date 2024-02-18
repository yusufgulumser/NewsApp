class NewsArticle {
  NewsArticle(
      {required this.title,
      required this.description,
      required this.category,
      required this.imgUrl});
  String title;
  String description;
  String category;
  String imgUrl;
  static List<NewsArticle> newsArticle = [
    NewsArticle(
        title:
            'Naomi Osaka withdraws from French Open, cites mental health concerns',
        description:
            "Japanese tennis star Naomi Osaka has withdrawn from the French Open citing mental health concerns. Osaka's decision comes after she was fined for not speaking to the media following her first-round win.",
        category: 'sports',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/NaomiOsaka-smile-2020_%28cropped_tight%29.png/330px-NaomiOsaka-smile-2020_%28cropped_tight%29.png'),
    NewsArticle(
        title:
            'COVID-19 booster shots recommended for all adults, CDC advisers say',
        description:
            "Advisers to the Centers for Disease Control and Prevention (CDC) have recommended COVID-19 booster shots for all adults, citing concerns about waning immunity and the spread of the Omicron variant.",
        category: 'health',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Coronavirus._SARS-CoV-2.png/330px-Coronavirus._SARS-CoV-2.png'),
    NewsArticle(
        title: 'Google announces plan to phase out third-party cookies by 2023',
        description:
            "Google has announced its plan to phase out third-party cookies on its Chrome browser by 2023, marking a significant shift in online advertising and privacy practices. The move aims to improve user privacy while still enabling targeted advertising.",
        category: 'technology',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Googleplex_HQ_%28cropped%29.jpg/375px-Googleplex_HQ_%28cropped%29.jpg'),
    NewsArticle(
        title:
            'Ukraine declares state of emergency amid escalating tensions with Russia',
        description:
            "Ukraine has declared a state of emergency amid escalating tensions with Russia over the conflict in eastern Ukraine. The move comes as both countries continue to exchange accusations of military buildup and aggression.",
        category: 'politics',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/2014-03-09_-_Perevalne_military_base_-_0162.JPG/261px-2014-03-09_-_Perevalne_military_base_-_0162.JPG'),
    NewsArticle(
        title: 'Tom Brady Announces Retirement from Professional Footbal',
        description:
            "Legendary NFL quarterback Tom Brady has announced his retirement from professional football after 22 seasons. Brady leaves behind a storied career that includes seven Super Bowl championships and numerous records.",
        category: 'sports',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Tom_Brady_2021.png/330px-Tom_Brady_2021.png'),
    NewsArticle(
        title: "Tesla's Elon Musk Becomes World's Richest Person",
        description:
            "Tesla CEO Elon Musk has surpassed Amazon founder Jeff Bezos to become the world's richest person, according to the Bloomberg Billionaires Index. Musk's net worth soared as Tesla's stock price surged amid strong demand for electric vehicles.",
        category: 'technology',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Elon_Musk_Colorado_2022_%28cropped2%29.jpg/330px-Elon_Musk_Colorado_2022_%28cropped2%29.jpg'),
    NewsArticle(
        title:
            "US Congress Passes 1.5 Trillion Spending Bill, Avoids Government Shutdown",
        description:
            "The U.S. Congress has passed a 1.5 trillion omnibus spending package, averting a government shutdown. The bill includes funding for various government agencies and programs, as well as provisions addressing key issues such as pandemic relief and defense spending.",
        category: 'politics',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Seal_of_the_United_States_Congress.svg/255px-Seal_of_the_United_States_Congress.svg.png'),
    NewsArticle(
        title: ' Simone Biles Makes History with Yurchenko Double Pike Vault',
        description:
            "Gymnastics superstar Simone Biles made history by successfully executing a Yurchenko double pike vault at the U.S. Classic competition. Biles became the first woman to perform this challenging vault in competition, further solidifying her status as one of the greatest gymnasts of all time.",
        category: 'sports',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Simone_Biles_Rio_2016e.jpg/330px-Simone_Biles_Rio_2016e.jpg'),
    NewsArticle(
        title:
            "New Study Finds Link Between Air Pollution and Alzheimer's Disease",
        description:
            "A new study published in the journal Alzheimer's & Dementia suggests a potential link between long-term exposure to air pollution and an increased risk of Alzheimer's disease. Researchers found that individuals living in areas with higher levels of air pollution had greater cognitive decline over time.",
        category: 'health',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Alzheimer%27s_disease_brain_comparison.jpg/450px-Alzheimer%27s_disease_brain_comparison.jpg'),
    NewsArticle(
        title: "Microsoft Acquires Activision Blizzard in 68.7 Billion Deal",
        description:
            "Tech giant Microsoft has announced its acquisition of video game company Activision Blizzard in a deal worth 68.7 billion. The acquisition marks Microsoft's largest-ever purchase and positions the company as a major player in the gaming industry.",
        category: 'technology',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Building92microsoft.jpg/375px-Building92microsoft.jpg'),
    NewsArticle(
        title: "Turkey Faces Escalating Inflation Woes",
        description:
            "Turkey confronts a surge in inflation, driven by currency depreciation and global economic factors. Rising consumer prices strain households and businesses, prompting calls for effective government action to stabilize the economy amidst ongoing challenges.",
        category: 'politics',
        imgUrl:
            'https://www.economist.com/cdn-cgi/image/width=834,quality=80,format=auto/media-assets/image/20220716_EUP505.jpg')
  ];
}
