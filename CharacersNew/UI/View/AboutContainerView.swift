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
        statusView.frame.size.height = 25
        statusView.layer.cornerRadius = statusView.frame.height / 2
        statusView.layer.masksToBounds = true
        statusView.font = UIFont.systemFont(ofSize: 14)
        statusView.textAlignment = .center
        
        watchViewContainer.configurationView()
        locationViewContainer.configurationView()
        
        addSubview(titleView)
        addSubview(genderView)
        addSubview(watchViewContainer)
        addSubview(locationViewContainer)
        addSubview(statusView)
    }
    
    func setStatus() {

        let value = statusView.text
        
        guard let value = value else { return }
        switch Status(rawValue: value) {
        case .alive:
            statusView.backgroundColor = UIColor(red: 199/255, green: 255/255, blue: 185/255, alpha: 1)
            statusView.textColor = UIColor (red: 49/255, green: 159/255, blue: 22/255, alpha: 1)
            statusView.frame = CGRect(x: titleView.frame.maxX + 49, y: 0, width: 56, height: 25)
        case .dead:
            statusView.backgroundColor = UIColor(red: 255/255, green: 232/255, blue: 224/255, alpha: 1)
            statusView.textColor = UIColor (red: 233/255, green: 56/255, blue: 0/255, alpha: 1)
            statusView.frame = CGRect(x: titleView.frame.maxX + 50, y: 0, width: 55, height: 25)
        case .unknown:
            statusView.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
            statusView.textColor = UIColor (red: 160/255, green: 160/255, blue: 160/255, alpha: 1)
            statusView.frame = CGRect(x: titleView.frame.maxX + 16, y: 0, width: 92, height: 25)
        case .none:
            statusView.backgroundColor = .white

        }

    }
}


enum Status: String {
    case alive = "alive"
    case dead = "dead"
    case unknown = "unknown"
    
    init?(rawValue: String) {
        switch rawValue {
        case "Alive":
            self = .alive
        case "Dead":
            self = .dead
        case "unknown":
            self = .unknown
        default:
            self = .alive
        }
    }
}
