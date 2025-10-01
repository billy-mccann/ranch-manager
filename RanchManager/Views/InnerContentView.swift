import SwiftUI

struct InnerContentView: View {
  @Binding var path: NavigationPath // Don't really need this here, it is only passed down the line

  var body: some View {
    VStack {
      Text("At a Glance")
        .font(.title)
        .padding([.bottom, .top], 80)
      CardView(path: $path, typeLabel: "All Cows", numberOfThings: 600)

      HStack {
        CardView(path: $path, typeLabel: "Bulls", numberOfThings: 120)
        CardView(path: $path, typeLabel: "Cows", numberOfThings: 200)

      }
      HStack {
        CardView(path: $path, typeLabel: "Calves", numberOfThings: 200)
        CardView(path: $path, typeLabel: "Steers", numberOfThings: 80)
      }
      Spacer()
    }
  }
}

#Preview {
  @Previewable @State var previewPath = NavigationPath()
  InnerContentView(path: $previewPath)
}
