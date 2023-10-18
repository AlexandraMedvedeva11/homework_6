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
        
        let less = result.filter({$0 <= 5})
    
        
        //3
        

        let more = result.filter({$0 >= 5})
      

        //4
        func getMyString (_ array: [Int], _ closure: (Int, Int?) -> Bool) -> Int {
            var optValue: Int? = nil
            for value in result {
                if closure(value, optValue) {
                    optValue = value
                }
            }
            return optValue!
        }

        print("max: \(result.reduce(result[0]){$0 < $1 ? $1 : $0})")

        //5
        extension Collection where Iterator.Element == String {
            func resultSort() -> [String] {
                return.self.sorted {$0.count > $1.count}
            }
        }
        
        string.stringSort()
        
        //6
        print (string.trimmingCharacters(in: .whitespaces))
    }


}


    }


}

