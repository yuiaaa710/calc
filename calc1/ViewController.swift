//
//  ViewController.swift
//  calc1
//
//  Created by yui on 2016/12/16.
//  Copyright © 2016年 yui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var c_button: UIButton!
    @IBOutlet weak var fugou_button: UIButton!
    @IBOutlet weak var per_button: UIButton!
    
    
    @IBOutlet weak var waru_button: UIButton!
    @IBOutlet weak var kake_button: UIButton!
    @IBOutlet weak var hiku_button: UIButton!
    @IBOutlet weak var tasu_button: UIButton!
    @IBOutlet weak var equal_button: UIButton!
    
    @IBOutlet weak var zero_button: UIButton!
    
    
    
    @IBOutlet weak var one_button: UIButton!
    @IBOutlet weak var two_button: UIButton!
    @IBOutlet weak var three_button: UIButton!
    @IBOutlet weak var four_button: UIButton!
    @IBOutlet weak var five_button: UIButton!
    @IBOutlet weak var six_button: UIButton!
    @IBOutlet weak var seven_button: UIButton!
    @IBOutlet weak var eight_button: UIButton!
    @IBOutlet weak var nine_button: UIButton!
    
    @IBOutlet weak var dot_button: UIButton!
    
    @IBOutlet weak var TextView: UITextView!
    @IBOutlet weak var textfield: UITextView!
    
    
    private func tapped(sender:UIButton){
        print("ボタンが押された")
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        c_button.layer.borderColor = UIColor.black.cgColor
        c_button.layer.borderWidth = 0.5
        
        fugou_button.layer.borderColor = UIColor.black.cgColor
        fugou_button.layer.borderWidth = 0.5
        
        per_button.layer.borderColor = UIColor.black.cgColor
        per_button.layer.borderWidth = 0.5
        
        waru_button.layer.borderColor = UIColor.black.cgColor
        waru_button.layer.borderWidth = 0.5
        
        kake_button.layer.borderColor = UIColor.black.cgColor
        kake_button.layer.borderWidth = 0.5
        
        hiku_button.layer.borderColor = UIColor.black.cgColor
        hiku_button.layer.borderWidth = 0.5
        
        tasu_button.layer.borderColor = UIColor.black.cgColor
        tasu_button.layer.borderWidth = 0.5
        
        equal_button.layer.borderColor = UIColor.black.cgColor
        equal_button.layer.borderWidth = 0.5

        zero_button.layer.borderColor = UIColor.black.cgColor
        zero_button.layer.borderWidth = 0.5
        

        one_button.layer.borderColor = UIColor.black.cgColor
        one_button.layer.borderWidth = 0.5
        
        two_button.layer.borderColor = UIColor.black.cgColor
        two_button.layer.borderWidth = 0.5
        // ボタンのアクション
        two_button.addTarget(self, action: "tapped", for: .touchUpInside)
        two_button.tag = 2
        
        
        
        three_button.layer.borderColor = UIColor.black.cgColor
        three_button.layer.borderWidth = 0.5
        
        four_button.layer.borderColor = UIColor.black.cgColor
        four_button.layer.borderWidth = 0.5
        
        five_button.layer.borderColor = UIColor.black.cgColor
        five_button.layer.borderWidth = 0.5
        
        six_button.layer.borderColor = UIColor.black.cgColor
        six_button.layer.borderWidth = 0.5
        
        seven_button.layer.borderColor = UIColor.black.cgColor
        seven_button.layer.borderWidth = 0.5
        
        eight_button.layer.borderColor = UIColor.black.cgColor
        eight_button.layer.borderWidth = 0.5
        
        nine_button.layer.borderColor = UIColor.black.cgColor
        nine_button.layer.borderWidth = 0.5
        
        dot_button.layer.borderColor = UIColor.black.cgColor
        dot_button.layer.borderWidth = 0.5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

