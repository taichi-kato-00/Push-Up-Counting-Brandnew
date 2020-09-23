//
//  ViewController1.swift
//  Push-Up Counting Brandnew
//
//  Created by 加藤太一 on 2020/09/23.
//  Copyright © 2020 taichi. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    var number = 0
    
    var count :Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBOutlet weak var countLabel: UILabel!
    
    //配列を作成しておく。
    var arrayBox = [String]()

    @IBAction func countButton(_ sender: Any) {
        
        count = count + 1
               countLabel.text = String(count)
               print(count)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        //countLabelの数字をarrayBoxに入れる。
        arrayBox.append(countLabel.text!)
        
        //arrayというキー名でarrayBoxをアプリに保存する。
        UserDefaults.standard.set(arrayBox, forKey: "array")
        
//        画面遷移の追記が必要
       
               }
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        count = 0
               self.countLabel.text = "0"
               print(count)
        }
    
    
    
    
    
    
}
