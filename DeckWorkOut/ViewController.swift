//
//  ViewController.swift
//  DeckWorkOut
//
//  Created by Aman Verma on 07/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    var cards:[UIImage]=Card.allValues
    var timer:Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for button in buttons{
            button.layer.cornerRadius=8
        }
        
    }
    func startTimer(){
        timer=Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    @objc func showRandomImage(){
        cardImageView.image=cards.randomElement() ?? UIImage(named:"1H")
    }

    @IBAction func stopButtonTapped(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        if(timer != nil)
        {
            timer.invalidate()
        }
        startTimer()
    }
    @IBAction func rulesStopButtonTapped(_ sender: Any) {
    }
}

