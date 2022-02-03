//
//  VehicleJson.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import Foundation

struct VehicleJson: Codable, Identifiable {
  let name: String
  let model: String
  let url: String
  let cargoCapacity: String
  
  var id: String {
    return url
  }
  
  private enum CodingKeys: String, CodingKey {
    case name
    case model
    case url
    case cargoCapacity = "cargo_capacity"
  }
}
