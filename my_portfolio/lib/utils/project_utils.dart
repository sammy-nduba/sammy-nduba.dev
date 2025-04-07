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
      image: "assets/projects/project4.jpeg",
      title: "Enhancing Shopping experience using AR",
      subtitle: "Enhancing Shopping experience using Augmented reality",
      link: "https://github.com/sammy-nduba/Augmented_Reality-Shopping-Experience"
  ),
  ProjectUtils(
      image: "assets/projects/project6.jpeg",
      title: "Flutter User Authentication using Firebase",
      subtitle: "This is a flutter sign-up and registration exploring Firebase",
      link: "https://github.com/sammy-nduba/flutter-firebase-user-auth"
  ),

  ];

// Assigned Projects

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
      image: "assets/projects/project5.jpeg",
      title: "Using RxJava & RxKotlin",
      subtitle: "User Authentication in Firebase using RxJava and RxKotlin",
      link: "https://github.com/ndubasamuel/eclecticStay_Project"
  ),
  ProjectUtils(
      image: "assets/projects/project1.jpeg",
      title: "Savings Application",
      subtitle: "This is a project for savings -dashboard conversions done using xml",
      link: ""
  ),
  ProjectUtils(
      image: "assets/projects/project3.jpeg",
      title: "Refresh State",
      subtitle: "Exploring State Refresh with Jetpack Compose",
      link: "https://github.com/sammy-nduba/refresh_state-jetpack-compose"
  ),

];
