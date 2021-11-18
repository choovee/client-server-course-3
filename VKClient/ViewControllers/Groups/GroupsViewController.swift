//
//  GroupsViewController.swift
//  VKClient
//
//  Created by Sereg on 18.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

protocol GroupsDelegate: AnyObject {
  func groupDidSelect(_ group: Group)
}

class GroupsViewController: UIViewController {
    
  @IBOutlet weak var searchBar: UISearchBar!
  @IBOutlet weak var myTableView: UITableView!
  
  let reuseIdentifierGroupsCell = "reuseIdentifierGroupsCell"
  var filteredArray = [Group]()//DataStorage.shared.myGroups
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "Мои группы"
    
    myTableView.register(UINib(nibName: "GroupsTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierGroupsCell)
  }
  
}


extension GroupsViewController: UITableViewDelegate, UITableViewDataSource {
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return filteredArray.count
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierGroupsCell, for: indexPath) as? GroupsTableViewCell else { return UITableViewCell() }
    
    cell.configure(object: filteredArray[indexPath.row])
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50.0
  }
  
  
//  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//    filteredArray.remove(at: indexPath.row)
//
//    myTableView.reloadData()
//  }
  
}


extension GroupsViewController: GroupsDelegate {
  
  func groupDidSelect(_ group: Group) {
    if !filteredArray.contains(group) {
      filteredArray.append(group)
      myTableView.reloadData()
    }
  }
  
}
