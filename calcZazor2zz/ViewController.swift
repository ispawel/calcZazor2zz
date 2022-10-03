//
//  ViewController.swift
//  calcZazor2zz
// Калькулятор расчета толщины шайбы для регулировки клапанов двигателя 2zz-ge
//  Created by Pavel on 02.10.2021.
//

import UIKit

class ViewController: UIViewController {
    // Поле ввода измеренного зазора на впуске
    @IBOutlet weak var inZazor: UITextField!
    // Поле ввода толщины старой шайбы на впуске
    @IBOutlet weak var inOldShaiba: UITextField!
    // Полученый результат новой шайбы для утановки во впуск
    @IBOutlet weak var inNewShaibaLabel: UILabel!
    
    // Поле ввода измеренного зазора на ВЫпуске
    @IBOutlet weak var outZazor: UITextField!
    // Поле ввода толщины старой шайбы на ВЫпуске
    @IBOutlet weak var outOldShaiba: UITextField!
    // Полученый результат новой шайбы для утановки в ВЫпуск
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
