import SwiftUI

struct MainView: View {

  let ALL_COWS_LABEL = "All Cows"
  let ADD_COW_LABEL = "Add Cow"

  var body: some View {
    VStack {
      Text("At a Glance")
        .font(.system(size: 40, weight: .bold))
        .foregroundColor(.mint).opacity(0.8)
        .padding([.bottom, .top], 80)
      NavigatingCardView(typeLabel: ALL_COWS_LABEL, numberOfThings: 600, leftRightGradColor: .purple)

      HStack {
        NavigatingCardView(typeLabel: CowType.Bulls.rawValue, numberOfThings: 120, leftRightGradColor: .green)
        NavigatingCardView(typeLabel: CowType.Cows.rawValue, numberOfThings: 200, leftRightGradColor: .blue)

      }
      HStack {
        NavigatingCardView(typeLabel: CowType.Calves.rawValue, numberOfThings: 200, leftRightGradColor: .teal)
        NavigatingCardView(typeLabel: CowType.Steers.rawValue, numberOfThings: 80, leftRightGradColor: .indigo)
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
