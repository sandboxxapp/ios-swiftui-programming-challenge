//
//  Image.swift
//  swapi-swiftui
//
//  Created by Hino Banzon on 2/3/22.
//

import SwiftUI

extension Image {
  static var starship: Image {
    return Image("Starship")
      .resizable()
  }
  
  static var vehicle: Image {
    return Image("Vehicle")
      .resizable()
  }
}
