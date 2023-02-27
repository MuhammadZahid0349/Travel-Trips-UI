import 'package:travel_point/model/location.dart';

class KnowlageCity {
  String title;
  String subTitle;
  String content;
  String photoCover;
  List<String> urlPhoto;
  Location location;
  String postBy;

  KnowlageCity(
      {required this.title,
      required this.subTitle,
      required this.content,
      required this.photoCover,
      required this.urlPhoto,
      required this.location,
      required this.postBy});
}

var knowlageCityList = [
  KnowlageCity(
    title: 'Dubai',
    subTitle: 'City in the UAE',
    content:
        'The city of Dubai is the largest and most populated city in the United Arab Emirates (UAE) and the capital city of the emirate of Dubai, UAE. The city is sometimes called "Dubai City" to prevent it from being mixed up with the emirate.\nDubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets and lights choreographed to music. On artificial islands just offshore is Atlantis, The Palm, a resort with water and marine-animal parks.\nThere are records of the town of Dubai from 1799. The city was a dependent of Abu Dhabi until 1833. The town of Dubai was an important port of call for foreign tradesmen (chiefly Indians), who settled in the town. Until the 1930s, the town was known for its pearls.',
    photoCover: 'images/cover-dubai.jpg',
    urlPhoto: [
      'https://cdn-image.hipwee.com/wp-content/uploads/2016/10/hipwee-islandoanialisme.blogspot.co_.id_.jpg',
      'https://minanews.net/wp-content/uploads/2021/01/dubai.png',
      'https://ak-d.tripcdn.com/images/350k0x000000l95fk34E3_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://digital.ihg.com/is/image/ihg/hotel-indigo-dubai-6698573758-2x1?fit=fit,1&wid=2400&hei=1200&qlt=85,0&resMode=sharp2&op_usm=1.75,0.9,2,0'
    ],
    location: Location(
      region: 'Asia',
      subRegion: 'West Asia',
      country: 'United Arab Emirates',
      location: 'Dubai',
      address: 'Dubai',
      latitude: 25.0762677,
      longitude: 55.0876628,
    ),
    postBy: 'Admin',
  ),
  KnowlageCity(
    title: 'Sikkim',
    subTitle: 'State of India',
    content:
        'Sikkim is a state in northeastern India. It borders the Tibet Autonomous Region of China in the north and northeast, Bhutan in the east, Nepal in the west, and West Bengal in the south. Sikkim is also close to India\'s Siliguri Corridor near Bangladesh. Sikkim is the least populous and second smallest among the Indian states. A part of the Eastern Himalaya, Sikkim is notable for its biodiversity, including alpine and subtropical climates, as well as being a host to Kangchenjunga, the highest peak in India and third highest on Earth. Sikkim\'s capital and largest city is Gangtok. Almost 35% of the state is covered by the Khangchendzonga National Park a UNESCO World Heritage Site.\nThe Kingdom of Sikkim was founded by the Namgyal dynasty in the 17th century. It was ruled by Buddhist priest-kings known as the Chogyal. It became a princely state of British India in 1890. Following Indian independence, Sikkim continued its protectorate status with the Union of India after 1947, and the Republic of India after 1950. It enjoyed the highest literacy rate and per capita income among Himalayan states. In 1973, anti-royalist riots took place in front of the Chogyal\'s palace. In 1975, after the Indian Army took over the city of Gangtok, a referendum was held that led to the deposition of the monarchy and Sikkim joining India as its 22nd state.',
    photoCover: 'images/cover-sikkim.jpeg',
    urlPhoto: [
      'https://content.r9cdn.net/rimg/dimg/9b/1c/fd32ce28-reg-1624-16a7075d005.jpg?width=1200&height=630&crop=false',
      'https://ak-d.tripcdn.com/images/350q10000000ounniDF45_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://static.theprint.in/wp-content/uploads/2021/08/Sikkim.jpg',
      'https://ak-d.tripcdn.com/images/350910000000ovrsi0AFB_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
    ],
    location: Location(
      region: 'Asia',
      subRegion: 'South Asia',
      country: 'India',
      location: 'Sikkim',
      address: 'Sikkim',
      latitude: 27.5990751,
      longitude: 88.1869968,
    ),
    postBy: 'Admin',
  ),
  KnowlageCity(
    title: 'Bangkok',
    subTitle: 'Capital of Thailand',
    content:
        'Bangkok is the capital and most populous city of Thailand, also known by its endonym Krung Thep Maha Nakhon or colloquially Krung Thep. The city occupies 1,568.7 square kilometres (605.7 sq mi) in the Chao Phraya River delta in central Thailand and has an estimated population of 10.539 million as of 2020, 15.3 percent of the country\'s population. Over fourteen million people (22.2 percent) lived within the surrounding Bangkok Metropolitan Region at the 2010 census, making Bangkok an extreme primate city, dwarfing Thailand\'s other urban centres in both size and importance to the national economy.\nBangkok traces its roots to a small trading post during the Ayutthaya Kingdom in the 15th century, which eventually grew and became the site of two capital cities, Thonburi in 1768 and Rattanakosin in 1782. Bangkok was at the heart of the modernization of Siam, later renamed Thailand, during the late-19th century, as the country faced pressures from the West. The city was at the centre of Thailand\'s political struggles throughout the 20th century, as the country abolished absolute monarchy, adopted constitutional rule, and underwent numerous coups and several uprisings. The city, incorporated as a special administrative area under the Bangkok Metropolitan Administration in 1972, grew rapidly during the 1960s through the 1980s and now exerts a significant impact on Thailand\'s politics, economy, education, media and modern society.',
    photoCover: 'images/cover-bangkok.jpeg',
    urlPhoto: [
      'https://a.cdn-hotels.com/gdcs/production172/d459/3af9262b-3d8b-40c6-b61d-e37ae1aa90aa.jpg',
      'https://ak-d.tripcdn.com/images/0356n12000862sg6h8478_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://content.r9cdn.net/rimg/dimg/21/e1/c054fc24-city-26166-1636ea4781c.jpg?crop=true&width=1366&height=768&xhint=1486&yhint=1176',
    ],
    location: Location(
      region: 'Asia',
      subRegion: 'Southeast Asia',
      country: 'Thailand',
      location: 'Bangkok',
      address: 'Bangkok',
      latitude: 13.7248936,
      longitude: 100.4930263,
    ),
    postBy: 'Admin',
  ),
  KnowlageCity(
    title: 'Singapore',
    subTitle: 'Capital of Singapore',
    content:
        'Singapore, officially the Republic of Singapore, is a sovereign island city-state in maritime Southeast Asia. It lies about one degree of latitude (137 kilometres or 85 miles) north of the equator, off the southern tip of the Malay Peninsula, bordering the Straits of Malacca to the west, the Riau Islands (Indonesia) to the south, and the South China Sea to the east. The country\'s territory is composed of one main island, 63 satellite islands and islets, and one outlying islet, the combined area of which has increased by 25% since the country\'s independence as a result of extensive land reclamation projects. It has the third greatest population density in the world. With a multicultural population and recognising the need to respect cultural identities, Singapore has four official languages; English, Malay, Mandarin, and Tamil. English is the lingua franca. Multiracialism is enshrined in the constitution and continues to shape national policies in education, housing, and politics.\nModern Singapore was founded in 1819 by Sir Stamford Raffles as a trading post of the British Empire. In 1867, the colonies in Southeast Asia were reorganised and Singapore came under the direct control of Britain as part of the Straits Settlements. During the Second World War, Singapore was occupied by Japan in 1942, and returned to British control as a separate crown colony following Japan\'s surrender in 1945. Singapore gained self-governance in 1959 and in 1963 became part of the new federation of Malaysia, alongside Malaya, North Borneo, and Sarawak. Ideological differences led to Singapore being expelled from the federation two years later and it became an independent country.',
    photoCover: 'images/cover-singapore.jpeg',
    urlPhoto: [
      'https://awsimages.detik.net.id/community/media/visual/2021/11/16/vaccinated-travel-lanes-singapore-3-hal-wajib-tahu-jika-mau-ke-singapura_169.jpeg?w=1200',
      'https://ak-d.tripcdn.com/images/350n0y000000m6c762105_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://pix10.agoda.net/geo/country/114/3_114_singapore_02.jpg?s=1920x',
    ],
    location: Location(
      region: 'Asia',
      subRegion: 'Southeast Asia',
      country: 'Singapore',
      location: 'Singapore',
      address: 'Singapore',
      latitude: 1.3437299,
      longitude: 103.5438483,
    ),
    postBy: 'Admin',
  ),
  KnowlageCity(
    title: 'Jakarta',
    subTitle: 'Capital of Indoneisa',
    content:
        'Jakarta, officially the Special Capital Region of Jakarta (Indonesian: Daerah Khusus Ibukota Jakarta), is the largest city of Indonesia. Lying on the northwest coast of Java, the world\'s most populous island, Jakarta is the largest city in Southeast Asia and serves as the diplomatic capital of ASEAN. The city is the centre of the economy, culture, and politics of Indonesia. It has a province level status which has a population of 10,562,088 as of 2020. Although Jakarta extends over only 664.01 square kilometres (256.38 sq mi), and thus has the smallest area of any Indonesian province, its metropolitan area covers 9,957.08 square kilometres (3,844.45 sq mi), which includes the satellite cities Bogor, Depok, Tangerang, South Tangerang, and Bekasi, and has an estimated population of 35 million as of 2021, making it the largest urban area in Indonesia and the second-largest in the world (after Tokyo). Jakarta ranks first among the Indonesian states in human development index. Jakarta\'s business opportunities, and its ability to offer a potentially higher standard of living than is available in other parts of the country, have attracted migrants from across the Indonesian archipelago, making it a melting pot of numerous cultures.',
    photoCover: 'images/cover-jakarta.jpeg',
    urlPhoto: [
      'https://ak-d.tripcdn.com/images/35041d000001elgfh7E96_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/350c170000011w24p0612_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/350d1e000001fhih9DFF5_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
      'https://ak-d.tripcdn.com/images/350k1a00000194dfdBECB_C_1000_560_Q80.jpg?proc=source/trip;namelogo/d_40',
    ],
    location: Location(
      region: 'Asia',
      subRegion: 'Southeast Asia',
      country: 'Indonesia',
      location: 'Jakarta',
      address: 'Jakarta',
      latitude: -6.2295712,
      longitude: 106.759478,
    ),
    postBy: 'Admin',
  ),
];
