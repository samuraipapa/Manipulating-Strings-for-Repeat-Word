//
//  ViewController.swift
//  NSScannerExample
//
//  Created yuryg on 3/9/15.
//  Copyright (c) 2015 yuryg. All rights reserved.
//

//

import UIKit


// from
// http://stackoverflow.com/questions/25678373/swift-split-a-string-into-an-array

extension String {
    var wordList:[String] {
        return "".join(componentsSeparatedByCharactersInSet(NSCharacterSet.punctuationCharacterSet())).componentsSeparatedByString(" ")
    }
}




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scannerEx1()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    func printAttributedText(){
        
        // Code orginally from http://www.ioscreator.com/tutorials/attributed-strings-tutorial-ios8-swift
        // 1
        
        let string = "Testing Attributed Strings" as NSString
        var attributedString = NSMutableAttributedString(string: string)
        
        // 2
        let firstAttributes = [NSForegroundColorAttributeName: UIColor.blueColor(), NSBackgroundColorAttributeName: UIColor.yellowColor(), NSUnderlineStyleAttributeName: 1]
        let secondAttributes = [NSForegroundColorAttributeName: UIColor.redColor(), NSBackgroundColorAttributeName: UIColor.blueColor(), NSStrikethroughStyleAttributeName: 1]
        let thirdAttributes = [NSForegroundColorAttributeName: UIColor.greenColor(), NSBackgroundColorAttributeName: UIColor.blackColor(), NSFontAttributeName: UIFont.systemFontOfSize(40)]
        
        // 3
        attributedString.addAttributes(firstAttributes, range: string.rangeOfString("Testing"))
        attributedString.addAttributes(secondAttributes, range: string.rangeOfString("Attributed"))
        attributedString.addAttributes(thirdAttributes, range: string.rangeOfString("Strings"))
        
        // 4
        attributedLabel.attributedText = attributedString
    }
    }
    
    func scannerEx1(){
        
        var i = 0
        
        var  myWordList = starterString.wordList  // ["First", "Last"]
        var repeatedWordArray = ["hello"]
        
        
        var myDictionary: [String:Array] = [ "hello" : [1,1,1] ]
        
        
        for word in myWordList {

            
            for checkWord in myWordList {
                
                   if (checkWord == word){
                   repeatedWordArray.append(word)
                    
                      var repeatedWord = checkWord
                            repeatedWordArray.append(repeatedWord)

                        
                    }
                    
                    println(repeatedWordArray)

                }
            }
            
        }

        
        
        
}

