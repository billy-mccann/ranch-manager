import SwiftUI

struct AddCowView: View {
  @Environment(NavigationManager.self) private var navManager

  var body: some View {
    Text("Add Cow")
    Button(action: {
      navManager.navigateToRoot()
    }) {
      Text("Go back to the start")
        .frame(width: 150, height: 150)

        .background(
        MeshGradient(
            width: 2,
            height: 2,
            points: [
                [0, 0], [1, 0],
                [0, 1], [1.0, 1.0]
            ],
            colors: [
                .purple.opacity(0.4), .mint.opacity(0.5),
                .orange.opacity(0.3), .blue.opacity(0.3)
            ],
            background: .indigo
        )
        .background(.white)
      )
        .clipShape(.buttonBorder)
    }
  }
}

#Preview {
  AddCowView()
    .environment(NavigationManager())
}

struct GoToAddCowButton: View {
  @Environment(NavigationManager.self) private var navManager

  var body: some View {
    Button(action: {
      navManager.navigateTo(NavDestination.addCowView)
    })
    {
      Text("Add Cow")
    }
  }
}

#Preview {
  GoToAddCowButton()
    .environment(NavigationManager())
}
