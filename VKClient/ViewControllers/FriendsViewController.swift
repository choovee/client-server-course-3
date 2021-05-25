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
  
  private var arrayOfFriends = [User]()

  private var selectedUser: User?
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    addData()
  }
  
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrayOfFriends.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as!  FriendsTableViewCell
    
    cell.configureCell(object: arrayOfFriends[indexPath.row])
    
    return cell
  }
  
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    selectedUser = arrayOfFriends[indexPath.row]
    
    performSegue(withIdentifier: "fromFriendToPhotos", sender: self)
  }

  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
          
    if segue.identifier == "fromFriendToPhotos", let destination = segue.destination as? FriendsPhotosViewController {
      destination.user = selectedUser
      
    }
  }
}


extension FriendsViewController {
  private func addData() {
    arrayOfFriends.append(User(avatar: UIImage(named: "cosmos1"), name: "Cosmos", photosArray: [UIImage(imageLiteralResourceName: "cosmos1"), UIImage(imageLiteralResourceName: "cosmos2"), UIImage(imageLiteralResourceName: "cosmos3"), UIImage(imageLiteralResourceName: "cosmos4"), UIImage(imageLiteralResourceName: "cosmos5")]))
    arrayOfFriends.append(User(avatar: UIImage(named: "desert4"), name: "Desert", photosArray: [UIImage(imageLiteralResourceName: "desert1"), UIImage(imageLiteralResourceName: "desert2"), UIImage(imageLiteralResourceName: "desert3"), UIImage(imageLiteralResourceName: "desert4"), UIImage(imageLiteralResourceName: "desert5")]))

    
    tableView.reloadData()
  }
}
