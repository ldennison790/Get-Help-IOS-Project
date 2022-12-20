//
//  SoundViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 11/06/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit



class SoundViewController: UIViewController
{
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
        
        
        
        let KeyTerms = UIButton(frame: CGRect(x:10, y: 100, width: 350, height: 65))
        KeyTerms.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        KeyTerms.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        KeyTerms.addTarget(self, action: #selector(soundAction), for: .touchUpInside)
        KeyTerms.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        KeyTerms.setTitle("Key Terms", for: .normal)
        
        
        self.container.addSubview(KeyTerms)
        
        
        let Decibel = UIButton(frame: CGRect(x:10, y: 200, width: 350, height: 65))
        Decibel.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Decibel.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Decibel.addTarget(self, action: #selector(sound1Action), for: .touchUpInside)
        Decibel.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Decibel.setTitle("Decibel Scale", for: .normal)
        
        self.container.addSubview(Decibel)
        
        
        
        let Equations = UIButton(frame: CGRect(x:10, y:300, width: 350, height: 65))
        Equations.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Equations.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Equations.addTarget(self, action: #selector(sound2Action), for: .touchUpInside)
        Equations.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Equations.setTitle("Equations", for: .normal)
        
        self.container.addSubview(Equations)
        
        
        
       
        
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 580, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)
        
        self.container.addSubview(Back)
        
        
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    func soundAction()
    {
      self.present(KeyTermsViewController(), animated: true, completion: nil)
    }
    
    func sound1Action()
    {
      self.present(DecibelViewController(),animated: true, completion: nil)
    }
    
    func sound2Action()
    {
    self.present(EquationsViewController(), animated: true, completion: nil)
    }
    
   
    
    func backAction()
    {
        self.present(PhysicsViewController(), animated: true, completion: nil)
    }
}
