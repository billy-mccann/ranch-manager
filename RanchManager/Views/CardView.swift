import SwiftUI

struct CardView: View {
  @Environment(NavigationManager.self) var navManager

    var typeLabel: String
    var numberOfThings: Int
    var body: some View {
        VStack{
          Text(typeLabel)
          Text("\(numberOfThings)")
        }
        .frame(width: 155, height: 80)
        .padding()
        .background(.gray.opacity(0.4))
        .clipShape(.buttonBorder)
        .onTapGesture {
          navManager.navigateTo(NavDestination.detailView(animalType: typeLabel, numberOfThings: numberOfThings))
        }
    }
}

#Preview {
  CardView(typeLabel: CowType.Bulls.rawValue, numberOfThings: 262)
}

