//
//  UsersTVCTableViewController.swift
//  JoseLuisGarcia190319TVD
//
//  Created by Universidad Politecnica de gómez Palacio on 3/21/19.
//  Copyright © 2019 Universidad Politecnica de gómez Palacio. All rights reserved.
//

import UIKit

class UsersTVCTableViewController: UITableViewController
{

    let usernames: [String] = ["Joseluis", "Paulo", "Bryan", "Chilis"]
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        
    }

   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return self.usernames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userTVCell" , for: indexPath) as! UserTVCellTableViewCell
        let username: String = self.usernames[indexPath.row]
        cell.lblUsername.text = username
        return cell
    }
}
