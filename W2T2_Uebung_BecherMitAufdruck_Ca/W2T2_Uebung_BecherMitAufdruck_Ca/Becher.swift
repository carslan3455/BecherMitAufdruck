import Foundation

class Becher
{
    
    private var inhalt: String? = nil
    private let fassungsvermoegen: UInt
    private var fuellhoehe: Double
    
    // ----------------------------------------------------------
    
    init(inhalt: String? = nil, fassungsvermoegen: UInt, fuellhoehe: Double = 0.0)
    {
        self.inhalt = inhalt
        self.fassungsvermoegen = fassungsvermoegen
        self.fuellhoehe = fuellhoehe
    }
   
    
    public func getInhalt() -> String?
    {
        return inhalt
    }
    
    public func getFassungsvermoegen() -> UInt
    {
        return fassungsvermoegen
    }
    
    public func getFuellhoehe() -> Double
    {
        return fuellhoehe
    }
    
    
    
    public var description: String
    {
        var back = ""
        var i = ""
        var fu = ""
        
        if (inhalt != nil)
        {
            i = "Der Becher beinhaltet \(inhalt!) und "
            fu = "Er ist zu \(fuellhoehe * 100)% gefuellt."
        }
        else
        {
            i = "Der Becher ist leer und "
            fu = ""
        }
        
        back = i
        back += "hat ein Fassungsvermoegen von \(fassungsvermoegen) ml. "
        back += fu + "\n"
        
        return back
    }
    
    /*
     * Nachdem der Becher leer getrunken wurde, ist nichts
     * mehr drin.
     */
     public func leertrinken ()
    {
        inhalt = nil
        fuellhoehe = 0.0
    }
    
    // ----------------------------------------------------------
    
    /*
     * Es befindet sich noch ein Getraenk im Becher. Exakt
     * dieses Getraenk wird nachgefuellt, sodass der Becher
     * wieder voll ist.
     */
     public func nachfuellen()
    {
        if (inhalt != nil)
        {
            fuellhoehe = 1.0
        }
    }
    
    // ----------------------------------------------------------
    
    /*
     * Ein leerer Becher wird mit einem beliebigen
     * Getraenk gefuellt.
     */
    public func einschenken(inhalt: String)
    {
        if (self.inhalt == nil)
        {
            self.inhalt = inhalt
            self.fuellhoehe = 1.0
        }
    }
    
    // ----------------------------------------------------------
    
     public func schluckNehmen()
    {
        let anteil = 20.0 / Double(fassungsvermoegen)
        fuellhoehe -= anteil
        if (fuellhoehe < 0)
        {
            inhalt = nil
            fuellhoehe = 0.0
        }
    }
    
    
}
