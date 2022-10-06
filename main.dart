class Employee {
  void login() {
    print("Login ...");
  }
}

mixin Medical {
  void takeTemperature() {
    print("Take Temperature ...");
  }
}
mixin Surgery {
  void performSurgery() {
    print("Perform Surgery ....");
  }
}
mixin LogOut on Employee {
  void logout() {
    print("Log out ...");
  }
}

class Nurse extends Employee with Medical, LogOut {
  @override
  void login() {
    super.login();
    print("Nurse");
  }

  @override
  void takeTemperature() {
    super.takeTemperature();
    print("Nurse");
  }
}

class Doctor extends Employee with Medical, Surgery, LogOut {}

class Driver extends Employee with LogOut {}

void main(List<String> args) {
  Doctor().logout();
  // Doctor().takeTemperature();
  // Driver().login();
}
