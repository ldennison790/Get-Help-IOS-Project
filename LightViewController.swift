//
//  LightViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 08/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit

class LightViewController: UIViewController {
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    
    
    var label: UILabel = {
        let Label = UILabel(frame: CGRect(x: 75, y: 10, width: 450, height : 50))
        Label.text = "Pick Your Topic"
        Label.font = UIFont.systemFont(ofSize: 32)
        Label.textColor = .white
        
        
        
        return Label
        
        
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(self.container)
        self.container.addSubview(label)
        
        
        let Reflection = UIButton(frame: CGRect(x:30, y: 100, width: 300, height: 65))
        Reflection.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Reflection.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Reflection.addTarget(self, action: #selector(reflectionAction), for: .touchUpInside)
        Reflection.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Reflection.setTitle("Reflection", for: .normal)
        
        
        self.container.addSubview(Reflection)
        
        
        
        let Refraction = UIButton(frame: CGRect(x:30, y: 200, width: 300, height: 65))
        Refraction.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Refraction.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Refraction.addTarget(self, action: #selector(refractionAction), for: .touchUpInside)
        Refraction.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Refraction.setTitle("Refraction", for: .normal)
        
        
        
        let EM = UIButton(frame: CGRect(x:30, y: 300, width: 300, height: 65))
        EM.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        EM.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        EM.addTarget(self, action: #selector(emAction), for: .touchUpInside)
        EM.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        EM.setTitle("Electromagnetic Spectrum", for: .normal)
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 580, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)
        
        
        let fac = UIButton(frame: CGRect(x:30, y: 400, width: 300, height: 65))
        fac.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        fac.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        fac.addTarget(self, action: #selector(facAction), for: .touchUpInside)
        fac.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        fac.setTitle("Key Points", for: .normal)
        
        
        
        
        self.container.addSubview(fac)
        
        self.container.addSubview(Back)
        
        
        self.container.addSubview(EM)
        
        self.container.addSubview(Refraction)
        
      
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func reflectionAction()
    {
        self.present(ReflectionViewController(),animated: true, completion: nil)
    }
    
    func refractionAction()
    {
        self.present(RefractionViewController(),animated: true, completion: nil)
    }
    
    func emAction()
    {
        self.present(EMViewController(),animated: true, completion : nil)
    }
    
    func backAction()
    {
        self.present(PhysicsViewController(), animated: true, completion: nil)
    }
    
    func facAction()
    {
        self.present(FactsViewController(), animated: true, completion: nil)
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
