//
//  CharacterHeaderView.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import UIKit

class CharacterHeaderView: UITableViewHeaderFooterView {
    let header = UILabel()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
//        configurationHeaderView()
    }
    
    func configurationHeaderView () {
        header.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        header.backgroundColor = .green
        contentView.addSubview(header)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
