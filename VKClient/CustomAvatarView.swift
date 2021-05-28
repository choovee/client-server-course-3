//
//  CustomAvatarView.swift
//  VKClient
//
//  Created by Sereg on 28.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class CustomAvatarView: UIView {

  func setupAvatarView(_ image: UIImageView) {
    self.backgroundColor = UIColor.clear
    self.layer.shadowColor = UIColor.black.cgColor
    self.layer.shadowOffset = CGSize.zero
    self.layer.shadowOpacity = 0.5
    self.layer.shadowRadius = 3
    self.layer.cornerRadius = self.frame.width / 2
    
    image.frame = image.bounds
    image.layer.cornerRadius = image.frame.width / 2
    image.layer.borderColor = UIColor.white.cgColor
    image.layer.borderWidth = 1.0
    image.layer.masksToBounds = true
    
    self.addSubview(image)
  }

}
