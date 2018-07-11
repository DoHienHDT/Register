//
//  DetailTableViewController.swift
//  Register
//
//  Created by dohien on 7/3/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    let defaultsDictric = UserDefaults.standard
    var cityCode: Int?
    var districtsData : [Distric] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        if cityCode != nil {
            districtsData = DataService.shared.getPlist(citiData: cityCode!)
        }
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
        return districtsData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hihi", for: indexPath)
        cell.textLabel?.text = districtsData[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        defaultsDictric.set(districtsData[indexPath.row].name, forKey: "distric")
    }
}
