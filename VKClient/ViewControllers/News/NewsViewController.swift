//
//  NewsViewController.swift
//  VKClient
//
//  Created by Sereg on 03.06.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {
  
  @IBOutlet weak var newsTableView: UITableView!
  
  let reuseIdentifierNewsCell = "reuseIdentifierNewsCell"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    newsTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierNewsCell)
    
    self.title = "Новости"
  }
    

}


extension NewsViewController: UITableViewDelegate, UITableViewDataSource {
  
  
  func numberOfSections(in tableView: UITableView) -> Int {
      return DataStorage.shared.allNews.count
  }

  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return DataStorage.shared.allNews.count
  }
  
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifierNewsCell) as? NewsTableViewCell else { return UITableViewCell() }
    
    cell.configure(object: DataStorage.shared.allNews[indexPath.row])
    
    return cell
  }
  
  
  
}
