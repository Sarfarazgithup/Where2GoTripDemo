//
//  ViewController.swift
//  Where2Go2
//
//  Created by Sarfaraz Ali on 06/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        myTableView.register(UINib(nibName: "titleTableViewCell", bundle: nil), forCellReuseIdentifier: "titleTableViewCell")
        myTableView.register(UINib(nibName: "TripTableViewCell", bundle: nil), forCellReuseIdentifier: "TripTableViewCell")
        myTableView.register(UINib(nibName: "NewTableViewCell", bundle: nil), forCellReuseIdentifier: "NewTableViewCell")
        myTableView.register(UINib(nibName: "imageTableViewCell", bundle: nil), forCellReuseIdentifier: "imageTableViewCell")
        
       
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "titleTableViewCell") as! titleTableViewCell
            return cell
        }
        else if indexPath.row == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TripTableViewCell") as! TripTableViewCell
            return cell
        }

        else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewTableViewCell") as! NewTableViewCell
             return cell

        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageTableViewCell") as! imageTableViewCell
             return cell

        }
       
    
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 140
        } else if indexPath.row == 1 {
          
            return 220
            
        }else if indexPath.row == 2 {
            return 260
        }else{
            return 140
        }
       

       
    }
  
}


    


    
    

