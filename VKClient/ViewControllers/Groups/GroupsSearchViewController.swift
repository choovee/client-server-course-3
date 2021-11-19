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
  weak var delegate: GroupsDelegate?
  var filteredArray = DataStorage.shared.allGroups
  
  @IBOutlet weak var searchBar: UISearchBar!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    self.title = "Все группы"
  }
  
  
  // MARK: - Table view data source
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return filteredArray.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: searchGroupsCell, for: indexPath) as? GroupsSearchTableViewCell else { return UITableViewCell() }

    cell.configure(object: filteredArray[indexPath.row])

    return cell
  }
  
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50.0
  }
  
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let group = filteredArray[indexPath.row]
    delegate?.groupDidSelect(group)
    navigationController?.popViewController(animated: true)
  }

}
