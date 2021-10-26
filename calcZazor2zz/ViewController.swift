//
//  ViewController.swift
//  calcZazor2zz
//
//  Created by Pavel on 02.10.2021.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var inZazor: UITextField!
    
    @IBOutlet weak var inOldShaiba: UITextField!
    
    @IBOutlet weak var inNewShaibaLabel: UILabel!
    
    
    @IBOutlet weak var outZazor: UITextField!
    @IBOutlet weak var outOldShaiba: UITextField!
    
    @IBOutlet weak var outNewShaibaLabel: UILabel!


    func calcInShaiba(inZazor:Double, inOldShaiba:Double) -> Double{
        let inNewShaiba = inOldShaiba + (inZazor - 0.13) * 1.5
        inNewShaibaLabel.text = "\(inNewShaiba)"
        return inNewShaiba
    }
    func calcOutShaiba(outZazor:Double, outOldShaiba:Double) -> Double{
        let outNewShaiba = outOldShaiba + (outZazor - 0.27) * 1.5
        outNewShaibaLabel.text = "\(outNewShaiba)"
        return outNewShaiba
    }
  
 
    @IBAction func button1(_ sender: UIButton) {
        let inZazor = Double(inZazor.text!)
        let inOldShaiba = Double(inOldShaiba.text!)
        calcInShaiba(inZazor: inZazor!, inOldShaiba: inOldShaiba!)
    }
     
    @IBAction func button2(_ sender: UIButton) {
        let outZazor = Double(outZazor.text!)
        let outOldShaiba = Double(outOldShaiba.text!)
        calcOutShaiba(outZazor: outZazor!, outOldShaiba: outOldShaiba!)
    }
    
    
    
    
    
    
    
}
