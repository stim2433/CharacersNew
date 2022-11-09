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
    let watchView = UIView()
    let locationView = UIView()
    let statusView = UILabel()
    
    
    func configurationView() {
        titleView.frame = CGRect(x: 0, y: 0, width: 137, height: 25)
        genderView.frame = CGRect(x: 0, y: titleView.frame.maxY, width: 87, height: 17)
        watchView.frame = CGRect(x: 0, y: genderView.frame.maxY, width: 148, height: 35)
        locationView.frame = CGRect(x: 0, y: watchView.frame.maxY, width: frame.width, height: 17)
        statusView.frame = CGRect(x: titleView.frame.maxX, y: 0, width: 56, height: 25)
        
        titleView.backgroundColor = .red
        
        addSubview(titleView)
        addSubview(genderView)
        addSubview(watchView)
        addSubview(locationView)
        addSubview(statusView)
    }
}
