//
//  Session.swift
//  VKClient
//
//  Created by Sereg on 18.11.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class Session {
  
  static let instance = Session()

  private init(){}
  
  var token = ""
  var userId = 0
  
}
