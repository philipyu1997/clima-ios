//
//  WeatherModel.swift
//  Clima
//
//  Created by Philip Yu on 4/1/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    
    // MARK: - Properties
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
    let conditionId: Int
    let city: String
    let temperature: Double
    
}
