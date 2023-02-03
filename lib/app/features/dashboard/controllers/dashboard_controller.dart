part of dashboard;

class DashboardController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    if (scaffoldKey.currentState != null) {
      scaffoldKey.currentState!.openDrawer();
    }
  }

  // Data
  _Profile getProfil() {
    return const _Profile(
      photo: AssetImage(ImageRasterPath.avatar1),
      name: "Zidan Wakid",
      email: "zidanwakid@gmail.com",
    );
  }

  List<TaskCardData> getAllTask() {
    return [
      const TaskCardData(
        title: "Dinamika Rotasi",
        dueDay: 2,
        totalComments: 50,
        type: TaskType.todo,
        totalContributors: 30,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar1),
          AssetImage(ImageRasterPath.avatar2),
          AssetImage(ImageRasterPath.avatar3),
          AssetImage(ImageRasterPath.avatar4),
        ],
      ),
      const TaskCardData(
        title: "Energi Terbarukan",
        dueDay: -1,
        totalComments: 50,
        totalContributors: 34,
        type: TaskType.inProgress,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar5),
          AssetImage(ImageRasterPath.avatar6),
          AssetImage(ImageRasterPath.avatar7),
          AssetImage(ImageRasterPath.avatar8),
        ],
      ),
      const TaskCardData(
        title: "Fluida Statis",
        dueDay: 1,
        totalComments: 50,
        totalContributors: 34,
        type: TaskType.done,
        profilContributors: [
          AssetImage(ImageRasterPath.avatar5),
          AssetImage(ImageRasterPath.avatar3),
          AssetImage(ImageRasterPath.avatar4),
          AssetImage(ImageRasterPath.avatar2),
        ],
      ),
    ];
  }

  ProjectCardData getSelectedProject() {
    return const ProjectCardData(
      projectImage: AssetImage(ImageRasterPath.logo1),
      projectName: "Marketplace Mobile",
      releaseTime: "2 hours",
    );
  }

  List<ProjectCardData> getActiveProject() {
    return [
      const ProjectCardData(
        projectImage: AssetImage(ImageRasterPath.logo2),
        projectName: "Dinamika Rotasi",
        releaseTime: "2 Hours 30 minutes",
      ),
      const ProjectCardData(
        projectImage: AssetImage(ImageRasterPath.logo3),
        projectName: "Eenrgi Terbarukan",
        releaseTime: "2 Hours 30 minutes",
      ),
      const ProjectCardData(
        projectImage: AssetImage(ImageRasterPath.logo4),
        projectName: "Fluida Statis",
        releaseTime: "2 Hours 30 minutes",
      ),
    ];
  }

  List<ImageProvider> getMember() {
    return const [
      AssetImage(ImageRasterPath.avatar1),
      AssetImage(ImageRasterPath.avatar2),
      AssetImage(ImageRasterPath.avatar3),
      AssetImage(ImageRasterPath.avatar4),
      AssetImage(ImageRasterPath.avatar5),
      AssetImage(ImageRasterPath.avatar6),
    ];
  }

  List<ChattingCardData> getChatting() {
    return const [
      ChattingCardData(
        image: AssetImage(ImageRasterPath.avatar6),
        isOnline: true,
        name: "Hery Herawan",
        lastMessage: "i added my new tasks",
        isRead: false,
        totalUnread: 100,
      ),
      ChattingCardData(
        image: AssetImage(ImageRasterPath.avatar3),
        isOnline: false,
        name: "Ahmad Bakery",
        lastMessage: "well done zidan",
        isRead: true,
        totalUnread: 0,
      ),
      ChattingCardData(
        image: AssetImage(ImageRasterPath.avatar4),
        isOnline: true,
        name: "Fahreza",
        lastMessage: "we'll have a course today",
        isRead: false,
        totalUnread: 1,
      ),
    ];
  }
}
