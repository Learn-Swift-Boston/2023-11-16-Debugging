//
//  CurrentWeather.swift
//  DebuggingDemo
//
//  Created by Matthew Dias on 4/11/20.
//  Copyright © 2020 Matthew Dias. All rights reserved.
//

import Foundation

typealias JSON = [String: Any]

struct CurrentWeather {
    
    let cityName: String
    let condition: String
    let feelsLike: Double
    let windSpeed: Double
    let iconId: String
    
    init(from json: JSON) {
        let main = json["main"] as! JSON
        let weather = (json["weather"] as! [JSON]).first!
        let wind = json["wind"] as! JSON
        
        self.cityName = json["name"] as! String
        self.condition = weather["description"] as! String
        self.feelsLike = main["feels_like"] as! Double
        self.windSpeed = wind["speed"] as! Double
        self.iconId = weather["icon"] as! String
    }
}
