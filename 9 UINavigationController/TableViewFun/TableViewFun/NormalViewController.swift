//
//  NormalViewController.swift
//  TableViewFun
//
//  Created by zhowkevin on 15/12/6.
//  Copyright © 2015年 zhowkevin. All rights reserved.
//

import UIKit

class NormalViewController: UIViewController {

    @IBOutlet weak var normalLabel: UILabel!
    
    @IBAction func popBack(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    var normalText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        normalLabel.text = normalText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
