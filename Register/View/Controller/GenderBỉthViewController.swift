//
//  GenderViewController.swift
//  Register
//
//  Created by dohien on 7/9/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class GenderBỉthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet var classButton : [UIButton]!
    @IBAction func buttonClick(_ sender: UIButton) {
        for button in classButton {
            button.isSelected = false
        }
        
        sender.isSelected = true
        print(sender.currentTitle)
        UserDefaults.standard.set(sender.currentTitle, forKey: "gender")
        
    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    let numbers = Array(0...100)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(numbers[row])
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let seletedValue = pickerView.selectedRow(inComponent: 0)
        print(seletedValue)
        UserDefaults.standard.set(seletedValue  , forKey: "age")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.selectRow(18, inComponent: 0, animated: true)
      
    }

//    func saveAge(){
//        if  != nil {
//            UserDefaults.standard.set(numbers.count, forKey: "age")
//        }
//    }
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
