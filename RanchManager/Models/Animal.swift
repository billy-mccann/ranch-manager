import Foundation

protocol Animal {}

class Cow: Animal, Codable {
  var id: Int?
  var name: String?
  var dateOfBirth: Int?
  var type: CowType?
  var gender: AnimalGender?
  var imageUrl: URL?
  var birthWeight: Int? // lbs
  var weightHistory: [Int:Int]? // key: ms since 1970, value: weight in lbs
  var vaccineHistory: [Int:VaxType]?
  var isPregnant: Bool?
  var brandDate: Int?
  var earTagId: String?
}

enum VaxType: String, Codable {
  case IBR
  case BVD
  case BRSV
  case PI3
  case Clostridial
}

enum AnimalGender: String, Codable {
  case male
  case female
}

enum CowType: String, Codable {
  case Bulls = "Bulls 🐂"
  case Cows = "Cows 🐄"
  case Calves = "Calves 🍼"
  case Steers = "Steers 🚫"
}
