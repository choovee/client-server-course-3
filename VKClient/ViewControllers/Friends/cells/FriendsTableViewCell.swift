//
//  FriendsTableViewCell.swift
//  VKClient
//
//  Created by Sereg on 20.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
  
  @IBOutlet weak var friendAvatarImage: UIImageView!
  @IBOutlet weak var customAvatarView: CustomAvatarView!
  @IBOutlet weak var friendNameLabel: UILabel!
  
  
  func clearCell() {
    friendAvatarImage.image = nil
    friendNameLabel.text = nil
  }
  
  
  override func prepareForReuse() {
    clearCell()
  }
  
  
  func configureCell(object: User) {
    friendAvatarImage.image = object.avatar
    friendNameLabel.text = object.name
  
    customAvatarView.setupAvatarView(friendAvatarImage)
  }
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  
}
