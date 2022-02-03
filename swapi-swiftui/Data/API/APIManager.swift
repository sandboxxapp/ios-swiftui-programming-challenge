//
//  APIManager.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import Foundation

protocol APIManager {
  /// Load vehicles from API
  func loadVehicles(success: @escaping (VehicleListResult) -> Void,
                    failure: @escaping NetworkErrorCallback)
}
