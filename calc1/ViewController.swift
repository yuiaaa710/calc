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
    
    
    
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    @IBOutlet weak var textView4: UITextView!
    
    
    var tempNum:String = ""
    var tempSign:String = ""
    var tempAns:String = ""
    var tempForm:String = ""
    var Sign: [String] = [String]()  //初期化
    var Num: [Double] = [Double]()   //初期化
    var Ans: [String] = [String]()   //初期化
    var formula: [String] = [String]()   //初期化
    
    
    func tapped(sender:UIButton){
        print("\(sender.tag)ボタンが押された")
        
        switch sender.tag{
        case 0:
            tempNum(num:"0")
            tempAns(ans:"0")
            tempForm(form:"0")
            form()
        case 1:
            tempNum(num:"1")
            tempAns(ans:"1")
            tempForm(form:"1")
            form()
        case 2:
            tempNum(num:"2")
            tempAns(ans:"2")
            tempForm(form:"2")
            form()
        case 3:
            tempNum(num:"3")
            tempAns(ans:"3")
            tempForm(form:"3")
            form()
        case 4:
            tempNum(num:"4")
            tempAns(ans:"4")
            tempForm(form:"4")
            form()
        case 5:
            tempNum(num:"5")
            tempAns(ans:"5")
            tempForm(form:"5")
            form()
        case 6:
            tempNum(num:"6")
            tempAns(ans:"6")
            tempForm(form:"6")
            form()
        case 7:
            tempNum(num:"7")
            tempAns(ans:"7")
            tempForm(form:"7")
            form()
        case 8:
            tempNum(num:"8")
            tempAns(ans:"8")
            tempForm(form:"8")
            form()
        case 9:
            tempNum(num:"9")
            tempAns(ans:"9")
            tempForm(form:"9")
            form()
        case 10:
            //C
            tempNum = ""
            tempAns = ""
            tempForm = ""
            formula[2] = ""
            formula[1] = ""
            formula[0] = ""
            textView1.text = tempForm
            textView2.text = formula[0]
            textView3.text = formula[1]
            textView4.text = formula[2]
        case 100:
            //イコール
            if(tempNum.isEmpty){
                // 何もしない
            }else{
                Sign(sig:"")
                tempNum = ""
                Ans2()
            }
            
        case 11:
            //たす
            if(Num.count==0 && tempNum.isEmpty){
                // 何もしない
            }else if(tempNum.isEmpty){
                Sign[Sign.count-1] = "+"
                tempAns.remove(at: tempAns.index(tempAns.endIndex, offsetBy: -1))
                tempAns(ans:"+")
                tempForm.remove(at: tempForm.index(tempForm.endIndex, offsetBy: -1))
                tempForm(form:"+")
                form()
            }
            else{
                Sign(sig:"+")
                tempNum = ""
                tempAns(ans:"+")
                tempForm(form:"+")
                form()
            }
        case 12:
            //引く
            if(Num.count==0 && tempNum.isEmpty){
                // 何もしない
            }else if(tempNum.isEmpty){
                Sign[Sign.count-1] = "-"
                tempAns.remove(at: tempAns.index(tempAns.endIndex, offsetBy: -1))
                tempAns(ans:"-")
                tempForm.remove(at: tempForm.index(tempForm.endIndex, offsetBy: -1))
                tempForm(form:"-")
                form()
            }
            else{
                Sign(sig:"-")
                tempNum = ""
                tempAns(ans:"-")
                tempForm(form:"-")
                form()
            }
        case 13:
            //かけ
            if(Num.count==0 && tempNum.isEmpty){
                // 何もしない
            }else if(tempNum.isEmpty){
                Sign[Sign.count-1] = "*"
                tempAns.remove(at: tempAns.index(tempAns.endIndex, offsetBy: -1))
                tempAns(ans:"*")
                tempForm.remove(at: tempForm.index(tempForm.endIndex, offsetBy: -1))
                tempForm(form:"×")
                form()
            }
            else{
                Sign(sig:"*")
                tempNum = ""
                tempAns(ans:"*")
                tempForm(form:"×")
                form()
            }
        case 14:
            //わる
            if(Num.count==0 && tempNum.isEmpty){
                // 何もしない
            }else if(tempNum.isEmpty){
                Sign[Sign.count-1] = "/"
                tempAns.remove(at: tempAns.index(tempAns.endIndex, offsetBy: -1))
                tempAns(ans:"/")
                tempForm.remove(at: tempForm.index(tempForm.endIndex, offsetBy: -1))
                tempForm(form:"÷")
                form()
            }
            else{
                Sign(sig:"/")
                tempNum = ""
                tempAns(ans:"/")
                tempForm(form:"÷")
                form()
            }
            
        case 21:
            //小数点
            if(tempNum.isEmpty){
                
            }else{
                Sign(sig:".")
                tempNum = ""
                tempAns(ans:".")
                tempForm(form:".")
                form()

            }
        case 22:
            //マイナス
            tempNum = "-" + tempNum
            form()
        case 23:
            //パーセント
            break
            
        default:
            break
        }
    }
    
    
    
    //配列に数字を代入
    func setNum(){
        Num.append(atof(tempNum))
    }
    
    func form(){
        textView1.text = tempForm
    }
    
    
    //配列に加減乗除の記号を代入
    func Sign(sig:String){
        Sign.append(sig)
    }
    
    func Ans1(){
        Ans.append(tempAns)
        print("tempAns:\(tempAns)")
    }
    
    func Ans2(){
        formula[2] = formula[1]
        formula[1] = formula[0]
        formula[0] = tempForm

        textView2.text = formula[0]
        textView3.text = formula[1]
        textView4.text = formula[2]
        
        let Ans1 = NSExpression(format: tempAns)
        let Ans2 = Ans1.expressionValue(with: nil, context: nil) as? NSNumber
        print("Ans2:\((Ans2)!)")
        //var Ans3:String = Ans2
        Ans.append(String("\(Ans2)"))
        //print("tempAns:\(tempAns)")
    
        tempNum = "\(Ans2!)"
        tempAns = "\(Ans2!)"
        tempForm = "\(Ans2!)"
        
        form()
        
        
    }
    
    func tempAns(ans:String){
        tempAns = tempAns + ans
        print("tempAns:\(tempAns)")
    }
    
    func tempForm(form:String){
        tempForm = tempForm + form
        print("tempForm:\(tempForm)")
        //TextView.setText = tempForm
    }
    
    func tempNum(num:String){
        tempNum = tempNum + num
        print("tempNum:\(tempNum)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //画面構成、設定は全部ここ
        
        zero_button.tag = 0
        one_button.tag = 1
        two_button.tag = 2
        three_button.tag = 3
        four_button.tag = 4
        five_button.tag = 5
        six_button.tag = 6
        seven_button.tag = 7
        eight_button.tag = 8
        nine_button.tag = 9
        
        c_button.tag = 10
        equal_button.tag = 100
        
        dot_button.tag = 21
        fugou_button.tag = 22
        per_button.tag = 23
        waru_button.tag = 14
        kake_button.tag = 13
        hiku_button.tag = 12
        tasu_button.tag = 11
        

        zero_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        one_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        two_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        three_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        four_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        five_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        six_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        seven_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        eight_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        nine_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        
        c_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        fugou_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        per_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        waru_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        hiku_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        tasu_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        equal_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        dot_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        kake_button.addTarget(self, action: #selector(self.tapped), for: .touchUpInside)
        
        //ボタンのレイアウト
        //c_button.layer.borderColor = UIColor.white.cgColor
        //c_button.layer.borderWidth = 3
        c_button.layer.masksToBounds = true
        c_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //fugou_button.layer.borderColor = UIColor.black.cgColor
        //fugou_button.layer.borderWidth = 0.5
        fugou_button.layer.masksToBounds = true
        fugou_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0

        
        //per_button.layer.borderColor = UIColor.black.cgColor
        //per_button.layer.borderWidth = 0.5
        per_button.layer.masksToBounds = true
        per_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //waru_button.layer.borderColor = UIColor.black.cgColor
        //waru_button.layer.borderWidth = 0.5
        waru_button.layer.masksToBounds = true
        waru_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //kake_button.layer.borderColor = UIColor.black.cgColor
        //kake_button.layer.borderWidth = 0.5
        kake_button.layer.masksToBounds = true
        kake_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //hiku_button.layer.borderColor = UIColor.black.cgColor
        //hiku_button.layer.borderWidth = 0.5
        hiku_button.layer.masksToBounds = true
        hiku_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //tasu_button.layer.borderColor = UIColor.black.cgColor
        //tasu_button.layer.borderWidth = 0.5
        tasu_button.layer.masksToBounds = true
        tasu_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //equal_button.layer.borderColor = UIColor.black.cgColor
        //equal_button.layer.borderWidth = 0.5
        equal_button.layer.masksToBounds = true
        equal_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0

        //zero_button.layer.borderColor = UIColor.black.cgColor
        //zero_button.layer.borderWidth = 0.5
        zero_button.layer.masksToBounds = true
        zero_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        

        //one_button.layer.borderColor = UIColor.black.cgColor
        //one_button.layer.borderWidth = 0.5
        one_button.layer.masksToBounds = true
        one_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //two_button.layer.borderColor = UIColor.black.cgColor
        //two_button.layer.borderWidth = 0.5
        two_button.layer.masksToBounds = true
        two_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //three_button.layer.borderColor = UIColor.black.cgColor
        //three_button.layer.borderWidth = 0.5
        three_button.layer.masksToBounds = true
        three_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //four_button.layer.borderColor = UIColor.black.cgColor
        //four_button.layer.borderWidth = 0.5
        four_button.layer.masksToBounds = true
        four_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //five_button.layer.borderColor = UIColor.black.cgColor
        //five_button.layer.borderWidth = 0.5
        five_button.layer.masksToBounds = true
        five_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //six_button.layer.borderColor = UIColor.black.cgColor
        //six_button.layer.borderWidth = 0.5
        six_button.layer.masksToBounds = true
        six_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //seven_button.layer.borderColor = UIColor.black.cgColor
        //seven_button.layer.borderWidth = 0.5
        seven_button.layer.masksToBounds = true
        seven_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //eight_button.layer.borderColor = UIColor.black.cgColor
        //eight_button.layer.borderWidth = 0.5
        eight_button.layer.masksToBounds = true
        eight_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //nine_button.layer.borderColor = UIColor.black.cgColor
        //nine_button.layer.borderWidth = 0.5
        nine_button.layer.masksToBounds = true
        nine_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        //dot_button.layer.borderColor = UIColor.black.cgColor
        //dot_button.layer.borderWidth = 0.5
        dot_button.layer.masksToBounds = true
        dot_button.layer.cornerRadius = UIScreen.main.bounds.size.width/8.0
        
        Ans1()
    
        formula.append("")
        formula.append("")
        formula.append("")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

