List<Map<Titles, dynamic>> kItems = [
  {Titles.name: Items.cPallu, Titles.stitch: 0.0, Titles.head: 1.5},
  {Titles.name: Items.pallu, Titles.stitch: 0.0, Titles.head: 7.0},
  {Titles.name: Items.skt, Titles.stitch: 0.0, Titles.head: 11.0},
  {Titles.name: Items.blz, Titles.stitch: 0.0, Titles.head: 1.5},
];

enum Titles {
  name('name'),
  stitch('stitch'),
  head('head');

  final String value;

  const Titles(this.value);
}

enum Items { cPallu, pallu, skt, blz }

List nameKeys = [
  Items.cPallu,
  Items.pallu,
  Items.skt,
  Items.blz,
];
