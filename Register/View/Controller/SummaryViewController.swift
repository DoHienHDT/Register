//
//  SummaryViewController.swift
//  Register
//
//  Created by dohien on 7/9/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var defaultCiti: UILabel!
    @IBOutlet weak var defaultDictrict: UILabel!
    @IBOutlet weak var defaultGender: UILabel!
    @IBOutlet weak var defaultAge: UILabel!
    @IBOutlet weak var defaultName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configure()
    }
    func configure() {
        if let name = UserDefaults.standard.string(forKey: "city"),let nameDistrict = UserDefaults.standard.string(forKey: "distric"),let nameGender = UserDefaults.standard.string(forKey: "gender"), let nameAge = UserDefaults.standard.string(forKey: "age"), let nameText = UserDefaults.standard.string(forKey: "name") {
            defaultCiti.text = name
            defaultAge.text = nameAge
            defaultGender.text = nameGender
            defaultDictrict.text = nameDistrict
            defaultName.text = nameText
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

