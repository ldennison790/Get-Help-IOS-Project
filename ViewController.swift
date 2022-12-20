//
//  ViewController.swift
//  GetHelp.6
//
//  Created by janice dennison on 23/05/2017.
//  Copyright © 2017 Luke Dennison. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var ref: DatabaseReference?
        ref = Database.database().reference()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class MYTextField : UITextField
{
    
    override func textRect(forBounds bounds : CGRect) -> CGRect
    {
        return super.textRect(forBounds: bounds).insetBy(dx: 10, dy: 0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return super.editingRect(forBounds: bounds).insetBy(dx: 10, dy: 0)
    }
}

extension UIImage{

    public convenience init?(color : UIColor, size : CGSize = CGSize(width: 1, height: 1))
    {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false , 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else{
            return nil
        }
        self.init(cgImage: cgImage)
        
    }
   
}
