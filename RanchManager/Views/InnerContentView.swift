import SwiftUI

struct InnerContentView: View {
  var body: some View {
    VStack {
      Text("At a Glance")
        .font(.title)
        .padding([.bottom, .top], 80)
      CardView(typeLabel: "All Cows", numberOfThings: 600)

      HStack {
        CardView(typeLabel: "Bulls", numberOfThings: 120)
        CardView(typeLabel: "Cows", numberOfThings: 200)

      }
      HStack {
        CardView(typeLabel: "Calves", numberOfThings: 200)
        CardView(typeLabel: "Steers", numberOfThings: 80)
      }
      Spacer()
    }
  }
}

#Preview {
  InnerContentView()
}
