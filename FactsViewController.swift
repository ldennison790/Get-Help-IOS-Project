//
//  FactsViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 08/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit

class FactsViewController: UIViewController {
    
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    
    
    var ref: UILabel = {
        let ref = UILabel(frame: CGRect(x: 75, y: 10, width: 450, height : 30))
        ref.text = "Important Facts: "
        ref.font = UIFont.systemFont(ofSize: 28)
        ref.textColor = .white
        
        
        
        return ref
        
        
    }()
    
    var ref1: UILabel = {
        let ref1 = UILabel(frame: CGRect(x: 0, y: 100, width: 450, height : 30))
        ref1.text = "Light travels at 300,000,000m/s "
        ref1.font = UIFont.systemFont(ofSize: 14)
        ref1.textColor = .white
        
        
        
        return ref1
        
        
    }()
    
    var ref2: UILabel = {
        let ref2 = UILabel(frame: CGRect(x: 0, y: 200, width: 450, height : 30))
        ref2.text = "Light travels in straight lines "
        ref2.font = UIFont.systemFont(ofSize: 14)
        ref2.textColor = .white
        
        
        
        return ref2
        
        
    }()
    
    var ref3: UILabel = {
        let ref3 = UILabel(frame: CGRect(x: 0, y: 300, width: 450, height : 30))
        ref3.text = "Light can travel through a vacuum"
        ref3.font = UIFont.systemFont(ofSize: 14)
        ref3.textColor = .white
        
        
        
        return ref3
        
        
    }()
    
    var ref4: UILabel = {
        let ref4 = UILabel(frame: CGRect(x: 0, y: 400, width: 450, height : 30))
        ref4.text = "Transparent materials allow light to travel straight through"
        ref4.font = UIFont.systemFont(ofSize: 14)
        ref4.textColor = .white
        
        
        
        return ref4
        
        
    }()
    
    var ref5: UILabel = {
        let ref5 = UILabel(frame: CGRect(x: 0, y: 420, width: 450, height : 30))
        ref5.text = "Translucent materials scatter the light in different directions"
        ref5.font = UIFont.systemFont(ofSize: 13.5)
        ref5.textColor = .white
        
        
        
        return ref5
        
        
    }()
    
    var ref6: UILabel = {
        let ref6 = UILabel(frame: CGRect(x: 0 , y: 440, width: 450, height : 30))
        ref6.text = "Opaque objects do not let light through"
        ref6.font = UIFont.systemFont(ofSize: 14)
        ref6.textColor = .white
        
        
        
        return ref6
        
        
    }()
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.container)
        self.container.addSubview(ref)
        self.container.addSubview(ref1)
        self.container.addSubview(ref2)
        self.container.addSubview(ref3)
        self.container.addSubview(ref4)
        self.container.addSubview(ref5)
        self.container.addSubview(ref6)
        
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 580, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)
        
        self.container.addSubview(Back)

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
