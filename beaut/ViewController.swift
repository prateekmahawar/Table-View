//
//  ViewController.swift
//  beaut
//
//  Created by Prateek Mahawar on 17/05/16.
//  Copyright © 2016 Prateek Mahawar. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var redTable: UITableView!
    
    var beautifulIMG = ["https://i.ytimg.com/vi/tiRZ7YQKUgQ/maxresdefault.jpg","http://3.bp.blogspot.com/-Ue1BNDfjTwE/UPFybkYOckI/AAAAAAAACB0/SfkwREI3KHM/s640/A-Beautiful-Path-Villaviciosa-Asturias-Spain-700x525.jpg","http://www.picgifs.com/glitter-gifs/b/beautiful/picgifs-beautiful-743134.jpg","http://files.brightside.me/files/news/part_0/3755/150555-R3L8T8D-880-amazing-trees-1-2.jpg","http://pic.1fotonin.com//data/wallpapers/69/WDF_1142661.jpg"]
    
    var beautitle = ["List","Of","Some","Wallpapers","Downloaded"]
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return beautifulIMG.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("RedCell", forIndexPath: indexPath) as? BeautCell {
            var img: UIImage!
            let url = NSURL(string: beautifulIMG[indexPath.row])!
            if let data = NSData(contentsOfURL: url){
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "missing")
            }
            cell.configureCell(img, lbl: beautitle[indexPath.row])
            return cell
        }else {
           return BeautCell()
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

