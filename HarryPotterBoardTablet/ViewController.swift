//
//  ViewController.swift
//  HarryPotterBoardTablet
//
//  Created by Богдан Полыгалов on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var h10: UIButton!
    @IBOutlet weak var h9: UIButton!
    @IBOutlet weak var h8: UIButton!
    @IBOutlet weak var h7: UIButton!
    @IBOutlet weak var h6: UIButton!
    @IBOutlet weak var h5: UIButton!
    @IBOutlet weak var h4: UIButton!
    @IBOutlet weak var h3: UIButton!
    @IBOutlet weak var h2: UIButton!
    @IBOutlet weak var h1: UIButton!
    @IBOutlet weak var h0: UIButton!
    
    // делает статус бар светлым (у нас всегда темный фон и поэтому внезависимости от темы афйона статус бар будет светлым)
    override var preferredStatusBarStyle: UIStatusBarStyle { .darkContent }
    var hearts: [UIButton] = []
    var coinTemp = 0
    var lightningTemp = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hearts.append(h10)
        hearts.append(h9)
        hearts.append(h8)
        hearts.append(h7)
        hearts.append(h6)
        hearts.append(h5)
        hearts.append(h4)
        hearts.append(h3)
        hearts.append(h2)
        hearts.append(h1)
        hearts.append(h0)
        hideImages()
    }
    
    @IBOutlet weak var lightningLabel: UILabel!
    var coinCount = 0
    @IBOutlet weak var coinLabel: UILabel!
    var lightningCount = 0
    
    @IBAction func lightningReset(_ sender: Any) {
        lightningCount = 0
        lightningLabel.text = "\(lightningCount)"
    }
    @IBAction func coinReset(_ sender: Any) {
        coinCount = 0
        coinLabel.text = "\(coinCount)"
    }
    func hideImages(){
        
        for heart in hearts {
            heart.setImage(UIImage.init(), for: UIControl.State.normal)
        }
    }
    
    @IBAction func lightningClick(_ sender: Any) {
       lightningCount += 1
        lightningTemp = lightningCount
        lightningLabel.text = "\(lightningCount)"
    }
    
    @IBAction func coinClick(_ sender: Any) {
        coinCount += 1
        coinTemp = coinCount
        coinLabel.text = "\(coinCount)"
    }
    
    @IBAction func heartClick(_ sender: UIButton) {
        hideImages()
        sender.setImage(UIImage(named: "heart"), for: UIControl.State.normal)
    }
    @IBAction func lightningRestore(_ sender: Any) {
        lightningCount = lightningTemp
        lightningLabel.text = "\(lightningCount)"
    }
    @IBAction func coinRestore(_ sender: Any) {
        coinCount = coinTemp
        coinLabel.text = "\(coinCount)"
    }
}

