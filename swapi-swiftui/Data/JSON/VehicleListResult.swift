//
//  VehicleListResult.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import Foundation

struct VehicleListResult: Codable {
  let count: Int
  let next: String?
  let previous: String?
  let results: [VehicleJson]
}
