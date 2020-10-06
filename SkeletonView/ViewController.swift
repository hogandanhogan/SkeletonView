//
//  ViewController.swift
//  SkeletonView
//
//  Created by Dan Hogan on 10/6/20.
//

import UIKit

class ViewController: UIViewController {
    
    let circleView = SkeletonView()
    let lineView = SkeletonView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview({
            circleView.frame = CGRect(x: 25.0, y: 50.0, width: 60.0, height: 60.0)
            circleView.layer.cornerRadius = 30.0
            circleView.clipsToBounds = true
            
            return circleView
            }()
        )
        
        view.addSubview({
            lineView.frame = CGRect(x: 25.0, y: 120.0, width: 200.0, height: 20.0)
            lineView.layer.cornerRadius = 10.0
            lineView.clipsToBounds = true

            return lineView
            }()
        )
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.circleView.startAnimating()
            self.lineView.startAnimating()
        }
    }


}

