//
//  MyPlacesTableViewController.swift
//  My Memories Places
//
//  Created by Сергей Голенко on 25.12.2020.
//

import UIKit


var places = [Dictionary<String,String>()]

class MyPlacesTableViewController: UITableViewController {
    
    var activePlace = -1
    
  
    var itemWill = "Love is"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if places.count == 1 && places[0].count == 0 {
            print(places.count)
            places.remove(at: 0)
            places.append(["name":"Kiev","lat":"545,656","lon":"334,56"])
            tableView.reloadData()
        }
        
    }
    // MARK:- Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        activePlace = indexPath.row
        performSegue(withIdentifier: "goToSecondVC", sender: nil)
      
     
          
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         
       //if places[indexPath.row]["name"] != nil{
            cell.textLabel?.text = places[indexPath.row]["name"]
        
        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
            if segue.identifier == "goToSecondVC" {
             if let twoVC =  segue.destination as? ViewController {
                twoVC.item = self.itemWill
               
                }
            }
        }
        
   
    
    
 


}
