import 'dart:io';

void main(List<String> args) {
  Candidate()
    ..getCandidateDetails()
    ..displayCandidateDetails();
}

class Candidate {
  int? Candidate_ID, Candidate_Age;
  String? Candidate_Name;
  double? Candidate_Weight, Candidate_Height;

  void getCandidateDetails() {
    stdout.write("Enter CandidateID:");
    Candidate_ID = int.parse(stdin.readLineSync()!);
    stdout.write("Enter CandidateName:");
    Candidate_Name = stdin.readLineSync()!;
    stdout.write("Enter CandidateAge:");
    Candidate_Age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter CandidateWeight:");
    Candidate_Weight = double.parse(stdin.readLineSync()!);
    stdout.write("Enter CandidateHeight:");
    Candidate_Height = double.parse(stdin.readLineSync()!);
  }

  void displayCandidateDetails() {
    print("CandidateID:${Candidate_ID}");
    print("Candidate Name:${Candidate_Name}");
    print("Candidate Age:${Candidate_Age}");
    print("Candidate Weight:${Candidate_Weight}");
    print("Candidate Height:${Candidate_Height}");
  }
}
