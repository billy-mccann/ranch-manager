import SwiftUI

struct InnerContentView: View {
  @EnvironmentObject var navManager: NavigationManager

  let ALL_COWS_LABEL = "All Cows"

  var body: some View {
    VStack {
      Text("At a Glance")
        .font(.title)
        .padding([.bottom, .top], 80)
      CardView(typeLabel: ALL_COWS_LABEL, numberOfThings: 600)

      HStack {
        CardView(typeLabel: CowType.Bulls.rawValue, numberOfThings: 120)
        CardView(typeLabel: CowType.Cows.rawValue, numberOfThings: 200)

      }
      HStack {
        CardView(typeLabel: CowType.Calves.rawValue, numberOfThings: 200)
        CardView(typeLabel: CowType.Steers.rawValue, numberOfThings: 80)
      }
      Spacer()
      Button(action: {
        navManager.navigateTo(NavigationDestination.addCowView)
      }) {
        Text("Add Cow")
      }
    }
  }
}

#Preview {
  InnerContentView()
    .environmentObject(NavigationManager())
}
