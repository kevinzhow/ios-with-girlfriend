//
//  ViewController.swift
//  TableViewFun
//
//  Created by zhowkevin on 15/12/6.
//  Copyright © 2015年 zhowkevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func clear(sender: AnyObject) {
        
        print("Do Clear")
        
        data.removeAll()

        tableView.reloadData()
    }
    
    var data = ["😄 Human", "🐱 Neko", "🐶 Doge", "🌲 Tree", "🎁 Gift"]
    
    var normalText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        title = "😄 动物园"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("NormalCell", forIndexPath: indexPath)
        
        let text = data[indexPath.row]
        
        cell.textLabel?.text = text
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        normalText = cell?.textLabel?.text
        
        performSegueWithIdentifier("showNormalViewController", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showNormalViewController" {
            let viewController = segue.destinationViewController as! NormalViewController

            viewController.normalText = normalText
        }
    }
    
}