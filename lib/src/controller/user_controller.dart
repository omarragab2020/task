import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:tassk/src/model/user_model.dart';

class UserController extends GetxController {

  final _userList = <UserModel>[].obs;
  List<UserModel> get userList => _userList.value;
  set userList(List<UserModel> val) => _userList.value = val;



  @override
  void onInit() {
    userList=getUsers();
    super.onInit();
  }

  List<UserModel> getUsers(){
    return [
      UserModel(id: 1,
          title: 'MikeWazowski',
          description: 'That’s awesome! ...',
          image: 'assets/images/2.png'
      ),
      UserModel(id: 2,
          title: 'Darlene Steward',
          description: 'Pls take a look at the...',
          image: 'assets/images/1.png'
      ),
      UserModel(id: 3,
          title: 'Gregory Robertson',
          description: 'Preparing for next...',
          image: 'assets/images/4.png'
      ),
      UserModel(id: 4,
          title: 'Dwight Wilson',
          description: 'I’d like to watch ... ',
          image: 'assets/images/3.png'
      ),
      UserModel(id: 5,
          title: 'Albert Bell',
          description: 'I’m happy this amine ',
          image: 'assets/images/1.png'
      ),

    ];
  }
}