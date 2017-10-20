//
//  ColorsViewController.swift
//  Colors
//
//  Created by Lydia Krasucki on 10/20/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorsTableView: UITableView!
    var colors = ["Red","Orange","Yellow","Green","Blue","Purple","Brown"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsTableView.dataSource = self
        colorsTableView.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
    
        cell.textLabel?.text = colors[indexPath.row]
        
        /*
        cell.backgroundColor = UIColor.red
        cell.backgroundColor = UIColor.orange
        cell.backgroundColor = UIColor.yellow
        cell.backgroundColor = UIColor.green
        cell.backgroundColor = UIColor.blue
        cell.backgroundColor = UIColor.purple
        cell.backgroundColor = UIColor.brown
        */
    return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
