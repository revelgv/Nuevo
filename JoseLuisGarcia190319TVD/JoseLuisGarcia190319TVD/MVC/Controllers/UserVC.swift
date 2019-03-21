//
//  ViewController.swift
//  JoseLuisGarcia190319TVD
//
//  Created by Universidad Politecnica de gómez Palacio on 3/21/19.
//  Copyright © 2019 Universidad Politecnica de gómez Palacio. All rights reserved.
//

import UIKit

class UserVC: UIViewController
{
    var users: [User] = []
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setUsersDefault()
    }
    func setUsersDefault()
    {
        self.users.append(User(fristName: "Joseluis", lastName: "Garcia"))
         self.users.append(User(fristName: "Paulo", lastName: "Luma"))
         self.users.append(User(fristName: "Chilis", lastName: "Escalona"))
         self.users.append(User(fristName: "Joseluis", lastName: "Meza"))
         self.users.append(User(fristName: "Orlando", lastName: "Gallardo"))
        
    }
}
    extension UserVC: UITableViewDataSource
    {
  
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.users.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTVCell" , for: indexPath) as! UserTVCellTableViewCell
        
        
        let user: User = self.users[indexPath.row]
        cell.lblUsername.text = "\(user.fristName!) \(user.lastName!)"
        return cell
    }
 
   }
extension UserVC: UITableViewDelegate
{
    func tableview(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("didSelectRowAt.indexPath.row \(indexPath.row)")
    }
}

