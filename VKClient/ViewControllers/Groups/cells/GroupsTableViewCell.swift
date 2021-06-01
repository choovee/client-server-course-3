//
//  GroupsTableViewCell.swift
//  VKClient
//
//  Created by Sereg on 25.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {
  
  @IBOutlet weak var groupAvatar: UIImageView!
  @IBOutlet weak var groupName: UILabel!
  @IBOutlet weak var groupDescription: UILabel!
  
  func clearAll() {
    groupName.text = nil
    groupAvatar.image = nil
    groupDescription.text = nil
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    
    clearAll()
  }
  
  func configure(object: Group) {
    groupName.text = object.name
    groupAvatar.image = object.avatar
    groupDescription.text = object.description
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }

}
