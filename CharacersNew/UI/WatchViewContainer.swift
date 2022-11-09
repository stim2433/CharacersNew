//
//  WatchViewContainer.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import UIKit


class WatchViewContainer: UIView {
    private let markImageView = UIImageView()
    let watchView = UILabel()
    
    
    func configurationView () {
        markImageView.frame = CGRect (x: 0, y: 0, width: 10, height: 12)
        watchView.frame = CGRect(x: markImageView.frame.maxX, y: 0, width: 106, height: 17)
        watchView.text = "Watch episodes"
        watchView.backgroundColor = .white
        
        
        addSubview(markImageView)
        addSubview(watchView)
    }
    
}
