//
//  FriendsViewController.swift
//  VKClient
//
//  Created by Sereg on 18.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class FriendsViewController: UITableViewController {
  
  private let cellReuseIdentifier = "friendsCell"
  
  private var selectedUser: User?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return DataStorage.shared.allUsers.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as!  FriendsTableViewCell
    
    cell.configureCell(object: DataStorage.shared.allUsers[indexPath.row])
    
    return cell
  }
  
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    selectedUser = DataStorage.shared.allUsers[indexPath.row]
    
    performSegue(withIdentifier: "fromFriendToPhotos", sender: self)
  }

  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)

    if segue.identifier == "fromFriendToPhotos", let destination = segue.destination as? FriendsPhotosViewController {
      destination.user = selectedUser

    }
  }
}
