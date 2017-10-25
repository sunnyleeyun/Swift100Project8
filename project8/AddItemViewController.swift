//
//  AddItemViewController.swift
//  project8
//
//  Created by Mac on 2017/10/25.
//  Copyright © 2017年 Sunny, Lee. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
  
  @IBOutlet weak var textView: UITextView!
  
  // MARK: - Properties
  var movie: Movie?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    textView.text = ""
    textView.becomeFirstResponder()
    // Do any additional setup after loading the view.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "save",
      let newMovie = textView.text {
      movie = Movie(movieName: newMovie)
    }
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
