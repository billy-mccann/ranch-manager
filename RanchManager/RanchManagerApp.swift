//
//  RanchManagerApp.swift
//  RanchManager
//
//  Created by Bill McCann on 9/25/25.
//

import SwiftUI

@main
struct RanchManagerApp: App {
    var body: some Scene {
        WindowGroup {
          NavigationRouter(innerView: InnerContentView())
        }
    }
}
