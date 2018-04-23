//
//  WeatherCellViewModel.swift
//  WeatherApp
//
//  Created by Andrew Tittle on 4/22/18.
//  Copyright © 2018 Andrew Tittle. All rights reserved.
//

import UIKit

struct WeatherCellViewModel {
    let url: URL
    let day: String
    let description: String
    
    
   func loadImage(completion: @escaping (UIImage?) -> Void) {
        guard let imageData = try? Data(contentsOf: url) else {
            return
        }
        
        let image = UIImage(data: imageData)
        DispatchQueue.main.async {
            completion(image)
        }
        
    }
}
/* func loadImage(completion: @escaping (UIImage?) -> Void) {
 DispatchQueue.global(qos: .background).async {
 guard let imageData = try? Data(contentsOf: self.imageUrl) else { return }
 DispatchQueue.main.async {
 completion(UIImage(data: imageData))
 }
 }
 } */
