//
//  ViewController.swift
//  Hackathon
//
//  Created by Milton Casiano on 11/28/21.
//
import UIKit
class ViewController: UIViewController {


var numberOnScreen: Double = 0;
var previousNumber: Double = 0;
var performingMath = false;
var operation = 0;



@IBOutlet weak var label: UILabel!


@IBAction func numbers(_ sender: Any) {



    if performingMath == true {

        label.text = String((sender as AnyObject).tag-1)

    numberOnScreen = Double(label.text!)!

    performingMath = false

    }

    else {

        label.text = label.text! + String((sender as AnyObject).tag-1)

    numberOnScreen = Double(label.text!)!

    }
    }





@IBAction func buttons(_ sender: Any) {



    if label.text != "" && (sender as AnyObject).tag != 11 && (sender as AnyObject).tag != 16{

   // 11= AC (clear) , 16 = equalto(=)
   // Use tag numbers correctly

    previousNumber = Double(label.text!)!

        if (sender as AnyObject).tag == 12 { //Divide

    label.text = "/";

    }

        if (sender as AnyObject).tag == 13 { //Multiply

    label.text = "x";

    }

        if (sender as AnyObject).tag == 14 { //Subtract

    label.text = "-";

    }

        if (sender as AnyObject).tag == 15 { //Add

    label.text = "+";

    }

        operation = (sender as AnyObject).tag

    performingMath = true;

    }

    else if (sender as AnyObject).tag == 16 {

    if operation == 12{ //Divide

        label.text = String(previousNumber / numberOnScreen)

    }

    else if operation == 13{ //Multiply

    label.text = String(previousNumber * numberOnScreen)

    }

    else if operation == 14{ //Subtract

    label.text = String(previousNumber - numberOnScreen)

    }

    else if operation == 15{ //Add

    label.text = String(previousNumber + numberOnScreen)

    }

    }

    else if (sender as AnyObject).tag == 11{

    label.text = ""

    previousNumber = 0;

    numberOnScreen = 0;

    operation = 0;

    }

    }
  }
