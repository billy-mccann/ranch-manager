import SwiftUI

struct DetailView: View {
  var animalType: String
  var numberOfThings: Int
    var body: some View {
      Text("The number of \(animalType.lowercased()) is: \(numberOfThings)")
    }
}

#Preview {
  DetailView(animalType: "Animals", numberOfThings: 262)
}
