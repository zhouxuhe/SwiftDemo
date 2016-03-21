//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Flowers on 16/3/13.
//  Copyright © 2016年 Flowers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//   override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
//        super.init(nibName:nibNameOrNil, bundle:nibBundleOrNil)
//    }
    
    //因为在声明的时候是没有的，所以要用可选类型表明
    var btn : UIButton?
    var twoVC : TwoViewController!
    var label : UILabel!
    var scrollView:UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //创建button
        self.btn = UIButton()
        //在访问可选类型属性的时候 要使用！进行解包
        self.btn!.frame = CGRectMake(20,30,100,100)
        self.btn!.backgroundColor = UIColor.redColor()
        //给按钮添加点击事件
        self.btn!.addTarget(self, action:Selector("adTag") , forControlEvents:UIControlEvents.TouchUpInside)
        self.btn!.setTitle("按钮", forState:UIControlState.Normal)
        self.btn!.setTitleColor(UIColor.blackColor(), forState:.Normal)
        //设置图片
        self.btn!.setImage(UIImage(named:"find_selectItem"), forState:.Normal)
        //设置按钮的背景图片
//        self.btn!.setBackgroundImage(UIImage(named:"find_selectItem"), forState:.Normal)
        self.view .addSubview(self.btn!)
        self.view.backgroundColor = UIColor.blackColor()
        self.twoVC = TwoViewController()
        
        
        self.label = UILabel()
        self.label.frame = CGRectMake((self.view.frame.size.width-100)/2,200,100,40)
        self.label.text = "测试label"
        self.label.textColor = UIColor.whiteColor()
        self.view .addSubview(self.label)
        
        self.scrollView = UIScrollView()
        self.scrollView.frame = CGRectMake(0, 250,self.view.frame.size.width,200)
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width*3,0)
        self.scrollView.backgroundColor = UIColor.redColor()
        self.view .addSubview(self.scrollView)
    }

    func adTag()
    {
        self.navigationController?.pushViewController(self.twoVC, animated:true)
    }
}

