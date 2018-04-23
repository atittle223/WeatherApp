//
//  Weather.swift
//  WeatherApp
//
//  Created by Andrew Tittle on 4/22/18.
//  Copyright © 2018 Andrew Tittle. All rights reserved.
//

import Foundation

class Weather: Codable {
    let forecast: Forecast
    
}

struct Forecast: Codable {
    let forecastText: ForecastText
    
    private enum CodingKeys: String, CodingKey {
        case forecastText = "txt_forecast"
    }
}

struct ForecastText: Codable {
    let date: String
    let forecastDays: [ForecastDay]
    
    private enum CodingKeys: String, CodingKey {
        case date
        case forecastDays = "forecastday"
    }
}

struct ForecastDay: Codable {
    let iconUrl: URL
    let day: String
    let description: String
    
    private enum CodingKeys: String, CodingKey {
        case iconUrl = "icon_url"
        case day = "title"
        case description = "fcttext"
    }
}
