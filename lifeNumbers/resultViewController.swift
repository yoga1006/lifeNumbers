//
//  resultViewController.swift
//  lifeNumbers
//
//  Created by Yoga on 2022/6/25.
//

import UIKit

class resultViewController: UIViewController {
    
    
    @IBOutlet weak var starsignImageView: UIImageView!
    @IBOutlet weak var QlifecodeLabel: UILabel!
    
    var starsign:UIImage
    var lifecode:String = "?"
    
    init?(coder:NSCoder,lifecode:String,starsign:UIImage){
        self.lifecode=lifecode
        self.starsign=starsign
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    @IBOutlet weak var numBackgroundImageView: UIImageView!
    @IBOutlet weak var back1View: UIView!
    @IBOutlet weak var back2View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        starsignImageView.image=starsign
        QlifecodeLabel.text=lifecode
        
        
        // Do any additional setup after loading the view.
        
        numBackgroundImageView.layer.cornerRadius=65
        back1View.layer.cornerRadius=50
        back2View.layer.cornerRadius=50
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
