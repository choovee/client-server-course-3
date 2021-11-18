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
    
    self.title = "Друзья"
  }
  
  private func myFriendsArray() -> [User] {
    
    return DataStorage.shared.allUsers
  }
  
  private func arrayOfFirstLetters() -> [String] {
    var resultArray = [String]()
    
    for item in myFriendsArray() {
      let firstLetter = String(item.firstName.prefix(1))
    
      if !resultArray.contains(firstLetter) {
        resultArray.append(firstLetter)
      }
    }
    
    return resultArray
  }
  
  private func getFirstLetterOfUsersName(letter: String) -> [User] {
    var resultArray = [User]()
    
    for item in myFriendsArray() {
      let firstLetter = String(item.firstName.prefix(1))
    
      if firstLetter == letter {
        resultArray.append(item)
      }
    }
    
    return resultArray
  }
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    return arrayOfFirstLetters().count
  }
  
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return getFirstLetterOfUsersName(letter: arrayOfFirstLetters()[section]).count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as! FriendsTableViewCell
    
    let arrayOfFriends = getFirstLetterOfUsersName(letter: arrayOfFirstLetters()[indexPath.section])
    cell.configureCell(object: arrayOfFriends[indexPath.row])
        
    return cell
  }
  
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let arrayOfFriends = getFirstLetterOfUsersName(letter: arrayOfFirstLetters()[indexPath.section])
    
    selectedUser = arrayOfFriends[indexPath.row]
    
    performSegue(withIdentifier: "fromFriendToPhotos", sender: self)
  }

  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)

    if segue.identifier == "fromFriendToPhotos", let destination = segue.destination as? FriendsPhotosViewController {
      destination.user = selectedUser

    }
  }
  
  
//  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//    return 60
//  }
  
  
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
    return arrayOfFirstLetters()[section].uppercased()
  }
  
  
  override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
    view.tintColor = tableView.tintColor
    
    let header = view as! UITableViewHeaderFooterView
    
    header.textLabel?.textColor = UIColor.white
  }
  
}
