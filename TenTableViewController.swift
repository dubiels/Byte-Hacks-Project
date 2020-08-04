//
//  TenTableViewController.swift
//  ImmiRent
//
//  Created by Lola on 8/1/20.
//  Copyright © 2020 Karolina Dubiel. All rights reserved.
//

import UIKit

class TenTableViewController: UITableViewController

{
    
    var tenement:[Tenement] = [Tenement(name: "Horatio Street", burough: "West Village", latitude: 40.738760, longitude: -74.005882, image: "horatiostreet", tag1: "icons8-family-100-2", tag2: "icons8-hazard-warning-flasher-80"), Tenement(name: "Mulberry Street", burough: "Lower Manhattan" , latitude: 40.719408, longitude: 73.997297, image: "mulberrystreet", tag1: "", tag2: ""), Tenement(name: "Washington Street", burough: "Brooklyn", latitude: 40.722982, longitude: -74.010415, image: "washingtonstreet", tag1: "icons8-family-100-2", tag2: "icons8-money-70"), Tenement(name: "Mercer Street", burough: "Lower Manhattan", latitude: 40.725610, longitude: -73.997801, image: "mercerstreet", tag1: "", tag2: ""), Tenement(name: "Greene Street", burough: "Soho", latitude: 40.723536, longitude: -74.000585, image: "greenestreet", tag1: "", tag2: "icons8-hazard-warning-flasher-80"), Tenement(name: "Madison Avenue", burough: "Lower East Side", latitude: 40.778667, longitude: -73.960354, image: "madisonavenue", tag1: "", tag2: ""), Tenement(name: "77th Street", burough: "Brooklyn", latitude: 40.765342, longitude:  -73.891838, image: "77thstreet", tag1: "icons8-family-100-2", tag2: "icons8-hazard-warning-flasher-80"), Tenement(name: "Amesterdam Avenue", burough: "Harlem", latitude: 40.813560, longitude: -73.956128, image: "amsterdamavenue", tag1: "", tag2: "icons8-money-70"), Tenement(name: "East 57th Street", burough: "Lenox Hill", latitude: 40.760121, longitude: -73.967170, image: "east57thstreet", tag1: "", tag2: ""), Tenement(name: "169th Street", burough: "The Bronx", latitude: 40.832957, longitude: -73.905633, image: "169thstreet", tag1: "", tag2: "icons8-hazard-warning-flasher-80"), Tenement(name: "Broadway Street", burough: "Yonkers", latitude: 40.945470, longitude: -73.894003, image: "broadwaystreet", tag1: "icons8-family-100-2", tag2: "icons8-money-70"), Tenement(name: "West End Avenue", burough: "Manhattan", latitude: 40.787002, longitude: -73.979331, image: "westendavenue", tag1: "", tag2: ""), Tenement(name: "82nd Street", burough: "Queens", latitude: 40.761329, longitude: -73.886387, image: "82ndstreet", tag1: "", tag2: "icons8-money-70"), Tenement(name: "Mott Street", burough: "Lower Manhattan", latitude: 40.719818, longitude: -73.996172, image: "mottstreet", tag1: "", tag2: "icons8-family-100-2"), Tenement(name: "Bleecker Street", burough: "West Village", latitude: 40.728924, longitude: -74.000354, image: "bleeckerstreet", tag1: "", tag2: "")]
    
    var searchController : UISearchController!
    var searchResults : [Tenement] = []
    
    override func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TenTableViewCell
    
        //configuring main name label in cell
        cell.nameLabel?.text = tenement[indexPath.row].name
        //cell.nameLabel?.sizeToFit()
        
        //configuring thumbnail image
        cell.thumbnail?.image = UIImage(named: tenement[indexPath.row].image)
        cell.thumbnail?.layer.masksToBounds = true
        cell.thumbnail?.layer.cornerRadius = ((cell.thumbnail?.bounds.width)!)/2
        cell.thumbnail?.clipsToBounds = true
        
        //configuring location label
        cell.locationLabel?.text = tenement[indexPath.row].burough
        
        //configuring tag1 imageview
        cell.tag1?.image = UIImage(named: tenement[indexPath.row].tag1)
        
        //configuring tag2 imageview
        cell.tag2?.image = UIImage(named: tenement[indexPath.row].tag2)
        
        //configuring search controller
//        searchController = UISearchController(searchResultsController: nil)
//        self.navigationItem.searchController = searchController
        
        return cell
    }

//    func filterContent(for searchText : String)
//    {
//        searchResults = tenement.filter({(tenement) -> Bool in
//            if let name : String = tenement.name
//            {
//                let isMatch = name.localizedCaseInsenstiveContains(searchText)
//
//                return isMatch
//            }
//            return false
//        })
//    }
       
    override func viewDidLoad()
    {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        // #warning Incomplete implementation, return the number of rows
        return tenement.count
    }

 
    override func prepare(for segue: UIStoryboardSegue, sender : Any?)
    {
        if segue.identifier == "showTenDetail"
        {
            if let indexPath = tableView.indexPathForSelectedRow
            {
                let destinationController = segue.destination as! DetailViewController
                destinationController.tenement = tenement[indexPath.row]
            }
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
//    //list of tenements included in app
//      var tenements = ["Horatio Street", "Mulberry Street", "Washington Street", "Mercer Street", "Greene Street", "Madison Avenue", "77th Street", "Amsterdam Avenue", "East 57th Street", "169th Street", "Broadway Street", "West End Avenue", "82nd Street", "Mott Street", "Bleecker Street"]
//
//      //names of thumbnail images for tenements
//      var tenementImages = ["horatiostreet", "mulberrystreet", "washingtonstreet", "mercerstreet", "greenestreet", "madisonavenue", "77thstreet", "amsterdamavenue", "east57thstreet", "169thstreet", "broadwaystreet", "westendavenue", "82ndstreet", "mottstreet", "bleeckerstreet"]
//
//      //coordinates of respective tenements
//      var coordinates = ["40.738760, -74.005882", "40.719408, -73.997297", "40.722982, -74.010415", "40.725610, -73.997801","40.723536, -74.000585","40.778667, -73.960354", "40.765342, -73.891838", "40.813560, -73.956128", "40.760121, -73.967170", "40.832957, -73.905633", "40.945470, -73.894003", "40.787002, -73.979331", "40.761329, -73.886387", "40.719818, -73.996172", "40.728924, -74.000354"]
//
//      var burough = ["West Village","Lower Manhattan","Brooklyn","Lower Manhattan","Soho","Lower East Side","Brooklyn","Harlem","Lenox Hill","The Bronx", "Yonkers", "Manhattan", "Queens", "Lower Manhattan", "West Village"]
//
//      //tag1 images
//      var tag1Images = ["icons8-family-100-2", "", "icons8-family-100-2", "", "", "", "icons8-family-100-2", "", "", "", "", "icons8-hazard-warning-flasher-80", "", "", "", ""]
//      //tag2 images
//      var tag2Images = ["icons8-hazard-warning-flasher-80", "", "icons8-money-70", "", "icons8-hazard-warning-flasher-80", "", "icons8-hazard-warning-flasher-80", "", "icons8-money-70", "", "", "icons8-money-70", "", "", "icons8-family-100-2", ""]

}
