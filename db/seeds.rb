# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.create([
  {
    name: "Fuku+",
    category: "American Traditional",
    body: "David Chang's newest edition. Fuku+ in Midtown, which occupies the old first floor lounge at Ma Peche in the Chambers Hotel, is the second Fuku to debut in 2015. The fine sophomore effort boasts a larger space and a longer menu than the East Village original; the latter sells just three savory items: the chicken sandwich, a salad, and fries. Bartenders describe Fuku+ as a test-kitchen of sorts, and Momofuku says items that perform well might trickle down to the First Avenue location.",
    img_url: 'https://cdn0.vox-cdn.com/thumbor/H2zAPpxH_PSW0Iy1sBeO4VTDJ1I=/2400x0/filters:no_upscale()/cdn0.vox-cdn.com/uploads/chorus_asset/file/4106460/20150928-Fuku__mini_me_and_fries.0.jpg'
  },
  {
  name: "Tacombi",
  category: "Mexican",
  body: "The proliferating Mexican chainlet alights on a South Village corner with a small menu showcasing the Yucatecan specialties panuchos and salbutes — two versions of variously topped fried tortillas. If you’re partial to unfried tortillas, there are entrées like banana-leaf-wrapped grouper served with fresh tortillas and Rancho Gordo beans.",
  img_url: 'http://pixel.nymag.com/imgs/daily/grub/2015/08/18/magazine/24-fal-preview-tacombi-panucho-de-pollo.w600.jpg'
  },
  {
    name: "Court Street Grocers",
    category: "American Traditional",
    body: "The madcap grocers and sandwich-makers of Carroll Gardens bring their regional American pantry obsession to Manhattan, where they’ll stock the shelves with all sorts of gourmet staples and delicious oddities. The signature sandwiches get a new stage, too — an old-fashioned lunch counter — where they’ll be joined by novel concoctions like the Dirty Turkey (roasted breast, giblet-and-andouille pâté, slaw, mayo, and Creole-spice vinaigrette on a Caputo’s hero roll). Plus beer, wine, and cider on tap.",
    img_url: "http://pixel.nymag.com/imgs/daily/grub/2015/08/18/magazine/24-fal-preview-court-street-grocers.w600.jpg"
  },
  {
    name: "Le Coq Rico",
    category: "American New",
    body: "This Paris transplant, courtesy of three-Michelin-starred Antoine Westermann, comes with a subtitle: “The Bistro of Beautiful Birds.” The chickens in question include Jersey Giants, cooked in more ways than you ever imagined. There is baeckeoffe, there are giblets, and there’s an entire section dedicated to eggs.",
    img_url: "http://pixel.nymag.com/imgs/daily/grub/2015/08/18/magazine/24-fal-preview-le-coq-rico.w600.jpg"
  }
  ])

User.create([{
    username: "Will",
    email: "will@ga.co",
    password: "password"
  },
  {
    username: "Adam",
    email: "adam@ga.co",
    password: "password"
  },
  {
    username: "Jason",
    email: "jason@ga.co",
    password: "password"
  },
  {
    username: "Caroline",
    email: "ckim@ga.co",
    password: "password"
  }
  ])


Comment.create([{
      user_id: 1,
      body: "Awesome place. Try everything!",
      restaurant_id: 2
    },
    {
      user_id: 2,
      body: "Comfort food at it's best. Can't go wrong with fried chicken.",
      restaurant_id: 1
    },
    {
      user_id: 4,
      body: "Just like the other locations in that they make great weird sandwiches.",
      restaurant_id: 3
    },
    {
      user_id: 1,
      body: "Wow so many ways to make chicken. Everything is super delicious and innovative. Try one of the rich egg dishes.",
      restaurant_id: 4
    }
    ])
