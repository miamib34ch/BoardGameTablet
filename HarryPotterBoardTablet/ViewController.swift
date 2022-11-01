//
//  ViewController.swift
//  HarryPotterBoardTablet
//
//  Created by Богдан Полыгалов on 28.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // делает статус бар тёмным вне зависимости от темы
    override var preferredStatusBarStyle: UIStatusBarStyle { .darkContent }
    
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
    var hearts: [UIButton] = []
    
    // перменные для хранения последнего значения (нужны если пользователь случайно обнулит значение)
    var coinLast = 0
    var lightningLast = 0
    
    @IBOutlet weak var lightningLabel: UILabel!
    var lightningCount = 0
    
    @IBOutlet weak var coinLabel: UILabel!
    var coinCount = 0
    
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
    
    // прячет изображение сердца у каждой кнопки
    func hideImages(){
        for heart in hearts {
            heart.setImage(UIImage.init(), for: UIControl.State.normal)
        }
    }
    
    // показ изображения сердца
    @IBAction func heartClick(_ sender: UIButton) {
        hideImages()
        sender.setImage(UIImage(named: "heart"), for: UIControl.State.normal)
    }
    
    @IBAction func lightningClick() {
       lightningCount += 1
        lightningLast = lightningCount
        lightningLabel.text = "\(lightningCount)"
    }
    
    @IBAction func coinClick() {
        coinCount += 1
        coinLast = coinCount
        coinLabel.text = "\(coinCount)"
    }
    
    @IBAction func lightningReset() {
        lightningCount = 0
        lightningLabel.text = "\(lightningCount)"
    }
    
    @IBAction func coinReset() {
        coinCount = 0
        coinLabel.text = "\(coinCount)"
    }
    
    @IBAction func lightningRestore() {
        lightningCount = lightningLast
        lightningLabel.text = "\(lightningCount)"
    }
    
    @IBAction func coinRestore() {
        coinCount = coinLast
        coinLabel.text = "\(coinCount)"
    }
}

