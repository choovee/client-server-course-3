//
//  GroupsSearchTableViewCell.swift
//  VKClient
//
//  Created by Sereg on 01.06.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class GroupsSearchTableViewCell: UITableViewCell {
  
  @IBOutlet weak var groupAvatar: UIImageView!
  @IBOutlet weak var groupName: UILabel!
  @IBOutlet weak var groupDescription: UILabel!
  
  var addGroup: Group?
  
  func clearAll() {
    groupName.text = nil
    groupAvatar.image = nil
    groupDescription.text = nil
    
    addGroup = nil
  }
  
  override func prepareForReuse() {
    super.prepareForReuse()
    
    clearAll()
  }
  
  func configure(object: Group) {
    groupName.text = object.name
    groupAvatar.image = object.avatar
    groupDescription.text = object.description
    
    addGroup = object
  }
  
  
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

  }

}
