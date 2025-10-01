import SwiftUI

struct CardView: View {
  @EnvironmentObject var navManager: NavigationManager

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
          let detailViewBundle = DetailViewBundle(animalType: typeLabel, numberOfThings: numberOfThings)
          let bundle = NavigationBundle(detailViewBundle: detailViewBundle)
          navManager.navigateTo(NavigationRouter(destination: .detailView, bundle: bundle))
        }
    }
}

#Preview {
  CardView(typeLabel: "Bulls", numberOfThings: 262)
}
