//
//  TransportItemView.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import SwiftUI

struct TransportItemView: View {
  private let vehicle: VehicleJson
  
  init(vehicle: VehicleJson) {
    self.vehicle = vehicle
  }
  
  var body: some View {
    HStack {
      Image
        .vehicle
        .frame(width: 44, height: 44)
      
      VStack(alignment: .leading) {
        Text(vehicle.name)
          .font(.title2)
        Text(vehicle.model)
          .font(.caption)
      }
      
      Spacer()
      
      Text(vehicle.cargoCapacity)
        .font(.caption)
        .frame(alignment: .bottomTrailing)
    }
    .frame(alignment: .leading)
    
  }
}

struct TransportItemView_Previews: PreviewProvider {
  static var previews: some View {
    let vehicle = VehicleJson(name: "Sand Crawler",
                              model: "Digger Crawler",
                              url: "https://swapi.dev/api/vehicles/4/",
                              cargoCapacity: "50000")
    
    VStack {
      TransportItemView(vehicle: vehicle)
      TransportItemView(vehicle: vehicle)
    }
  }
}
