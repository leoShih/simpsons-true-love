//
//  trueLoveViewController.swift
//  trueLove
//
//  Created by Leo on 19/06/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class trueLoveViewController: UIViewController {
    
    
    @IBOutlet weak var heightSld: UISlider!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var starText: UITextField!
    @IBOutlet weak var sportSwitch: UISwitch!
    @IBOutlet weak var genderSeg: UISegmentedControl!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var backImage: UIImageView!
    
    
    @IBAction func heightSld(_ sender: UISlider) {
        
        heightLbl.text = String(Int(sender.value))
        //slider與label連動
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        heightLbl.text = String(Int(heightSld.value))
        //載入畫面 數值會跟slider一樣
    }
   
    
    @IBAction func trueLoveBtn(_ sender: Any) {
        
      let star = starText.text!
        
        
            if star == "Virgo" && sportSwitch.isOn == true && genderSeg.selectedSegmentIndex == 1 &&  Int(heightSld.value) == 178
            
            {
                
                image.image = UIImage(named:"woohoo")
                backImage.isHidden = true
                
            }
            
            else{
                
                image.image = UIImage(named:"doh")
                backImage.isHidden = true
                
            }
            
        }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
