//
//  CustomTabBarController.swift
//  VKClient
//
//  Created by Sereg on 01.06.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    addData()
  }
  
  
  func addData() {
    
    var usersArray = [User]()
    
    usersArray.append(User(avatar: UIImage(named: "cosmos1"), firstName: "Cosmos", lastName: "Star", photosArray: [UIImage(imageLiteralResourceName: "cosmos1"), UIImage(imageLiteralResourceName: "cosmos2"), UIImage(imageLiteralResourceName: "cosmos3"), UIImage(imageLiteralResourceName: "cosmos4"), UIImage(imageLiteralResourceName: "cosmos5")]))
    usersArray.append(User(avatar: UIImage(named: "desert4"), firstName: "Desert", lastName: "Eagle", photosArray: [UIImage(imageLiteralResourceName: "desert1"), UIImage(imageLiteralResourceName: "desert2"), UIImage(imageLiteralResourceName: "desert3"), UIImage(imageLiteralResourceName: "desert4"), UIImage(imageLiteralResourceName: "desert5")]))
    
    
    var groupsArray = [Group]()
    
    groupsArray.append(Group(name: "Nasa", avatar: UIImage(named: "nasa"), description: "nil"))
    groupsArray.append(Group(name: "Roscosmos", avatar: UIImage(named: "roscosmos"), description: nil))
    
    
    var newsArray = [News]()
    
    newsArray.append(News(name: "НОВАТЭК вывел новую линию завода проекта «Ямал СПГ» на полную мощность", mainPhoto: UIImage(named: "testNews")!, description: "После продолжавшейся более года пусконаладки четвёртая линия завода НОВАТЭКа «Ямал СПГ» мощностью 0,95 млн тонн в год вышла на стопроцентную загрузку. Выход линии в промышленную эксплуатацию может добавить к производству НОВАТЭКа до 0,5 млн тонн СПГ во втором полугодии 2021 года.", otherPhotos: nil))
    
    DataStorage.shared.allUsers = usersArray
    DataStorage.shared.allGroups = groupsArray
    DataStorage.shared.allNews = newsArray
  }

}
