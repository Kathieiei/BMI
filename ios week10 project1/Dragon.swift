//interitance = สืบทอด ได้มรดกทั้งหมดจากคลาสแม่
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech:String){
        print("Say: \(speech)")
    }
    
    override func move() {
        super.move()
        print("Fly forwards")
    }
}
