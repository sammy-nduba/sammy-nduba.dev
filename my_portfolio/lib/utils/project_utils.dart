class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String link;


  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.link
  });
}

//   projects
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: "assets/projects/project2.jpeg",
      title: "A tourism Application",
      subtitle: "This is a tourism application that allows tourists to book lodges and hotels",
      link: "https://github.com/ndubasamuel/eclecticStay_Project"
  ),
  ProjectUtils(
      image: "assets/projects/project1.jpeg",
      title: "Savings Application",
      subtitle: "This is a project for savings - dashboard conversions done using xml",
      link: ""
  ),
  ProjectUtils(
      image: "assets/projects/project3.jpeg",
      title: "State Refresh",
      subtitle: "Exploring State Refresh with Jetpack Compose",
      link: "https://github.com/sammy-nduba/refresh_state-jetpack-compose"
  ),

  ];

// Assigned Projects

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      image: "assets/projects/project2.jpeg",
      title: "A tourism Application",
      subtitle: "This is a tourism application that allows tourists to book lodges and hotels",
      link: "https://github.com/ndubasamuel/eclecticStay_Project"
  ),
  ProjectUtils(
      image: "assets/projects/project1.jpeg",
      title: "Savings Application",
      subtitle: "This is a project for savings - dashboard conversions done using xml",
      link: ""
  ),
  ProjectUtils(
      image: "assets/projects/project3.jpeg",
      title: "Refresh State",
      subtitle: "Exploring State Refresh with Jetpack Compose",
      link: "https://github.com/sammy-nduba/refresh_state-jetpack-compose"
  ),

];
