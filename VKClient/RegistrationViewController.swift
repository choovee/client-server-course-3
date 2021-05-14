//
//  RegistrationViewController.swift
//  VKClient
//
//  Created by Sereg on 14.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

final class RegistrationViewController: UIViewController {

  @IBOutlet weak private var registrationButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }
    
    
  @IBAction func pressRegistrationButton(_ sender: UIButton) {
    if let url = URL(string: "https://vk.com/"), UIApplication.shared.canOpenURL(url) {
      UIApplication.shared.open(url, options: [:])
    }
  }
  

  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destination.
      // Pass the selected object to the new view controller.
  }
  */

}
