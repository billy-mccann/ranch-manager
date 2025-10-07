import SwiftUI

struct NavigatingCardView: View {
  @Environment(NavigationManager.self) var navManager

    var typeLabel: String
    var numberOfThings: Int
    var body: some View {
      Button(action: {
        navManager.navigateTo(NavDestination.detailView(animalType: typeLabel, numberOfThings: numberOfThings))
      }){
        CardView(typeLabel: typeLabel, numberOfThings: numberOfThings)
      }
    }
}

#Preview {
  NavigatingCardView(typeLabel: CowType.Bulls.rawValue, numberOfThings: 262)
    .environment(NavigationManager())
}

struct CardView: View {
  var typeLabel: String
  var numberOfThings: Int
  var body: some View {
    VStack{
      Text(typeLabel)
      Text("\(numberOfThings)")
    }
    .frame(width: 155, height: 80)
    .padding()
    .background(
      LinearGradient(colors: [
        .cyan, .black, .black, .black, .black, .black,
      ], startPoint: .top, endPoint: .bottom)
    )
    .clipShape(.buttonBorder)
  }
}

