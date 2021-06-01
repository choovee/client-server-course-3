//
//  GroupsSearchViewController.swift
//  VKClient
//
//  Created by Sereg on 18.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class GroupsSearchViewController: UITableViewController {
  
  let searchGroupsCell = "searchGroupsCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }
  
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return DataStorage.shared.allGroups.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: searchGroupsCell, for: indexPath) as? GroupsSearchTableViewCell else { return UITableViewCell() }

    cell.configure(object: DataStorage.shared.allGroups[indexPath.row])

    return cell
  }
  
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50.0
  }
  
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
    guard let cell = tableView.cellForRow(at: indexPath) as? GroupsSearchTableViewCell, let group = cell.addGroup else { return }
    
    var isEnableItem = false
    
    for item in DataStorage.shared.myGroups {
      if item.name == group.name {
        isEnableItem = true
      }
    }
    
    if !isEnableItem {
      DataStorage.shared.myGroups.append(group)
    }
  }
   

}
