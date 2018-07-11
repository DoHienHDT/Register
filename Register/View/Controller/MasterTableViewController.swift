
//  TableViewController.swift
//  Register
//
//  Created by dohien on 7/2/18.
//  Copyright © 2018 hiền hihi. All rights reserved.


import UIKit

//typealias DICT = Dictionary<AnyHashable, Any>

class MasterTableViewController: UITableViewController {
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataService.shared.dataCities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = DataService.shared.dataCities[indexPath.row].name
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            defaults.set(DataService.shared.dataCities[indexPath.row].name, forKey: "city")
        }
        
        
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailTableViewController{
            if let index = tableView.indexPathForSelectedRow {
                detailViewController.cityCode = DataService.shared.dataCities[index.row].cityCode
            }
        }
    }

}
