//
//  TransportListViewModel.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import Foundation

class TransportListViewModel: ObservableObject {
  @Published var vehicles: [VehicleJson] = []
  
  private let apiManager: APIManager
  
  init(apiManager: APIManager) {
    self.apiManager = apiManager
  }
  
  func loadVehicles() {
    apiManager.loadVehicles(success: { [weak self] result in
      self?.vehicles = result.results
    }, failure: { errorMessage in
      print("Error loading vehicles: \(errorMessage)")
    })
  }
}
