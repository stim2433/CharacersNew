//
//  LocationViewContainer.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import UIKit



class LocationViewContainer: UIView {
    
    let markLocation = UIImageView()
    let locationLabel = UILabel()
    
    func configurationView() {
        markLocation.frame = CGRect(x: 0, y: 0, width: 8.4, height: 12)
        locationLabel.frame = CGRect(x: markLocation.frame.maxX, y: 0, width: frame.width, height: 17)
        
        markLocation.backgroundColor = .green
        locationLabel.text = "test"
        
        addSubview(markLocation)
        addSubview(locationLabel)
    }
}
