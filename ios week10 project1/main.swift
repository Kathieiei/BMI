//declare Object
var Johny = Enemy()


//access Func or medtod
//medthod ต้องมี () ต่อท้าย
//Johny.attack()
//Johny.move()
//accese var or properties
// ไม่มี()  = ตัวแปร
//print("health=\(Johny.health)")
//print("attact strength=\(Johny.attackStrength)")

var M = Dragon()
M.move()//ใช้ได้เพราะสืบทอดมาจากEnemy
M.attack()
M.talk(speech: "Wow!!")
print("wing span \(M.wingSpan)")

