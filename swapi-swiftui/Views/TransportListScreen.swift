//
//  TransportListScreen.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import SwiftUI

struct TransportListScreen: View {
  private let apiManager: APIManager
  
  init(apiManager: APIManager) {
    self.apiManager = apiManager
  }
  
  var body: some View {
    Text("Hello, world!")
      .padding()
  }
}


// MARK: Previews

struct TransportListScreen_Previews: PreviewProvider {
  static var previews: some View {
    let mockAPIManager = MockAPIManager()
    TransportListScreen(apiManager: mockAPIManager)
  }
}
