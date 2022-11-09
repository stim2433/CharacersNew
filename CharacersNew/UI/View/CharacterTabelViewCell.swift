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
        avatar.frame = CGRect(x: 24, y: 16, width: frame.height - 32, height: frame.height - 32)
        content.frame = CGRect(x: avatar.frame.maxX + 18, y: 16, width: frame.width - frame.height - 18, height: frame.height - 32)
        avatar.layer.masksToBounds = true
        avatar.layer.cornerRadius = avatar.frame.height / 4
        content.configurationView()
        addSubview(avatar)
        addSubview(content)
    }
}
