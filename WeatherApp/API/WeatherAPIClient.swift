//
//  WeatherAPIClient.swift
//  WeatherApp
//
//  Created by Andrew Tittle on 4/22/18.
//  Copyright © 2018 Andrew Tittle. All rights reserved.
//

import Foundation

class WeatherAPIClient: APIClient {
    var session: URLSession
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    func weather(with endpoint: WeatherEndpoint, completion: @escaping (Either<ForecastText, APIError>) -> Void) {
        let request = endpoint.request
        self.fetch(with: request) { (either: Either<Weather, APIError>) in
            switch either {
            case .value(let weather):
                let textForecast = weather.forecast.forecastText
                completion(.value(textForecast))
            case .error(let error):
                completion(.error(error))
            }
        }
    }
}
