import SwiftUI

struct MainView: View {

  let ALL_COWS_LABEL = "All Cows"
  let ADD_COW_LABEL = "Add Cow"

  var body: some View {
    VStack {
      Text("At a Glance")
        .font(.title)
        .padding([.bottom, .top], 80)
      NavigatingCardView(typeLabel: ALL_COWS_LABEL, numberOfThings: 600)

      HStack {
        NavigatingCardView(typeLabel: CowType.Bulls.rawValue, numberOfThings: 120)
        NavigatingCardView(typeLabel: CowType.Cows.rawValue, numberOfThings: 200)

      }
      HStack {
        NavigatingCardView(typeLabel: CowType.Calves.rawValue, numberOfThings: 200)
        NavigatingCardView(typeLabel: CowType.Steers.rawValue, numberOfThings: 80)
      }
      Spacer()
      GoToAddCowButton()
    }
  }
}

#Preview {
  MainView()
    .environment(NavigationManager())
}
