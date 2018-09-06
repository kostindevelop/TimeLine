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
        cell.lbDateTimeLine.text = String(indexPath.row)
        cell.lbDescriptionTimeLine.text = "task name"
        cell.viewCircleTimeLine.backgroundColor = nil
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let currentCell = tableView.cellForRow(at: indexPath) as! TimeLineCell
        currentCell.viewCircleTimeLine.layer.cornerRadius = currentCell.viewCircleTimeLine.frame.width / 2
        if selectedIndex.count == 0 {
            selectedIndex.append(indexPath.row)
            currentCell.viewCircleTimeLine.layer.cornerRadius = currentCell.viewCircleTimeLine.frame.width / 2
            currentCell.viewCircleTimeLine.backgroundColor = .green
        } else {
            for index in selectedIndex {
                if index == indexPath.row {
                    guard let num = selectedIndex.index(of: index) else { return }
                    selectedIndex.remove(at: num)
                    currentCell.viewCircleTimeLine.backgroundColor = nil
                } else {
                    selectedIndex.append(indexPath.row)
                    currentCell.viewCircleTimeLine.backgroundColor = .green
                    break
                }
                print("Thist INDEX - \(index)")
                print("Thist ARR - \(selectedIndex)")
            }
        }
        //        currentCell.viewCircleTimeLine.backgroundColor = .green
        //        selectedIndex.append(indexPath.row)
        print(selectedIndex)
        
    }
    
    
    
}
