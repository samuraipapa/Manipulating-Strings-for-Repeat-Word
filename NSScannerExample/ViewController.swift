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

    
    // gobal collections
    var submittedTextArray = [""]
    var copySubmittedTextArray  = [""]
    var repeatedWordList = [""]
    var repeatedWordDictionary = ["start":0]
    
    // UIStuff
    @IBOutlet weak var textViewInput: UITextView!
    
    @IBOutlet weak var textViewOutput: UITextView!
    
    @IBAction func buttonPoemize(sender: UIButton) {
       printAttributedText()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //scannerEx1()
        makeArrayFromTextViewString()
        
        findRepeatedwords()
        
      //  printAttributedText()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    func makeArrayFromTextViewString(){
        
        submittedTextArray = textViewInput.text.wordList
        println(submittedTextArray)
    }
    

    func findRepeatedwords(){
    
        
        for word in submittedTextArray{
            copySubmittedTextArray.append(word)
            
            
        }

        println("Repeated Words Array:  \(copySubmittedTextArray)")

        lookForRepeatWords()
    }
    
    
    
    func lookForRepeatWords(){
        
        
        
        for eachWord in submittedTextArray{
            for everyWord in copySubmittedTextArray{
                if eachWord == everyWord {
                    
                    
         //           var str9 = String(count: 2,repeatedValue: String("the"))
           //         println("str9 :\(str9)")
                    
                    
                    let match = everyWord

                    if (everyWord != repeatedWordDictionary.keys) {
                    repeatedWordList.append(everyWord)
                    repeatedWordDictionary.updateValue( 0, forKey: everyWord)
                    
                    }
                    
                    println("Added to repeatedWordDictionary: \(repeatedWordDictionary)")
                }
                    else {
                        
                 //       self.copySubmittedTextArray.removeLast()
                    
                 //   println("Word Erased: \(everyWord)")
                }
                
               // println("Repeats: \(everyWord)")
                
        //        println(repeatedWordList)
            
            }
            }
            
         //   if word ==
        }
        
    
    
    
    func printAttributedText(){
        
        // Code orginally from http://www.ioscreator.com/tutorials/attributed-strings-tutorial-ios8-swift
        // 1
  
        let string = self.textViewInput.text as NSString
      
        
        
   //    let string = "Testing Attributed Strings" as NSString
        
//        let myParagraph
        
        var attributedString = NSMutableAttributedString(string: string)
        
        // 2
        let firstAttributes = [NSForegroundColorAttributeName: UIColor.blueColor(), NSBackgroundColorAttributeName: UIColor.yellowColor(), NSUnderlineStyleAttributeName: 1]
        let secondAttributes = [NSForegroundColorAttributeName: UIColor.redColor(), NSBackgroundColorAttributeName: UIColor.blueColor(), NSStrikethroughStyleAttributeName: 1]
        let thirdAttributes = [NSForegroundColorAttributeName: UIColor.greenColor(), NSBackgroundColorAttributeName: UIColor.blackColor(), NSFontAttributeName: UIFont.systemFontOfSize(40)]
        
        // 3
        attributedString.addAttributes(firstAttributes, range: string.rangeOfString("the"))
        attributedString.addAttributes(secondAttributes, range: string.rangeOfString("The"))
        attributedString.addAttributes(thirdAttributes, range: string.rangeOfString(string))
        
        
        // 4
        textViewOutput.attributedText = attributedString
    
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

