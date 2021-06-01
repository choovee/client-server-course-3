//
//  FriendsPhotosCollectionViewCell.swift
//  VKClient
//
//  Created by Sereg on 24.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class FriendsPhotosCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var friendPhoto: UIImageView!
  
  func clearAll() {
    friendPhoto.image = nil
  }
  
  override func prepareForReuse() {
    clearAll()
  }
  
  func configure(object: User, indexPath: IndexPath) {
    friendPhoto.image = object.photosArray?[indexPath.item]
  }

}
