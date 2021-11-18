//
//  FriendsPhotosCollectionViewController.swift
//  VKClient
//
//  Created by Sereg on 18.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class FriendsPhotosViewController: UICollectionViewController {
  
  private let reuseIdentifier = "friendsPhotosCell"
  var user: User?
  
  private let sectionInsets = UIEdgeInsets(top: 10.0, left: 8.0, bottom: 0.0, right: 8.0)
  private let minimumItemSpacing: CGFloat = 10
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    self.title = "Фото"
  }
  
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    guard let int = user?.photosArray?.count else { return 1 }
    
    return int
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? FriendsPhotosCollectionViewCell else { return UICollectionViewCell() }
    
    cell.friendPhoto.image = user?.photosArray?[indexPath.item]
    
    return cell
  }

  
}

extension FriendsPhotosViewController: UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 359, height: 413)
  }

  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      insetForSectionAt section: Int) -> UIEdgeInsets {
    return sectionInsets
  }

  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return minimumItemSpacing
  }

  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return minimumItemSpacing
  }
  
}

