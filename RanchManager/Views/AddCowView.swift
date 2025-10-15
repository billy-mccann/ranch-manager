import SwiftUI

struct AddCowView: View {
  @Environment(NavigationManager.self) private var navManager

  var body: some View {
    Text("Add Cow")
    Button(action: {
      navManager.navigateToRoot()
    }) {
      Text("Home")
        .foregroundColor(.white)
        .fontWeight(.bold)
        .font(.system(size: 65))
        .fontWidth(.compressed)
        .frame(width: 150, height: 120)

        .background(
          RainbowBackground()
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

struct LeftRightGradientBackground: View {
  var endColor: Color
  var body: some View {
    LinearGradient(colors: [.clear, .clear, endColor], startPoint: .leading, endPoint: .trailing)
  }
}

struct RainbowBackground: View {
  var body: some View {
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
  }
}
