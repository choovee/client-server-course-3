//
//  GroupsViewController.swift
//  VKClient
//
//  Created by Sereg on 18.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class GroupsViewController: UITableViewController {
  
  let cellReuseIdentifier = "groupsCell"
  
//  var arrayOfGroups = [Group]()
  
  override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
    
      self.tableView.reloadData()
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return DataStorage.shared.myGroups.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! GroupsTableViewCell
    
    cell.configure(object: DataStorage.shared.myGroups[indexPath.row])
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return 50.0
  }
  
  override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
  
      DataStorage.shared.myGroups.remove(at: indexPath.row)
      self.tableView.reloadData()
  
  
  }
  
  
}
