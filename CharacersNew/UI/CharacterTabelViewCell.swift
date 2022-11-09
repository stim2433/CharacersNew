//
//  CharacterTabelViewCell.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import UIKit


class CharacterTabelViewCell: UITableViewCell {
    
    let avatar = UIImageView()
    let content = AboutContainerView ()
    
    func configurationView () {
        avatar.frame = CGRect(x: 0, y: 0, width: frame.height, height: frame.height)
        content.frame = CGRect(x: avatar.frame.maxX, y: 0, width: frame.width - frame.height, height: frame.height)
        
//        avatar.backgroundColor = .green
        content.configurationView()
        addSubview(avatar)
        addSubview(content)
    }
    
    
}
