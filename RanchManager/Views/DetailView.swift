import SwiftUI

struct DetailView: View {
  var animalType: String
  var numberOfThings: Int
    var body: some View {
      Spacer()
      Text("The number of \(animalType.lowercased()) is: \(numberOfThings)")
      Spacer()
      Text("<Table of all cows goes here>")
      HStack{
        Text("Betsy")
        Text("River Ranch")
        Text("DOB: 10-7-2021")
      }
      HStack{
        Text("JuneBug")
        Text("Forest Pasture")
        Text("DOB: 04-13-2020")
      }

      Spacer()
      GoToAddCowButton()
      Spacer()
    }
}

#Preview {
  DetailView(animalType: CowType.Steers.rawValue, numberOfThings: 262).environment(NavigationManager())
}
