import '../Model/dashboard_model.dart';

class DashboardController {
  DashboardModel model = DashboardModel(
    points: 300,
    pendingTasks: [
      PendingTask(name: "Newton", subject: "Physics", timeLeft: "1d:10Hr"),
      PendingTask(
          name: "Biochemistry", subject: "Chemistry", timeLeft: "1d:10Hr"),
      PendingTask(name: "Aljabar", subject: "Maths", timeLeft: "1d:10Hr"),
      PendingTask(name: "Other's", subject: "", timeLeft: ""),
    ],
  );
}
