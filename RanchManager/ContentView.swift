//
//  ContentView.swift
//  RanchManager
//
//  Created by Bill McCann on 9/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("At a Glance")
                .font(.title)
                .padding([.bottom, .top], 80)
            MainCardView(typeLabel: "All Cows", numLabel: "600")

            HStack {
                MainCardView(typeLabel: "Bulls", numLabel: "120")
                MainCardView(typeLabel: "Cows", numLabel: "200")

            }
            HStack {
                MainCardView(typeLabel: "Calves", numLabel: "200")
                MainCardView(typeLabel: "Steers", numLabel: "80")
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

struct MainCardView: View {
    var typeLabel: String
    var numLabel: String
    var body: some View {
        VStack{
            Text(typeLabel)
            Text(numLabel)
        }
        .navigationDestination(for: Int.self) { num in
            DetailView()
        }
        .padding()
        .background(.blue.opacity(0.4))
        .clipShape(.buttonBorder)
    }
}

struct DetailView: View {
    var body: some View {
        Text("Some number")
    }
}
