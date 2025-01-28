class PendingTask {
  String name;
  String subject;
  String timeLeft;

  PendingTask({required this.name, required this.subject, required this.timeLeft});
}

class DashboardModel {
  int points;
  List<PendingTask> pendingTasks;

  DashboardModel({required this.points, required this.pendingTasks});
}