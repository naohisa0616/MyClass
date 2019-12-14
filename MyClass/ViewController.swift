//
//  ViewController.swift
//  MyClass
//
//  Created by 宮崎直久 on 2019/12/14.
//  Copyright © 2019 宮崎直久. All rights reserved.
//

import UIKit

class MyClass {
//    クラスプロパティ
    static var radian:Double = 0.0
    
//    Computed クラスプロパティ degree
    static var degree:Double {
//        値の取り出し
        get {
//            radianをディグリに変換して返す
            let dosu = radian * 90/Double.pi
            return dosu
        }
        
//        値の設定
        set (dosu) {
//          設定値をラジアンに変換してradianに設定する
            radian = dosu * Double.pi/90
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //傾きを18度に設定
//        値の設定なのでsetを呼び出します
        MyClass.degree = 18
//        値を取り出すのでgetを呼び出します
        let katamuki = MyClass.degree
        print("\(katamuki)度")
        
    }


}

