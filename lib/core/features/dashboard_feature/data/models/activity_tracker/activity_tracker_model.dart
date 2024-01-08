class ActivityTrackerModel{
  String title;
  bool done;
  String ?subtitle;

  ActivityTrackerModel({required this.title,required this.done, this.subtitle});
  
  static List<ActivityTrackerModel> listOfActivityTracker= [
    ActivityTrackerModel(title: "Connect your bank accounts", done: true,),
    ActivityTrackerModel(title: "Confirm your income & savings", done: true,),
    ActivityTrackerModel(title: "Start budgeting for your goals", done: false,subtitle: "Try to do this by next week to get your next badge")
  ];
}