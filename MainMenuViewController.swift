//
//  MainMenuViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 29/05/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class MainMenuViewController: UIViewController {
    
    
    var container: UIView = {
        let V = UIView(frame: CGRect(x:0, y:0, width: 500, height : 800))
        V.backgroundColor = UIColor(red: 0/255, green: 116/255, blue: 249/255, alpha: 1.0)
        return V
    }()
    
    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 146/255, green: 173/255, blue: 184/225, alpha: 1.0)
        self.view.addSubview(container)
               
        
       
        
        let Exams = UIButton(frame: CGRect(x:10, y: 100, width: 350, height: 200))
        Exams.setBackgroundImage(UIImage(color: UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)), for: .normal)
        Exams.titleLabel?.font = UIFont.systemFont(ofSize: 48)
        Exams.addTarget(self, action: #selector(examsAction), for: .touchUpInside)
        Exams.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Exams.setTitle("Exam Help", for: .normal)
        
        self.container.addSubview(Exams)
        
        
        
        let Others = UIButton()
        Others.frame = CGRect(x: 10,y: 400, width: 350, height: 200)
        Others.backgroundColor = UIColor(red: 255/255, green: 136/255, blue: 0/255, alpha: 1.0)
        Others.setTitle("Others", for: .normal)
        Others.titleLabel?.font = UIFont.systemFont(ofSize: 42)
        Others.setTitleColor(UIColor(red: 252/255, green: 252/255, blue: 252/255, alpha: 1.0), for: .normal)
        Others.addTarget(self, action: #selector(othersAction), for: .touchUpInside)
        self.container.addSubview(Others)
        
        
        
        
        
        
    }
        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func examsAction()
    {
        self.present(ExamViewController(), animated: true, completion: nil)
    }
    
    func logoutAction()
    {
       // Auth.auth().signOut()
    }
    
    func othersAction()
    {
        self.present(OthersViewController(),animated: true,completion: nil)
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
