class Cold_Cures_Model {
  String? image;
  String? name;
  String? company;
  var price;

  Cold_Cures_Model({this.image, this.name, this.company, this.price});
}

List<Cold_Cures_Model> medicineInfor = [
  Cold_Cures_Model(
      image: "images/mad_1.png",
      company: "Montelukast",
      name: " aa 10",
      price: '\$4.00'),
  Cold_Cures_Model(
      image: "images/mad_2.png",
      company: "Montelukast",
      name: " bbb 10",
      price: '\$5.00'),
  Cold_Cures_Model(
      image: "images/mad_3.png",
      company: "Montelukast",
      name: "cc  20",
      price: '\$5.00'),
  Cold_Cures_Model(
      image: "images/mad_4.png",
      company: "Montelukast",
      name: " dddd 50",
      price: '\$6.00'),
  Cold_Cures_Model(
      image: "images/mad_5.png",
      company: "Montelukast",
      name: "eee  500",
      price: '\$10.00'),
];
