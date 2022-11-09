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
        titleView.font = UIFont.systemFont(ofSize: 21)
        genderView.frame = CGRect(x: 0, y: titleView.frame.maxY + 4, width: frame.width, height: 17)
        genderView.font = UIFont.systemFont(ofSize: 14)
        watchViewContainer.frame = CGRect(x: 0, y: genderView.frame.maxY + 12, width: 148, height: 35)
        watchViewContainer.backgroundColor = UIColor(red: 255/255, green: 107/255, blue: 0/255, alpha: 0.1)
        watchViewContainer.layer.cornerRadius = watchViewContainer.frame.height / 2
        locationViewContainer.frame = CGRect(x: 0, y: watchViewContainer.frame.maxY, width: frame.width, height: 17)
        statusView.frame = CGRect(x: titleView.frame.maxX + 49, y: 0, width: 56, height: 25)
        statusView.layer.cornerRadius = statusView.frame.height / 2
        statusView.layer.masksToBounds = true
        statusView.font = UIFont.systemFont(ofSize: 14)
        statusView.textAlignment = .center
        statusView.backgroundColor = UIColor(red: 199/255, green: 255/255, blue: 185/255, alpha: 1)
        
        watchViewContainer.configurationView()
        locationViewContainer.configurationView()
        
        addSubview(titleView)
        addSubview(genderView)
        addSubview(watchViewContainer)
        addSubview(locationViewContainer)
        addSubview(statusView)
    }
}
