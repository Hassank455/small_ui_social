class UserModel {
  final String name, urlImage, location, bio;
  final int countFollowers, countFollowing, countPosts;
  final List<String> urlPhotos;
  final bool isFollowing;

  UserModel(
      {this.name,
      this.urlImage,
      this.location,
      this.bio,
      this.countFollowers,
      this.countFollowing,
      this.countPosts,
      this.urlPhotos,
      this.isFollowing});
}

final user = <UserModel>[
  UserModel(
    name: 'Bill Gate',
    bio: 'William Henry Gates III is american bussines, software development ',
    countFollowers: 1400,
    countFollowing: 100,
    location: 'United States',
    isFollowing: true,
    countPosts: 35,
    urlImage: 'https://newzofday.com/wp-content/uploads/2019/09/BillGatesHeadshot.jpg',
    urlPhotos: [
      'https://upload.wikimedia.org/wikipedia/commons/2/2d/Bill_Gates_2014.jpg',
      'https://th.bing.com/th/id/OIP.K-FNDxzycxXeQs9HNqQaOQHaHg?pid=ImgDet&rs=1',
      'https://newzofday.com/wp-content/uploads/2019/09/BillGatesHeadshot.jpg',
      'https://static.timesofisrael.com/atlantajewishtimes/uploads/2020/12/ART-bill-gates-headshot-new-12-31-20.jpg',
      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/06/17/08/bill-gates.jpg',
      'https://th.bing.com/th/id/OIP.-K8i797kQL3HHVJfudEVVwHaEL?pid=ImgDet&rs=1',
    ],
  ),
  UserModel(
    name: 'steve jobs',
    bio: 'steve Henry Gates III is american bussines, software development ',
    countFollowers: 1800,
    countFollowing: 500,
    location: 'United States',
    isFollowing: false,
    countPosts: 118,
    urlImage: 'https://image.cnbcfm.com/api/v1/image/100496736-steve-jobs-march-2011-getty.jpg?v=1513863842&w=1400&h=950',
    urlPhotos: [
      'https://pngimg.com/uploads/steve_jobs/steve_jobs_PNG33430.png',
      'https://api.time.com/wp-content/uploads/2014/11/steve-jobs-apple.jpg',
      'https://img.thedailybeast.com/image/upload/c_crop,d_placeholder_euli9k,h_675,w_1200,x_0,y_0/dpr_2.0/c_limit,w_740/fl_lossy,q_auto/v1493058675/cheats/2011/10/07/steve-jobs-tried-lsd/jobs-new2-teaser_gnbc1e',
      'https://d.newsweek.com/en/full/663518/steve-jobs.jpg',
      'https://th.bing.com/th/id/R2cba6e51fbf276a41cc248c518b9874c?rik=xsN7uotEQeXXMA&riu=http%3a%2f%2fim.rediff.com%2fgetahead%2f2013%2fjun%2f17sld-steve-jobs.jpg&ehk=JjIdCoDxHjLx5X7RpG4Bg1jhnaQQCW%2fSSmscqS7fEw0%3d&risl=&pid=ImgRaw',
      'https://th.bing.com/th/id/OIP.0LLivBIuTvetTY4BctSiHwHaE8?pid=ImgDet&rs=1',
    ],
  ),
];
