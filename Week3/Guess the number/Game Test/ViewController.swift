//
//  ViewController.swift
//  Game Test
//
//  Created by 尚靖 on 2018/2/25.
//  Copyright © 2018年 尚靖. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneButt: UIButton!
    @IBOutlet weak var twoButt: UIButton!
    @IBOutlet weak var threeButt: UIButton!
    @IBOutlet weak var fourButt: UIButton!
    @IBOutlet weak var fiveButt: UIButton!
    @IBOutlet weak var sixButt: UIButton!
    @IBOutlet weak var sevenButt: UIButton!
    @IBOutlet weak var eightButt: UIButton!
    @IBOutlet weak var nineButt: UIButton!
    @IBOutlet weak var zeroButt: UIButton!
    @IBOutlet weak var cancelButt: UIButton!
    @IBOutlet weak var sendButt: UIButton!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textHint: UILabel!
    
    private var targetNumber = 0
    private var minNumber = 0
    private var maxNumber = 100
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendButt.design()
        cancelButt.design()
        oneButt.design()
        twoButt.design()
        threeButt.design()
        fourButt.design()
        fiveButt.design()
        sixButt.design()
        sevenButt.design()
        eightButt.design()
        nineButt.design()
        zeroButt.design()
        targetNumber = Int(arc4random_uniform(100) + 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelBut(_ sender: AnyObject) {
        textField.text = ""
    }
    
    @IBAction func sendBut(_ sender: AnyObject) {
        guard let number = Int(textField.text!) else {
            textHint.text = "Enter a number!"
            return
          }
        gameNumber(number: number)
        }

    @IBAction func one(_ sender: AnyObject) {
        let nOne = 1
        textField.text! += "\(nOne)"
    }
    @IBAction func two(_ sender: AnyObject) {
        let nTwo = 2
        textField.text! += "\(nTwo)"
    }
    
    @IBAction func three(_ sender: AnyObject) {
        let nThree = 3
        textField.text! += "\(nThree)"
    }
    
    @IBAction func four(_ sender: AnyObject) {
        let nFour = 4
        textField.text! += "\(nFour)"
    }
    
    @IBAction func five(_ sender: AnyObject) {
        let nFive = 5
        textField.text! += "\(nFive)"
    }
    
    @IBAction func six(_ sender: AnyObject) {
        let nSix = 6
        textField.text! += "\(nSix)"
    }
    
    @IBAction func seven(_ sender: AnyObject) {
        let nSeven = 7
        textField.text! += "\(nSeven)"
    }
    
    @IBAction func eight(_ sender: AnyObject) {
        let nEight = 8
        textField.text! += "\(nEight)"
    }
    
    @IBAction func nine(_ sender: AnyObject) {
        let nNine = 9
        textField.text! += "\(nNine)"
    }
    
    @IBAction func zero(_ sender: AnyObject) {
        let nZero = 0
        textField.text! += "\(nZero)"
    }
    //not elegant at all....QQ
}

private extension ViewController{
    enum Compare {
        case less
        case more
        case equal
    }
    
    func gameNumber(number: Int){
        switch comNumber(number: number, target: targetNumber){
        case .less:
            minNumber = max(minNumber, number)
            numberRange()
        case .more:
            maxNumber = min(maxNumber, number)
            numberRange()
        case .equal:
            textHint.text = "Yahaha! You got me! Try Again?"
            startAgain()
        }
    }
    
    func comNumber(number: Int, target: Int) -> Compare{
        if number < target {
            return .less
        } else if number > target {
            return .more
        }
        return .equal
    }
    
}


private extension ViewController{
    func numberRange() {
        textHint.text = "\(minNumber) to \(maxNumber)"
    }
    
    func reset() {
        minNumber = 0
        maxNumber = 100
    }
    
    func startAgain(){
        reset()
        targetNumber = Int(arc4random_uniform(100) + 1)
    }
    
}

extension UIButton {
    func design() {
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
        self.layer.borderColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
        self.layer.borderWidth = 1
        
    }
}

























