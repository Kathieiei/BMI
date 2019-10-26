
import UIKit
//Kit แปลว่าเครื่องมือ
//UI แปลว่า User inter

// stuct จะเป็น Pass by value คือเหมือนก็อปปี้แยกกันตนละอันแก้อันใดอันนึงไม่มีผลกับอีกอัน
// class จะเป็น Pass by Reference คือเหมือนก็อปปี้แยกกันตนละอัน แก้อันใดอันนึงมีผลกับอีกอัน

struct CalculateBrain {
//    var bmi: Float = 0.0 //1 value เก็บตัวเดียว
    
    //ไม่ใช้แล้วเพราะใช้ bmistccแทน
    
    var bmiStruct: BMI? //3 value เก็บ 3 ตัว เป็นชุด (value addvice color)
    //เครื่องหมาย ? คือตัวแปรชนิด optional คือ ตัวเลือกจะมีหรือไม่มีค่ากได้
    //ดังนั้นอาจไม่มีค่าก็ได้
    
    func getBMIValue() -> String {
//        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No Advice"
        
        //if แบบย่อ
        //ตัวแปรทีต้องการดูว่ามีค่าหรือไม่ ถ้าไม่มีค่าให้ใช้ตัวนี้แทน
    }
    
    func getColor() -> UIColor{
        return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height:Float, weight:Float){
        //bmi ตัวที่ใช้นี้ไม่มี var or let นำหน้า คือตัวที่เป็น Global var
        //ส่วน weight and height คือตัวที่ฟังชั่นรับค่ามาในชื่อนั่น เป๋ย localvar
        //bmi = weight / (height*height)
        let bmiValueLocal = weight / (height * height)
        
        if bmiValueLocal < 18.5{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!" ,color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValueLocal < 24.9{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!" ,color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!" ,color: #colorLiteral(red: 0.9038507297, green: 0.04227566333, blue: 0, alpha: 1))
        }
    }
}
