import Foundation

class BecherMitAufdruck: Becher
{
    private var name: String
    
    init(name: String, inhalt: String? = nil, fassungsvermoegen: UInt, fuellhoehe: Double)
    {
        self.name = name
        super.init(inhalt: inhalt , fassungsvermoegen: fassungsvermoegen, fuellhoehe: fuellhoehe)
    }
    
    
    override var description: String
    {
        
        var back = ""
        
        back = "Der Becher gehoert \(self.name).\n"
        back += super.description 
        
        return back
    }
}
