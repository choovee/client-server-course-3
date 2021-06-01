//
//  CustomTabBarController.swift
//  VKClient
//
//  Created by Sereg on 01.06.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    addData()
  }
  
  
  func addData() {
    
    var usersArray = [User]()
    
    usersArray.append(User(avatar: UIImage(named: "cosmos1"), name: "Cosmos", photosArray: [UIImage(imageLiteralResourceName: "cosmos1"), UIImage(imageLiteralResourceName: "cosmos2"), UIImage(imageLiteralResourceName: "cosmos3"), UIImage(imageLiteralResourceName: "cosmos4"), UIImage(imageLiteralResourceName: "cosmos5")]))
    usersArray.append(User(avatar: UIImage(named: "desert4"), name: "Desert", photosArray: [UIImage(imageLiteralResourceName: "desert1"), UIImage(imageLiteralResourceName: "desert2"), UIImage(imageLiteralResourceName: "desert3"), UIImage(imageLiteralResourceName: "desert4"), UIImage(imageLiteralResourceName: "desert5")]))
    
    var groupsArray = [Group]()
    
    groupsArray.append(Group(name: "Nasa", avatar: UIImage(named: "nasa"), description: "nil"))
    groupsArray.append(Group(name: "Roscosmos", avatar: UIImage(named: "roscosmos"), description: nil))
    
    DataStorage.shared.allUsers = usersArray
    DataStorage.shared.allGroups = groupsArray
  }

}
