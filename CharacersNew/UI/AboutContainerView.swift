//
//  AboutContainerView.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import UIKit


class AboutContainerView: UIView {
    
    let titleView = UILabel()
    let genderView = UILabel()
    let watchViewContainer = WatchViewContainer()
    let locationViewContainer = LocationViewContainer()
    let statusView = UILabel()
    
    
    func configurationView() {
        titleView.frame = CGRect(x: 0, y: 0, width: 137, height: 25)
        genderView.frame = CGRect(x: 0, y: titleView.frame.maxY, width: 87, height: 17)
        watchViewContainer.frame = CGRect(x: 0, y: genderView.frame.maxY, width: 148, height: 35)
        locationViewContainer.frame = CGRect(x: 0, y: watchViewContainer.frame.maxY, width: frame.width, height: 17)
        statusView.frame = CGRect(x: titleView.frame.maxX, y: 0, width: 56, height: 25)
        
        watchViewContainer.configurationView()
        locationViewContainer.configurationView()
        
        addSubview(titleView)
        addSubview(genderView)
        addSubview(watchViewContainer)
        addSubview(locationViewContainer)
        addSubview(statusView)
    }
}
