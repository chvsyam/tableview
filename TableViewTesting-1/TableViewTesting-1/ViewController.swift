//
//  ViewController.swift
//  TableViewTesting-1
//
//  Created by Cheyyeti venkata syam kumar on 10/02/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    
    
    var syamTableView:UITableView!
    
    var indianTeam = ["sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj","sachin","ganguly","dhoni","kohli","dhawan","sundhar","aswin","dravid","karthik","siraj",]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createSTV()
        
        print("1 view did load")
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("2 no of rows in section")
        return indianTeam.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("3 cell for row at indexPath")
        
        
        var cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "abc")
        
       //cell.textLabel?.text = "This is cell"
        
        print(indexPath.row)
        
        //cell.textLabel?.text = "\(indexPath.row) , This is syam"
        
        cell.textLabel?.text = "\(indexPath.row) . \(indianTeam [indexPath.row])"
        cell.imageView?.image = UIImage(named: "ind")
        cell.detailTextLabel?.text = "indian cricketer"
        cell.accessoryType = .checkmark
        
        return cell
        
        
        
    }
    
   
    func createSTV(){
        
        syamTableView = UITableView(frame: view.frame, style: UITableView.Style.plain)
        print("4 create ui")
        
        syamTableView.delegate = self
        syamTableView.dataSource = self
        
        view.addSubview(syamTableView)
    }

}

