//
//  NewsTableViewCell.swift
//  VKClient
//
//  Created by Sereg on 03.06.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var mainPhoto: UIImageView!
  @IBOutlet weak var descriptionLabel: UILabel!
  
  
  @IBOutlet weak var likeButton: UIButton!
  @IBOutlet weak var commentButton: UIButton!
  @IBOutlet weak var shareButton: UIButton!
  @IBOutlet weak var viewsIndicatorLabel: UILabel!
  
  var viewsCounter = 0
  var likeCounter = 0
  var commentCounter = 0
  var shareCounter = 0
  
  func clear() {
    nameLabel.text = nil
    mainPhoto.image = nil
    descriptionLabel.text = nil
  }
  
  override func prepareForReuse() {
    clear()
  }
  
  func configure(object: News) {
    nameLabel.text = object.name
    mainPhoto.image = object.mainPhoto
    descriptionLabel.text = object.description
  }
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }
  
  
  
  @IBAction func pressLikeButton(_ sender: Any) {
    
    
  }
  
  
  
  @IBAction func pressCommentButton(_ sender: Any) {
    
    
  }
  
  
  
  @IBAction func pressShareButton(_ sender: Any) {
    
    
  }
  
}
