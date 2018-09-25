//
//  NotesController.swift
//  TimeLine
//
//  Created by UT on 21.09.2018.
//  Copyright © 2018 kostindevelop. All rights reserved.
//

import UIKit
import Foundation
import ISTimeline

class NotesController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let frame = CGRect(x: 170.0, y: 20.0, width: self.view.frame.width, height: self.view.frame.height)
        let timeline = ISTimeline(frame: frame)
        timeline.backgroundColor = .white
        timeline.bubbleColor = .init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        timeline.titleColor = .black
        timeline.descriptionColor = .darkText
        timeline.pointDiameter = 20.0
        timeline.lineWidth = 5.0
        timeline.bubbleRadius = 100.0
        
        self.view.addSubview(timeline)
        
        for i in 0...20 {
            let point = ISPoint(title: "point \(i)")
            point.description = "my awesome description"
            point.lineColor = i % 2 == 0 ? .red : .green
            point.pointColor = point.lineColor
            point.touchUpInside =
                { (point:ISPoint) in
                    print(point.title)
            }
            
            timeline.points.append(point)
        }
    }
    
}
