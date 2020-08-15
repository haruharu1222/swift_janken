//
//  ViewController.swift
//  janken
//
//  Created by 山口遥陽 on 2020/08/13.
//  Copyright © 2020 山口遥陽. All rights reserved.
//
import UIKit
import GameKit

class ViewController: UIViewController {
    let randomJanken = GKARC4RandomSource()


    @IBOutlet weak var cHand2: UIImageView!
    @IBOutlet weak var jankenLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pRock(_ sender: Any) {
        jankenComputer(player:0);
    }
    
    @IBAction func pScissor(_ sender: Any) {
        jankenComputer(player:1);
    }
    
    @IBAction func pPaper(_ sender: Any) {
        jankenComputer(player:2);
    }
    
    func jankenComputer(player:Int) {
//    let comp = randomJanken.nextIntWithUpperBound(3)
        let comp = Int.random(in: 0 ... 2)
        var msg = ""
        switch comp {
            case 0:
                cHand2.image = UIImage(named: "gu2.png")
                switch player{
                    case 0:
                        msg = "あいこ"
                    case 1:
                        msg = "あなたの負け"
                    case 2:
                        msg = "あなたの勝ち"
                    default:
                        break
                }
            
            case 1:
                cHand2.image = UIImage(named: "tyoki2.png")
                switch player {
                    case 0:
                        msg = "あなたの勝ち"
                    case 1:
                        msg = "あいこ"
                    case 2:
                        msg = "あなたの負け"
                    default:
                        break
                }
            
            case 2:
                cHand2.image = UIImage(named: "pa2.png")
                switch player{
                    case 0:
                    msg = "あなたの負け"
                case 1:
                    msg = "あなたの勝ち"
                case 2:
                    msg = "あいこ"
                default:
                    break
                }
        
            default:
                break
            }
        jankenLabel.text = msg
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    }
}
