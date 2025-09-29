//
//  ContentView.swift
//  RanchManager
//
//  Created by Bill McCann on 9/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationStack {
        VStack {
            Text("At a Glance")
                .font(.title)
                .padding([.bottom, .top], 80)
            MainCardView(typeLabel: "All Cows", numberOfThings: 600)

            HStack {
                MainCardView(typeLabel: "Bulls", numberOfThings: 120)
                MainCardView(typeLabel: "Cows", numberOfThings: 200)

            }
            HStack {
                MainCardView(typeLabel: "Calves", numberOfThings: 200)
                MainCardView(typeLabel: "Steers", numberOfThings: 80)
            }
            Spacer()
        }
      }

    }
}

#Preview {
    ContentView()
}

struct MainCardView: View {
    var typeLabel: String
    var numberOfThings: Int
    var body: some View {
      NavigationLink(destination: DetailView(animalType: typeLabel, numberOfThings: numberOfThings)) {
        VStack{
            Text(typeLabel)
          Text("\(numberOfThings)")
        }
      }
        .padding()
        .background(.gray.opacity(0.4))
        .clipShape(.buttonBorder)
    }
}

struct DetailView: View {
  var animalType: String
  var numberOfThings: Int
    var body: some View {
      Text("The number of \(animalType.lowercased()) is: \(numberOfThings)")
    }
}
