//
//  DataStorage.swift
//  VKClient
//
//  Created by Sereg on 01.06.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class DataStorage: NSObject {
  
  static let shared = DataStorage()

  private override init() {
    super.init()
  }
  
  var allUsers = [User]()
  var allGroups = [Group]()
  var myGroups = [Group]()
  var allNews = [News]()

}
