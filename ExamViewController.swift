//
//  ExamViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 31/05/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase



class ExamViewController: UIViewController {
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    
    
    var label: UILabel = {
        let Label = UILabel(frame: CGRect(x: 75, y: 10, width: 450, height : 50))
        Label.text = "Pick Your Subject!"
        Label.font = UIFont.systemFont(ofSize: 32)
        Label.textColor = .white
        
        
        
        return Label
       
        
        
        }()
    
   
        
    

    override func viewDidLoad() {
        
        

        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 146/255, green: 173/255, blue: 184/225, alpha: 1.0)
        
        
        self.view.addSubview(container)
        
        
        
        
        
        
        
        
        
        let Physics = UIButton(frame: CGRect(x:10, y: 70, width: 170, height: 65))
        Physics.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Physics.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Physics.addTarget(self, action: #selector(physicsAction), for: .touchUpInside)
        Physics.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Physics.setTitle("Physics", for: .normal)
        
        let Geography = UIButton(frame: CGRect(x:10, y: 150, width: 170, height: 65))
        Geography.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Geography.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Geography.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        Geography.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Geography.setTitle("Geography", for: .normal)
        
       let English = UIButton(frame: CGRect(x:10, y: 230, width: 170, height: 65))
        English.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        English.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        English.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        English.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        English.setTitle("English", for: .normal)
        
        let French = UIButton(frame: CGRect(x:10, y: 310, width: 170, height: 65))
        French.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        French.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        French.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        French.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        French.setTitle("French", for: .normal)
        
        let Maths = UIButton(frame: CGRect(x:10, y: 390, width: 170, height: 65))
        Maths.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Maths.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Maths.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        Maths.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Maths.setTitle("Maths", for: .normal)
        
        let History = UIButton(frame: CGRect(x:10, y: 470, width: 170, height: 65))
        History.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        History.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        History.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        History.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        History.setTitle("History", for: .normal)
        
        
        
        let Back = UIButton(frame: CGRect(x:0, y: 580, width: 400, height: 65))
        Back.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Back.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Back.addTarget(self, action: #selector(backAction), for: .touchUpInside)
        Back.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Back.setTitle("Back", for: .normal)
        
        //Back Button
        self.container.addSubview(Back)
        //Left hand Side Buttons
        self.container.addSubview(History)
        self.container.addSubview(Maths)
        self.container.addSubview(Geography)
        self.container.addSubview(Physics)
        self.container.addSubview(English)
        self.container.addSubview(French)
        
        
        //Right hand side buttons
        
        let Ch = UIButton(frame: CGRect(x:190, y: 70, width: 170, height: 65))
        Ch.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Ch.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Ch.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        Ch.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Ch.setTitle("Chemsitry", for: .normal)
        
        let Tech = UIButton(frame: CGRect(x:190, y: 150, width: 170, height: 65))
        Tech.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Tech.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Tech.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        Tech.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Tech.setTitle("Technology", for: .normal)
        
        let German = UIButton(frame: CGRect(x:190, y: 230, width: 170, height: 65))
        German.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        German.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        German.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        German.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        German.setTitle("German", for: .normal)
        
        let RE = UIButton(frame: CGRect(x:190, y: 310, width: 170, height: 65))
        RE.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        RE.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        RE.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        RE.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        RE.setTitle("RE", for: .normal)
        
        let Bio = UIButton(frame: CGRect(x:190, y: 390, width: 170, height: 65))
        Bio.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Bio.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        Bio.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        Bio.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Bio.setTitle("Biology", for: .normal)
        
        let ICT = UIButton(frame: CGRect(x:190, y: 470, width: 170, height: 65))
        ICT.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        ICT.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        ICT.addTarget(self, action: #selector(commonAction), for: .touchUpInside)
        ICT.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        ICT.setTitle("ICT", for: .normal)




        
        self.container.addSubview(ICT)
        self.container.addSubview(Tech)
        self.container.addSubview(Ch)
        self.container.addSubview(German)
        self.container.addSubview(Bio)
        self.container.addSubview(RE)
        
        
        
        
        
        
        self.container.addSubview(label)
        
        
        
        
    }

        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
    
    
   
    func commonAction()
    {
        self.present(CommonActionViewController(),animated: true, completion: nil)
    }
    
    func backAction()
    {
        self.present(MainMenuViewController(), animated: true, completion: nil)
    }
    
    func physicsAction()
    {
      self.present(PhysicsViewController(), animated: true, completion: nil)
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
