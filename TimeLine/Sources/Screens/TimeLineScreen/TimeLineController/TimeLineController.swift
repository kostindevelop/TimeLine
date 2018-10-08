//
//  TimeLineController.swift
//  TimeLine
//
//  Created by UT on 04.09.2018.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit

class TimeLineController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var selectedIndex: [Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .none
        tableView.backgroundColor = nil
    }
    
}


extension TimeLineController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 24
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.timeCell, for: indexPath) else { fatalError() }
        cell.selectionStyle = .none
        cell.backgroundColor = nil
        cell.lbDateTimeLine.text = String(indexPath.row + 1)
        cell.lbDescriptionTimeLine.text = "task name"
        cell.viewCircleTimeLine.backgroundColor = nil
        if selectedIndex.contains(indexPath.row) {
            cell.viewCircleTimeLine.backgroundColor = .green
            cell.viewCircleTimeLine.layer.cornerRadius = cell.viewCircleTimeLine.frame.width / 2
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        let storyboard = R.storyboard.auth()
        //        let registrationVC = R.storyboard.auth.registrationScreen()
        //        present(registrationVC!, animated: true, completion: nil)
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let currentCell = tableView.cellForRow(at: indexPath) as! TimeLineCell
        currentCell.viewCircleTimeLine.layer.cornerRadius = currentCell.viewCircleTimeLine.frame.width / 2
        if selectedIndex.isEmpty {
            selectedIndex.append(indexPath.row)
            currentCell.viewCircleTimeLine.backgroundColor = .green
        } else {
            print("Index array - \(selectedIndex)")
            if self.selectedIndex.contains(indexPath.row) {
                print("Index array - \(selectedIndex)")
                let element = self.selectedIndex.index(of: indexPath.row)
                selectedIndex.remove(at: element!)
                print("Index array - \(selectedIndex)")
                currentCell.viewCircleTimeLine.backgroundColor = nil
            } else {
                selectedIndex.append(indexPath.row)
                currentCell.viewCircleTimeLine.backgroundColor = .green
            }
            self.tableView.reloadData()
            print("Thist INDEX - \(String(describing: self.selectedIndex.index(of: indexPath.row)))")
            print("Index array - \(selectedIndex)")
        }
    }
    
}
