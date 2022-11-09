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
        avatar.frame = CGRect(x: 24, y: 16, width: 120, height: 120)
        content.frame = CGRect(x: avatar.frame.maxX + 18, y: 16, width: frame.width - frame.height - 18, height: frame.height - 32)
        avatar.layer.masksToBounds = true
        avatar.layer.cornerRadius = avatar.frame.height / 4
        content.configurationView()
        addSubview(avatar)
        addSubview(content)
    }
}

extension UIImage {
func inverseImage(cgResult: Bool) -> UIImage? {
    let coreImage = UIKit.CIImage(image: self)
    guard let filter = CIFilter(name: "CIPhotoEffectMono") else { return nil }
    filter.setValue(coreImage, forKey: kCIInputImageKey)
    guard let result = filter.value(forKey: kCIOutputImageKey) as? UIKit.CIImage else { return nil }
    if cgResult { // I've found that UIImage's that are based on CIImages don't work with a lot of calls properly
        return UIImage(cgImage: CIContext(options: nil).createCGImage(result, from: result.extent)!)
    }
    return UIImage(ciImage: result)
  }
}
