//
//  swapi_swiftuiApp.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import SwiftUI

@main
struct swapi_swiftuiApp: App {
  var body: some Scene {
    WindowGroup {
      let transportListViewModel = TransportListViewModel(apiManager:  SwapiAPIManager())
      TransportListScreen(viewModel: transportListViewModel)
    }
  }
}
