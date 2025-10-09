import Foundation

protocol Animal {}

class Cow: Animal, Codable {
  var id: Int?
  var name: String?
  var DOB: Int?
  var type: CowType?
  var gender: AnimalGender?
  var imageURL: URL?
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
