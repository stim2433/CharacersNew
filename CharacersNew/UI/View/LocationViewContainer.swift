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
        markLocation.frame = CGRect(x: 0, y: 12, width: 8.4, height: 12)
        markLocation.image = UIImage(named: "location.pdf")
        locationLabel.frame = CGRect(x: markLocation.frame.maxX + 7.8, y: 10, width: frame.width, height: 17)
        locationLabel.font = UIFont.systemFont(ofSize: 14)
        locationLabel.textColor = UIColor (red: 82/255, green: 82/255, blue: 82/255, alpha: 1)
//        82, 82, 82, 1
//        markLocation.backgroundColor = .green
        locationLabel.text = "test"
        
        addSubview(markLocation)
        addSubview(locationLabel)
    }
}
