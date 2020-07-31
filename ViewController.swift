//
//  ViewController.swift
//  ImmiRent
//
//  Created by Lola on 7/31/20.
//  Copyright © 2020 Karolina Dubiel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    var tenements = ["Mulberry Bend", "Mercer Street", "Greene Street", "Madison Avenue", "77th Street", "Amsterdam Avenue", "East 57th St", "169th Street", "Broadway Street", "West End Ave", "82nd St", "Mott Street", "Bleecker Street"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return tenements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        //Configuring the cell
        cell.textLabel?.text = tenements[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

