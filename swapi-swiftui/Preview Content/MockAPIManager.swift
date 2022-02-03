//
//  MockAPIManager.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import Foundation

class MockAPIManager: APIManager {
  func loadVehicles(success: @escaping (VehicleListResult) -> Void,
                    failure: @escaping NetworkErrorCallback) {
    let vehicle1 = VehicleJson(name: "Sand Crawler",
                               model: "Digger Crawler",
                               url: "https://swapi.dev/api/vehicles/4/",
                               cargoCapacity: "50000")
    let vehicle2 = VehicleJson(name: "TIE/LN starfighter",
                               model: "Twin Ion Engine/Ln Starfighter",
                               url: "https://swapi.dev/api/vehicles/8/",
                               cargoCapacity: "50000")
    let vehicles = [vehicle1, vehicle2]
    let result = VehicleListResult(count: 2,
                                   next: nil,
                                   previous: nil,
                                   results: vehicles)
    success(result)
  }
}
