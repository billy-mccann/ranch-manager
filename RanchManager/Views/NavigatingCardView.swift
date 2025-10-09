import SwiftUI

struct NavigatingCardView: View {
  @Environment(NavigationManager.self) var navManager

    var typeLabel: String
    var numberOfThings: Int
    var leftRightGradColor: Color
    var body: some View {
      Button(action: {
        navManager.navigateTo(NavDestination.detailView(animalType: typeLabel, numberOfThings: numberOfThings))
      }){
        CardView(typeLabel: typeLabel, numberOfThings: numberOfThings, leftRightGradColor: leftRightGradColor)
      }
    }
}

#Preview {
  NavigatingCardView(typeLabel: CowType.Bulls.rawValue, numberOfThings: 262, leftRightGradColor: .purple)
    .environment(NavigationManager())
}

struct CardView: View {
  var typeLabel: String
  var numberOfThings: Int
  var leftRightGradColor: Color
  var body: some View {
    VStack{
      Text(typeLabel)
        .foregroundColor(.white)
        .fontWidth(.compressed)
        .font(.system(size: 44, weight: .bold))
      Text("\(numberOfThings)")
        .foregroundColor(.cyan.opacity(0.6))
        .font(.system(size: 40, weight: .bold))
    }
    
    .frame(width: 155, height: 80)
    .padding()
    .background(
      LinearGradient(colors: [
        .cyan, .clear, .clear, .clear, .clear, .clear,
      ], startPoint: .top, endPoint: .bottom)
      .opacity(0.5)
      .background(
        LeftRightGradientBackground(endColor: leftRightGradColor).opacity(0.5)
      )
    )
    .clipShape(.buttonBorder)
  }
}

