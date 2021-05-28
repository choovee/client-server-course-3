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
  
  var arrayOfGroups = [Group]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addData()
  }
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrayOfGroups.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! GroupsTableViewCell
    
    cell.configure(object: arrayOfGroups[indexPath.row])
    
    return cell
  }
  
  
}

extension GroupsViewController {
  
  func addData() {
    arrayOfGroups.append(Group(name: "Nasa", avatar: UIImage(named: "nasa"), description: nil))
    arrayOfGroups.append(Group(name: "Roscosmos", avatar: UIImage(named: "roscosmos"), description: nil))
    
    tableView.reloadData()
  }
  
}
