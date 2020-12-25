//
//  MyPlacesTableViewController.swift
//  My Memories Places
//
//  Created by Сергей Голенко on 25.12.2020.
//

import UIKit

class MyPlacesTableViewController: UITableViewController {
    
    let array = ["Kate","Love","Maks"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
         if let twoVC =  segue.destination as? ViewController {
            twoVC.item = "TTT"
            }
        }
    }


}
