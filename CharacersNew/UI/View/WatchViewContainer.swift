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
        markImageView.frame = CGRect (x: 12, y: 13, width: 10, height: 12)
        markImageView.image = UIImage(named: "playPdf.pdf")
        watchView.frame = CGRect(x: markImageView.frame.maxX + 6, y: 10, width: 106, height: 17)
        watchView.font = UIFont.systemFont(ofSize: 14)
        watchView.textColor = UIColor(red: 255/255, green: 107/255, blue: 0/255, alpha: 1)
        watchView.text = "Watch episodes"
//        watchView.backgroundColor = .white
        
        
        addSubview(markImageView)
        addSubview(watchView)
    }
    
}
