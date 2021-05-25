//
//  ViewController.swift
//  VKClient
//
//  Created by Sergey Deryabin on 12.05.2021.
//  Copyright © 2021 Sergey Deryabin. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {
  
  
  @IBOutlet weak private var vkLogo: UIImageView!
  @IBOutlet weak private var vkLogoLabel: UILabel!
  @IBOutlet weak private var loginField: UITextField!
  @IBOutlet weak private var passwordField: UITextField!
  @IBOutlet weak private var enterButton: UIButton!
  
  let signInIdentifier = "signIn"
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
  }
  
  
  
  @IBAction func pressEnterButton(_ sender: UIButton) {
    let alert = UIAlertController(title: "Some trubbles", message: "Login or Password must contain 5 or more symbols", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    
    if loginField.text?.count ?? 0 >= 5 && passwordField.text?.count ?? 0 >= 5 {
      print("Welcome home")
      performSegue(withIdentifier: signInIdentifier, sender: nil)
    } else {
      self.present(alert, animated: true)
    }
  }
  
  
  
  
  
}

