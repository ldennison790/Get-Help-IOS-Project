//
//  DecibelViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 11/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit

class DecibelViewController: UIViewController {
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.container)
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 610, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)
        
        self.container.addSubview(Back)
        
        
        let Image = UIImageView(frame : CGRect(x: 30, y: 30,
                                               width:300, height: 500))
        Image.backgroundColor = .white
        Image.clipsToBounds = true
        Image.image = #imageLiteral(resourceName: "Decibel-scale")
        
        
        self.container.addSubview(Image)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func backAction()
    {
        self.present(SoundViewController(), animated: true, completion: nil)
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
