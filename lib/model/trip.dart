import 'package:travel_point/model/location.dart';

class Trip {
  String name;
  String tripPlan;
  String duration;
  String date;
  double price;
  List<String> inclusion;
  List<String> exclusion;
  double rating;
  String photoCover;
  List<String> urlPhoto;
  String category;
  Location location;
  bool favorite;

  Trip({
    required this.name,
    required this.tripPlan,
    required this.duration,
    required this.date,
    required this.price,
    required this.inclusion,
    required this.exclusion,
    required this.rating,
    required this.photoCover,
    required this.urlPhoto,
    required this.category,
    required this.location,
    required this.favorite,
  });
}

var tripList = [
  Trip(
    name: 'Tanah Lot Sunset',
    tripPlan:
        'Experience the best sunset view in Tanah Lot temple, enjoy pick up & drop off direct from all hotel located in surrounding area Seminyak - Kuta -Canggu - Kerobokan. Presented by professional tour driver on air conditioner vehicle with Free WiFi. Itinerary also tailored with visit scenic of Royal Taman Ayun Temple, visit coffee plantation and local lunch as optional at the west coast of Bali.',
    duration: '1 Day',
    date: '14 Ferbruary 2022',
    price: 20.5,
    inclusion: [
      'Enjoy at Coffee plantation',
      'Free WiFi',
      'Hotel pick up & Drop off',
      'Bottled water',
      'Air-conditioned vehicle',
      'All Fees and Taxes',
      'Insurance'
    ],
    exclusion: ['Lunch are optional'],
    rating: 5.0,
    photoCover: 'images/cover-bali.jpg',
    urlPhoto: [
      'https://youimg1.tripcdn.com/target/100f0s000000hhng97E03_C_760_506.jpg?proc=source%2ftrip',
      'https://youimg1.tripcdn.com/target/10060y000000m4ws7C949_C_760_506.jpg?proc=source%2ftrip',
      'https://youimg1.tripcdn.com/target/1A0t1a0000018mdhn61BB_C_760_506.jpg?proc=source%2ftrip',
      'https://youimg1.tripcdn.com/target/100q10000000ob7rh05AE_C_760_506.jpg?proc=source%2ftrip',
    ],
    category: 'Beach',
    location: Location(
      region: 'Asia',
      subRegion: 'Southeast Asia',
      country: 'Indonesia',
      location: 'Bali',
      address: 'Beraban, Kec. Kediri, Kabupaten Tabanan, Bali',
      latitude: -8.621213,
      longitude: 115.086807,
    ),
    favorite: true,
  ),
  Trip(
    name: 'N Seoul Tower',
    tripPlan:
        'The landmark of Seoul, a place for romantics, a radio transmission tower, and even a filming spot for Korean drama? N Seoul Tower is a tower with a difference that is loved by locals and tourists alike, an inseparable part of this beautiful metropolis. Originally built in 1971 as a radio and TV tower, it has become one of Seoul’s best-loved hotspots. Start your adventure by hopping on a cable car to reach the N Seoul Tower entry point (giving you a sneak preview of the views awaiting) or climbing up the hill on foot (if you’re feeling active).',
    duration: '1 Day',
    date: '19 Ferbruary 2022',
    price: 6.92,
    inclusion: [
      'N Tower ticket',
    ],
    exclusion: [
      'All personal expenses and expenses not mentioned in the inclusions'
    ],
    rating: 3.8,
    photoCover: 'images/cover-seoul.jpg',
    urlPhoto: [
      'https://ak-d.tripcdn.com/images/10050x000000lic2rB9B8_C_1136_640.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/100l0x000000l11n77C00_C_1136_640.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/tg/123/566/854/91c2d260ec1d4719939d36a64933e603_C_1136_640.jpg?proc=source/trip;namelogo/d_40',
    ],
    category: 'Mountain',
    location: Location(
      region: 'Asia',
      subRegion: 'Eastern Asia',
      country: 'South Korea',
      location: 'Seoul',
      address: '105 Namsangongwon-gil, Yongsan-gu, Seoul, Korea Selatan',
      latitude: 37.5511736,
      longitude: 126.9860379,
    ),
    favorite: true,
  ),
  Trip(
    name: 'Tower Bridge',
    tripPlan:
        'Over 100 years ago, the Victorians built a bridge that has become one of London\'s most famous landmarks. High level walkway were built to allow people to cross the Thames whilst the Bridge was lifted to let tall ships sail past. Today these Walkway act as viewing galleries, giving visitors the most spectacular views across an ever changing London skyline. Completed in 1894, Tower Bridge was instantly hailed as a London icon and one of the great engineering marvels of its age. Come inside to explore its history, uncover its secrets and to enjoy stunning views from its high-level Walkway, situated 42 metres above the River Thames. The Walkway offer fantastic views of many of London\'s most famous sights, including St Paul\'s Cathedral, sky-scraping Canary Wharf, maritime Greenwich and The London Eye. Special viewing windows make photography easy.Victorian Engine Rooms house the original steam engines, awesome machines whose immense power once raised the bascules of the bridge. A “virtual bridge lift” shows how the bascules still rise today to let ships pass beneath the Walkway.',
    duration: '1 Day',
    date: '28 Ferbruary 2022',
    price: 14.36,
    inclusion: [
      'Admission ticket',
    ],
    exclusion: [
      'All personal expenses and expenses not mentioned in the inclusions'
    ],
    rating: 5.0,
    photoCover: 'images/cover-tower-bridge.jpg',
    urlPhoto: [
      'https://ak-d.tripcdn.com/images/100b10000000o5v2z5A26_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/100v0y000000m9ho1466C_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/fd/tg/g5/M0B/F1/0A/CggYr1bzXLaAGo6OACaBSBVpCPc055_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/100g0p000000fwpomA7CE_Z_1000_0.jpg',
    ],
    category: 'History',
    location: Location(
      region: 'Europe',
      subRegion: 'West Europe',
      country: 'England',
      location: 'London',
      address: 'London, England',
      latitude: 51.5046656,
      longitude: -0.0893729,
    ),
    favorite: false,
  ),
  Trip(
    name: 'Harry Potter Tour of Warner Bros. Studio',
    tripPlan:
        'Delve into the magical world of Harry Potter™ at the Warner Bros. Studio Tour London, with round-trip luxury coach transport included. Follow in the footsteps of Hogwarts’ students as you walk around original sets like Diagon Alley and Platform 9 ¾, complete with the Hogwarts Express steam engine. Get up close to costumes and props, and discover the wizardry required to create the mind-blowing special effects and animatronics.',
    duration: '1 Day',
    date: '28 Ferbruary 2022',
    price: 6.80,
    inclusion: [
      'Return transfers in air-conditioned coach',
      'Entry ticket to Harry Potter Warner Bros Studio Tour London',
    ],
    exclusion: [
      'Food and drinks',
      'Gratuities',
      'Digital guide available in 10 different languages at additional cost',
    ],
    rating: 5.0,
    photoCover: 'images/cover-harry-potter.jpg',
    urlPhoto: [
      'https://ak-d.tripcdn.com/images/100b10000000o5v2z5A26_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/100v0y000000m9ho1466C_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/fd/tg/g5/M0B/F1/0A/CggYr1bzXLaAGo6OACaBSBVpCPc055_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/100g0p000000fwpomA7CE_Z_1000_0.jpg',
    ],
    category: 'History',
    location: Location(
      region: 'Europe',
      subRegion: 'West Europe',
      country: 'England',
      location: 'London',
      address: 'Studio Tour Dr, Leavesden, Watford WD25 7LR, England',
      latitude: 51.6882037,
      longitude: -0.4203355,
    ),
    favorite: false,
  ),
  Trip(
    name: 'Las Vegas Tour: Hoover Dam, Valley of Fire and Red Rock Canyon',
    tripPlan:
        'This tour covers attractions easily accessible from Las Vegas. At a reasonable price, you can enjoy: \n- Valley of Fire with its fiery colors and shapes\n- Hoover Dam, one of the largest dams in the world\n- Red Rock Canyon with its contrasting red rock faces and desert\nWe offer this fulfilling tour for you to escape from the city and have an amazing experience in the great nature. Your experienced guide will make sure you will have a great time and unforgettable experience!',
    duration: '1 Day',
    date: '18 March 2022',
    price: 150.00,
    inclusion: [
      'Round trip transportation from designated locations',
      'Guide/Driver',
      'Admission to Hoover Dam, Valley of Fire State Park, and Red Rock Canyon',
    ],
    exclusion: [
      'Lunch',
      'Gratuities',
    ],
    rating: 5.0,
    photoCover: 'images/cover-hoover-dam.jpg',
    urlPhoto: [
      'https://ak-d.tripcdn.com/images/350a13000000v6a6i0E1A_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/03560120008tloinmFE70_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://i0.wp.com/www.yourhikeguide.com/wp-content/uploads/DSC1197edit.jpg?fit=4000%2C2657&ssl=1',
      'https://a.cdn-hotels.com/gdcs/production47/d1734/bfd14564-507a-4ea2-8b90-1b57b9ff8676.jpg',
      'https://ak-d.tripcdn.com/images/03569120008u0sc7t28DA_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
    ],
    category: 'Mountain',
    location: Location(
      region: 'America',
      subRegion: 'North America',
      country: 'United States',
      location: 'Las Vegas',
      address: '3600 S Las Vegas Blvd, Las Vegas, NV 89109, United States',
      latitude: 36.091234,
      longitude: -115.1938314,
    ),
    favorite: true,
  ),
  Trip(
    name: 'Universal Studios Hollywood',
    tripPlan:
        'One of the world\'s oldest continuously operating movie studios, Universal Studios Hollywood presents an entertaining mix of thrill rides and live action shows, plus a tram ride. The large California theme park cleverly integrates the shows and rides with behind-the-scenes presentations on movie-making.',
    duration: '2 Day',
    date: '37-28 March 2022',
    price: 110.00,
    inclusion: [
      '2-day general admission to Universal Studios Hollywood',
    ],
    exclusion: [],
    rating: 4.1,
    photoCover: 'images/cover-universal-studio.jpg',
    urlPhoto: [
      'https://ak-d.tripcdn.com/images/010311200094r8zyiA93B_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/0100b1200094r975vC90D_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/0105q1200094r982h82F5_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
    ],
    category: 'Entertainment',
    location: Location(
      region: 'America',
      subRegion: 'North America',
      country: 'United States',
      location: 'Universal City',
      address:
          '100 Universal City Plaza, Universal City, CA 91608, United States',
      latitude: 34.1381168,
      longitude: -118.355567,
    ),
    favorite: true,
  ),
];
