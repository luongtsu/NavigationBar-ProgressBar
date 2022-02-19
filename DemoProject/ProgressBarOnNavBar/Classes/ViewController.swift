//
//  ViewController.swift
//  ProgressBarOnNavBar
//
//  Created by Luong Minh Hiep on 11/18/16.
//  Copyright © 2016 Luong Minh Hiep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 0
        
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "ProgressBar - Swift"
        
        // set progress bar background color
        self.navigationController?.backgroundColor = UIColor.white
        
        // set progress bar primary color
        self.navigationController?.primaryColor = UIColor.blue
        
        // show progress bar
        self.navigationController?.isShowingProgressBar = true
        
        // update progress bar with given value
        self.navigationController?.setProgress(slider.value, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueChanged(_ sender: Any) {
        print(slider.value)
        self.navigationController?.isShowingProgressBar = true
        self.navigationController?.setProgress(slider.value, animated: false)
    }

    @IBOutlet weak var showDetail: UIButton!
    @IBAction func showDetailView(_ sender: Any) {
        let detailView = DetailViewController()
        //let nav = UINavigationController(rootViewController: detailView)
        self.navigationController?.pushViewController(detailView, animated: true)
        //self.navigationController?.present(nav, animated: true, completion: nil)
    }
    
    @IBAction func showAnimationButtonTapped(_ sender: Any) {
        slider.isEnabled = false
        slider.value = 0.0
        self .showAnimation()
    }
    
    @objc func showAnimation() {
        slider.value =  min(slider.value + 0.1, 1.0)
        self.navigationController?.setProgress(slider.value, animated: true)
        if slider.value < 1.0 {
            self .perform(#selector(showAnimation), with: nil, afterDelay: 0.5)
        } else {
            self .perform(#selector(finishAnimation), with: nil, afterDelay: 0.5)
        }
    }
    
    @objc func finishAnimation() {
        slider.isEnabled = true
        slider.value = 0
        self.navigationController?.setProgress(slider.value, animated: false)
        self.navigationController?.isShowingProgressBar = false
    }
}
