//
//  RefractionViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 08/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit

class RefractionViewController: UIViewController {
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    
    var ref: UILabel = {
        let ref = UILabel(frame: CGRect(x: 0, y: 90, width: 450, height : 30))
        ref.text = "Remember, light bends to the normal when in perspex."
        ref.font = UIFont.systemFont(ofSize: 15)
        ref.textColor = .white
        
        
        
        return ref
        
        
    }()
    
    var ref1: UILabel = {
        let ref1 = UILabel(frame: CGRect(x: 0, y: 160, width: 450, height : 30))
        ref1.text = "Light bends away from the normal, when it has"
        ref1.font = UIFont.systemFont(ofSize: 15)
        ref1.textColor = .white
        
        
        
        return ref1
        
        
    }()
    
    var ref2: UILabel = {
        let ref2 = UILabel(frame: CGRect(x: 0, y: 180, width: 450, height : 30))
        ref2.text = "exited the perspex"
        ref2.font = UIFont.systemFont(ofSize: 15)
        ref2.textColor = .white
        
        
        
        return ref2
        
        
    }()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.container)
        self.container.addSubview(ref)
        self.container.addSubview(ref1)
        self.container.addSubview(ref2)
        
        let Back = UIButton(frame: CGRect(x:0, y: 580, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)
        
        self.container.addSubview(Back)
        
        
        let Image = UIImageView(frame : CGRect(x: 30, y: 300,
                                               width:300, height: 150))
        Image.backgroundColor = .white
        Image.clipsToBounds = true
        Image.image = #imageLiteral(resourceName: "refraction")
        
        
        self.container.addSubview(Image)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func backAction()
    {
        self.present(LightViewController(), animated: true, completion: nil)
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
