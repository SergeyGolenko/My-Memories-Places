//
//  MyPlacesTableViewController.swift
//  My Memories Places
//
//  Created by Сергей Голенко on 25.12.2020.
//

import UIKit


var places = [Dictionary<String,String>()]
var activePlace = -1

class MyPlacesTableViewController: UITableViewController {
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        if places.count == 1 && places[0].count == 0 {
            places.remove(at: 0)
            places.append(["name":"Kiev","lat":"50.4547","lon":"30.5238"])
            places.append(["name":"Kharkov","lat":"49.988358","lon":"36.232845"])
            places.append(["name":"Dnipro","lat":"48.450001","lon":"34.983334"])
            places.append(["name":"Odessa","lat":"46.4667","lon":"30.7333"])
            places.append(["name":"Zaporizhzhia ","lat":"47.85167","lon":"35.11714"])
   
        }
        activePlace = -1
        tableView.reloadData()
    }
    
    
    
    
    // MARK:- Table view delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        activePlace = indexPath.row
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
         
       if places[indexPath.row]["name"] != nil{
            cell.textLabel?.text = places[indexPath.row]["name"]
       }
        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
            if segue.identifier == "goToSecondVC" {
             if let twoVC =  segue.destination as? ViewController {
                
               
                }
            }
        }
        
   
    
    
 


}
