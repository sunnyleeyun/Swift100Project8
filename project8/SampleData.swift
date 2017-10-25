//
//  SampleData.swift
//  project8
//
//  Created by Mac on 2017/10/25.
//  Copyright © 2017年 Sunny, Lee. All rights reserved.
//

import Foundation

final class SampleData{
  
  static func generateMoviesData() -> [Movie] {
    return [
      Movie(movieName: "Iron Man"),
      Movie(movieName: "Ratatouille"),
      Movie(movieName: "The Matrix"),
      Movie(movieName: "Office Space"),
      Movie(movieName: "Shaolin Soccer"),
    ]
  }
}
