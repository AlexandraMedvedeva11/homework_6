//
//  ViewController.swift
//  hw6
//
//  Created by  Medvedeva Alexandra on 18.10.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var string: Array <String> = ["abc", "abc dyf", "abc dyf ghi", "abc dyf ghi jkl", "abc dyf ghi jkl mno", "abc dyf ghi jkl mno pqr", "abc dyf ghi jkl mno pqr stu" ]
        
        
        
        //1
        
        let result = string.map {$0.count}
        let sum = result.reduce(0, +)
        print(sum)
        
        
        //2
        
        let less = string.filter({$0.count <= 5})
        
        
        //3
        
        
        let more = string.filter({$0.count >= 10})
        print (more)
        
        
        //4
        
        if let max = string.max() {
            print("Максимальное значение в массие:", max)
        }
            
        
        //5
        let sortstring = string.sorted {$0.count > $1.count}
        
        
        //6
        print (string [0].trimmingCharacters(in: .whitespaces))
        print (string [1].trimmingCharacters(in: .whitespaces))
        print (string [2].trimmingCharacters(in: .whitespaces))
        print (string [3].trimmingCharacters(in: .whitespaces))
        print (string [4].trimmingCharacters(in: .whitespaces))
        print (string [5].trimmingCharacters(in: .whitespaces))
        print (string [6].trimmingCharacters(in: .whitespaces))
        
        let result1 = string.map {
            String($0.replacingOccurrences(of: " ", with: ""))
        
        }
    }


}







