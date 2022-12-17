void main(List<String> args) {
  List<String> cities = [
    "Delhi",
    "Mumbai",
    "Bangalore",
    "Hyderabad",
    "Ahemdabad"
  ];
  cities.replaceRange(4, 5, ["Surat"]);
  print(cities);
}
