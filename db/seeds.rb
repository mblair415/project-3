# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all

user_data = [{
    user_name: "shivngiggles",
    email: "shiv@shiv.shiv",
    password: "aaaaaa",
    password_confirmation: "aaaaaa",
    profile_picture: "https://avatars3.githubusercontent.com/u/18222627?v=3&s=460"
  }, {
    user_name: "if the shoe fits",
    email: "slippers@slippers.slippers",
    password: "aaaaaa",
    password_confirmation: "aaaaaa",
    profile_picture: "https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/Cinderella_disney.png/220px-Cinderella_disney.png"
  }, {
    user_name: "gimme dem shoes",
    email: "oz@oz.oz",
    password: "aaaaaa",
    password_confirmation: "aaaaaa",
    profile_picture: "http://www.motionpictureimaging.com/wp-content/uploads/sites/8/2012/03/38-Movie-Review-The-Wizard-of-Oz.jpg"
  }, {
    user_name: "dancin feet",
    email: "dancin@dancin@dancin",
    password: "aaaaaa",
    password_confirmation: "aaaaaa",
    profile_picture: "https://lastocean.files.wordpress.com/2011/07/hf1.jpg"
  }, {
    user_name: "shoes matter",
    email: "shoe@shoe.shoe",
    password: "aaaaaa",
    password_confirmation: "aaaaaa",
    profile_picture: "https://jeffreysterlingmd.files.wordpress.com/2014/06/steponnail.jpg"
  }];

user = User.create(user_data)

post_data = [{
    title: "Do your shoes smell?",
    content: "Do your shoes smell?  My shoes smell.",
    post_image: "http://2.bp.blogspot.com/_NOXa1CXNsxg/SObfYwhmB2I/AAAAAAAAB5E/z2IFtSVZvvU/s400/head-stuck-in-a-boot.jpg",
    user_id: User.first.id
  }, {
    title: "Yo!  These are hella sick though",
    content: "These kicks are hella tight!",
    post_image: "http://www.centrastad.nl/images/rixtsieradcts/w-Vrouwen-Sb-Dunk-Hoge-Hak-Paars-Zwart-384_05.jpg",
    user_id: User.second.id
  }, {
    title: "This little piggy got an ugly house",
    content: "Comfy but I just want to hide when I wear them.",
    post_image: "https://gearjunkie.com/legacy/images/5321.jpg",
    user_id: User.last.id
  }, {
    title: "Listen!  Do you smell that?",
    content: "I think I stepped in something.",
    post_image: "http://www.awesomeinventions.com/wp-content/uploads/2016/02/poop-emoji-slippers.jpg",
    user_id: User.fourth.id
  }, {
    title: "Dangerous",
    content: "It's dangerous to go alone.  Take these ... shoes.",
    post_image: "http://www.mypaintedshoes.com/images/6370.jpg",
    user_id: User.third.id
  }];

post = Post.create(post_data)

comment_data = [{
    content: "Nothing about this is OK with me.",
    user_id: User.fourth.id,
    post_id: Post.first.id
  }, {
    content: "As long as this thing covers my bunyons, I'd wear it.",
    user_id: User.last.id,
    post_id: Post.last.id
  }, {
    content: "Is it anti-microbial?  I've got a real thing going on with some foot fungus.  It's important to me that this help.  My wife says if I don't do something about it she may leave me and take the kids.  They're all I have.",
    user_id: User.fourth.id,
    post_id: Post.third.id
  }, {
    content: "I heard Missy Elliot had a pair of these.",
    user_id: User.third.id,
    post_id: Post.second.id
  }, {
    content: "Yeah, but I heard she was hanging out with Ray Charles and he kicked her out cause her shoes were too loud.",
    user_id: User.fourth.id,
    post_id: Post.second.id
  }]

comment = Comment.create(comment_data)
