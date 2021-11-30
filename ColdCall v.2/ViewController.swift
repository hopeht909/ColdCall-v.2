//
//  ViewController.swift
//  ColdCall v.2
//
//  Created by admin on 29/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var callButton: UIButton!
    
    let nameList: [String] = ["Uyanga", "Joshua" ,"Antony" , "Brian", "Michale" , "Cody", "Ryota"]
    
    var currentName = Int.random(in: 0...6)
    var randomNumber = Int.random(in: 1...5)
    
    @IBAction func buttonCallPressed(_ sender: UIButton) {
        if(currentName < nameList.count - 1){
            currentName += 1
            
        }
        
        else{
            currentName = Int.random(in: 0...6)
            
        }
        updateNameLable()
        updateNumberLabel()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func updateNameLable(){
        nameLabel.text = nameList[currentName]
    }
    func updateNumberLabel(){
        if(randomNumber < 6){
            
            if(randomNumber == 1 || randomNumber == 2){
                numberLabel.textColor = UIColor.red
                numberLabel.text = String(randomNumber)
            }
            else if(randomNumber == 3 || randomNumber == 4){
                numberLabel.textColor = UIColor.orange
                numberLabel.text = String(randomNumber)
            }
            else if (randomNumber == 5){
                numberLabel.textColor = UIColor.green
                numberLabel.text = String(randomNumber)
            }
            randomNumber += 1
        }
        else{
            randomNumber = Int.random(in: 1...5)
        }
        
    }
    
}

