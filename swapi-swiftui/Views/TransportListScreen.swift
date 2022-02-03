//
//  TransportListScreen.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import SwiftUI

struct TransportListScreen: View {
  @ObservedObject var viewModel: TransportListViewModel
  
  var body: some View {
    List(viewModel.vehicles) { vehicle in
      TransportItemView(vehicle: vehicle)
    }
    .onAppear { viewModel.loadVehicles() }
  }
}


// MARK: Previews

struct TransportListScreen_Previews: PreviewProvider {
  static var previews: some View {
    let mockAPIManager = MockAPIManager()
    let viewModel = TransportListViewModel(apiManager: mockAPIManager)
    TransportListScreen(viewModel: viewModel)
  }
}
