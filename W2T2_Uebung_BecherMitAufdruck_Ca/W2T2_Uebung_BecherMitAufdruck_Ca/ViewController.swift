import UIKit

class ViewController: UIViewController
{
    private let tv: MyLibrary.MyTextView = MyLibrary.MyTextView().create()
    
    
    
    // --------------------------------------------------------------
    
    private func tests(_ becher: BecherMitAufdruck)
    {
        let b = becher
        tv.print("(1) " + b.description + "\n")
        b.schluckNehmen()
        tv.print("(2) " + b.description + "\n")
        b.leertrinken()
        tv.print("(3) " + b.description + "\n")
        b.nachfuellen()
        tv.text += "(4) " + b.description + "\n"
        b.einschenken(inhalt: "Kakao")
        tv.text += "(5) " + b.description + "\n"
        b.schluckNehmen()
        tv.text += "(6) " + b.description + "\n"
        b.nachfuellen()
        tv.text += "(7) " + b.description + "\n"
    }
    
    // --------------------------------------------------------------
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        
        view.addSubview(tv)
        tv.frame = MyLibrary.MyCGRecht(vw: view).getRect()
        
        //var b1: Becher = Becher(inhalt: "Kaffee", fassungsvermoegen: 300, fuellhoehe: 0.6)
        //tests(b1)
        
        // var b2: Becher = Becher(fassungsvermoegen: 300, fuellhoehe: 0.7)
        // tests(b2)
        let bma: BecherMitAufdruck = BecherMitAufdruck(name: "Cigdem", inhalt: "Kaffee", fassungsvermoegen: 300, fuellhoehe: 0.6)
        tests(bma)
        
        // name: String, inhalt: String? = nil, fassungsvermoegen: UInt, fuellhoehe: Double = 0.0
    }
}

