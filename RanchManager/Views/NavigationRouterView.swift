import SwiftUI

struct NavigationRouterView: View {
  @State var path = NavigationPath()
    var body: some View {
      NavigationStack(path: $path) {
        InnerContentView(path: $path)
        .navigationDestination(for: NavigationRouter.self) { router in
          switch router.destination {
          case .detailView:
            let detailViewBundle = router.bundle!.detailViewBundle!
            DetailView(animalType: detailViewBundle.animalType, numberOfThings: detailViewBundle.numberOfThings)
          }
        }
      }
    }
}

#Preview {
  NavigationRouterView()
}

// TODO: refactor NavigationPath to be an environment object so we don't need to pass it around everywhere
struct CardView: View {
  @Binding var path: NavigationPath
    var typeLabel: String
    var numberOfThings: Int
    var body: some View {
        VStack{
            Text(typeLabel)
          Text("\(numberOfThings)")
        }.onTapGesture {
          let detailViewBundle = DetailViewBundle(animalType: typeLabel, numberOfThings: numberOfThings)
          let bundle = NavigationBundle(detailViewBundle: detailViewBundle)
          path.append(NavigationRouter(destination: .detailView, bundle: bundle))
        }
        .frame(width: 155, height: 80)
        .padding()
        .background(.gray.opacity(0.4))
        .clipShape(.buttonBorder)
    }
}
