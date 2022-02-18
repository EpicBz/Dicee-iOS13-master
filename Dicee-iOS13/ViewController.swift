//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Agela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//
// Updated by Bryan Sands 02/10/2022.
// Last updated on 02/10/2022
// Version 1.0
// Enhancements:
// Roll2) Roll 2 dice at once.
// Newest updated on 02/17/2022.
// Version 2.0
// Enhancements:
// Roll 1: rolls a player die and a dealer die and displays value
// Roll 2: rolls a player dice and dealer dice at the same time and display total value
// random bets from dealer and user inputed bets
// still being developed Betting system
// Dealer and Player will have total amount of money and bets remove or add money from their totals

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var PlayerDiceTotal: UILabel!
    @IBOutlet weak var DealerDiceTotal: UILabel!
    @IBOutlet weak var PlayerAmountBet: UILabel!
    @IBOutlet weak var DealerAmountBet: UILabel!
    @IBOutlet weak var PlayerMoney: UILabel!
    @IBOutlet weak var DealerMoney: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // PlayerMoney.text = "500"
        // DealerMoney.text = "500"
        
    }
    
   
    
    @IBAction func rollButton1Pressed(_ sender: Any) {
        
// declaring array and player dice values
        DealerAmountBet.text = " "
        PlayerDiceTotal.text = " "
        DealerDiceTotal.text = " "
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        let diceRandom = Int.random(in: 0...5)
        var diceValue = 0
        let dealerBetArray = [10,20,30,40,50,60,70,80,90,100]
        let dealerBetRandom = Int.random(in: 0...9)
        
        // Waging money
        
        var dealerBet = dealerBetArray[dealerBetRandom]
        DealerAmountBet.text = String(dealerBet)
       // let playerMoneyLabel = PlayerMoney.text
       // var playerMoney = Int(playerMoneyLabel!)
      //  let dealerMoneyLabel = DealerMoney.text
      //  var dealerMoney = Int(dealerMoneyLabel!)
      //  let playerBetAmount = PlayerAmountBet.text
      //  var playerBet = Int(playerBetAmount!)

        
        
        //animates the dice rolling
        
        diceImageView1.animationImages = diceArray
        diceImageView1.animationDuration = 1.50
        diceImageView1.animationRepeatCount = 3
        
        // starts animation and sets dice to its random index postion
        diceImageView1.startAnimating()
        diceImageView1.image = diceArray[diceRandom]
        
        // displays dice value for player
        
        diceValue = diceRandom + 1
        let playerDiceTotal = (diceValue)
        
        
        // does the same thing for the dealer
        
        let diceRandom2 = Int.random(in: 0...5)
        var diceValue2 = 0
        
        diceImageView2.animationImages = diceArray
        diceImageView2.animationDuration = 1.50
        diceImageView2.animationRepeatCount = 3
        
        diceImageView2.startAnimating()
        diceImageView2.image = diceArray[diceRandom2]
        
        diceValue2 = diceRandom2 + 1
        let dealerDiceTotal = (diceValue2)
        
        //Displays the winner and loser underneath the player and dealer names
        
        if playerDiceTotal>dealerDiceTotal{
            PlayerDiceTotal.text = "Winner"
            DealerDiceTotal.text = "Loser"
            
        }else if (playerDiceTotal<dealerDiceTotal){
            PlayerDiceTotal.text = "Loser"
            DealerDiceTotal.text = "Winner"
        }else {
            PlayerDiceTotal.text = "Draw"
            DealerDiceTotal.text = "Draw"
        }
        
        
        
    }
    
    @IBAction func rollButton2Pressed(_ sender: Any) {
        
        DealerAmountBet.text = " "
        PlayerDiceTotal.text = " "
        DealerDiceTotal.text = " "
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        let diceRandom = Int.random(in: 0...5)
        let diceRandom2 = Int.random(in: 0...5)
        var diceValue = 0
        var diceValue2 = 0
        let dealerBetArray = [10,20,30,40,50,60,70,80,90,100]
        let dealerBetRandom = Int.random(in: 0...9)
        
        diceImageView1.animationImages = diceArray
        diceImageView1.animationDuration = 1.50
        diceImageView1.animationRepeatCount = 3
        
        diceImageView1.startAnimating()
        diceImageView1.image = diceArray[diceRandom]
        
        diceImageView3.animationImages = diceArray
        diceImageView3.animationDuration = 1.50
        diceImageView3.animationRepeatCount = 3
        
        diceImageView3.startAnimating()
        diceImageView3.image = diceArray[diceRandom2]
        
        diceValue = diceRandom + 1
        diceValue2 = diceRandom2 + 1
        let playerDiceTotal = (diceValue + diceValue2)
        
        
        let diceRandom3 = Int.random(in: 0...5)
        let diceRandom4 = Int.random(in: 0...5)
        var diceValue3 = 0
        var diceValue4 = 0
        
        diceImageView2.animationImages = diceArray
        diceImageView2.animationDuration = 1.50
        diceImageView2.animationRepeatCount = 3
        
        diceImageView2.startAnimating()
        diceImageView2.image = diceArray[diceRandom3]
        
        diceImageView4.animationImages = diceArray
        diceImageView4.animationDuration = 1.50
        diceImageView4.animationRepeatCount = 3
        
        diceImageView4.startAnimating()
        diceImageView4.image = diceArray[diceRandom4]
        
        var dealerBet = dealerBetArray[dealerBetRandom]
        DealerAmountBet.text = String(dealerBet)
        
        diceValue3 = diceRandom3 + 1
        diceValue4 = diceRandom4 + 1
        let dealerDiceTotal = (diceValue3 + diceValue4)
        
        if playerDiceTotal>dealerDiceTotal{
            PlayerDiceTotal.text = "Winner"
            DealerDiceTotal.text = "Loser"
        }else if (playerDiceTotal<dealerDiceTotal){
            PlayerDiceTotal.text = "Loser"
            DealerDiceTotal.text = "Winner"
        }else {
            PlayerDiceTotal.text = "Draw"
            DealerDiceTotal.text = "Draw"
        }
        
        

        
    }

    @IBAction func PlayerBETCounter(_ sender: UIStepper) {
        PlayerAmountBet.text = String(Int(sender.value))
 
        
    }
    
    
}

