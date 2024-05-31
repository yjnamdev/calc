//
//  ViewController.swift
//  Storyboard
//
//  Created by 남연정 on 2022/05/17.
//

import UIKit

extension UIView {
    
    // 버튼 테두리
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
    
    // 버튼 둥글게 만들기
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
}


class ViewController: UIViewController {

    // 세로형 결과창
    @IBOutlet weak var laNumberShow: UILabel!
    // 가로형 결과창
    @IBOutlet weak var laNumberShow2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    var newOperation = true

    func AddNumberToInput(number: String) {
        var textNumber =  String(laNumberShow.text!)
        if newOperation {
            textNumber = "" // 첫 숫자가 0이 아닐 경우 0 제거
            newOperation = false // 이어서 작성된 숫자 연결
        }
            textNumber = textNumber + number
        laNumberShow.text = textNumber
    }

    @IBAction func btn0(_ sender: Any) {
        AddNumberToInput(number: "0")
    }
    @IBAction func btnDot(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    @IBAction func btn1(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    @IBAction func btn2(_ sender: Any) {
        AddNumberToInput(number: "2")
    }
    @IBAction func btn3(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    @IBAction func btn4(_ sender: Any) {
        AddNumberToInput(number: "4")
    }
    @IBAction func btn5(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    @IBAction func btn6(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    @IBAction func btn7(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    @IBAction func btn8(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    @IBAction func btn9(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    
    // 더하기
    @IBAction func btnAdd(_ sender: Any) {
        op = "+"
        num1 = Double(laNumberShow.text!)
        newOperation = true
    }
    // 빼기
    @IBAction func btnSub(_ sender: Any) {
        op = "−"
        num1 = Double(laNumberShow.text!)
        newOperation = true
    }
    // 곱하기
    var op = "+"
    var num1: Double?
    @IBAction func btnMul(_ sender: Any) {
        op = "×"
        num1 = Double(laNumberShow.text!)
        newOperation = true
    }
    // 나누기
    @IBAction func btnDiv(_ sender: Any) {
        op = "÷"
        num1 = Double(laNumberShow.text!)
        newOperation = true
    }
    // 결과
    @IBAction func btnEqual(_ sender: Any) {
        let num2 = Double(laNumberShow.text!)
        var results: Double?
        switch op {
        case "+":
            results = num1! + num2!
        case "−":
            results = num1! - num2!
        case "×":
            results = num1! * num2!
        case "÷":
            results = num1! / num2!
        default:
            results = 0.0
        }
        laNumberShow.text = String(results!)
        newOperation = true
    }
    // AC
    @IBAction func btnAC(_ sender: Any) {
        laNumberShow.text = "0"
        newOperation = true
    }
    // ⁺/₋
    @IBAction func btnSign(_ sender: Any) {
        var textNumber = String (laNumberShow.text!)
        textNumber = "-" + textNumber
        laNumberShow.text = textNumber
    }
    // %
    @IBAction func btnPercent(_ sender: Any) {
        var num1 = Double(laNumberShow.text!)
        num1 = num1!/100.0
        laNumberShow.text = String(num1!)
        newOperation = true
    }
    
    
    // 가로형 계산기 버튼 --------------------------------------
    func AddNumberToInput2(number: String) {
        var textNumber =  String(laNumberShow2.text!)
        if newOperation {
            textNumber = "" // 첫 숫자가 0이 아닐 경우 0 제거
            newOperation = false // 이어서 작성된 숫자 연결
        }
            textNumber = textNumber + number
        laNumberShow2.text = textNumber
    }
    
    @IBAction func bu0(_ sender: Any) {
        AddNumberToInput2(number: "0")
    }
    @IBAction func buDot(_ sender: Any) {
        AddNumberToInput2(number: ".")
    }
    @IBAction func bu1(_ sender: Any) {
        AddNumberToInput2(number: "1")
    }
    @IBAction func bu2(_ sender: Any) {
        AddNumberToInput2(number: "2")
    }
    @IBAction func bu3(_ sender: Any) {
        AddNumberToInput2(number: "3")
    }
    @IBAction func bu4(_ sender: Any) {
        AddNumberToInput2(number: "4")
    }
    @IBAction func bu5(_ sender: Any) {
        AddNumberToInput2(number: "5")
    }
    @IBAction func bu6(_ sender: Any) {
        AddNumberToInput2(number: "6")
    }
    @IBAction func bu7(_ sender: Any) {
        AddNumberToInput2(number: "7")
    }
    @IBAction func bu8(_ sender: Any) {
        AddNumberToInput2(number: "8")
    }
    @IBAction func bu9(_ sender: Any) {
        AddNumberToInput2(number: "9")
    }
    
    // 더하기 (가로형)
    @IBAction func buAdd(_ sender: Any) {
        op2 = "+"
        num3 = Double(laNumberShow2.text!)
        newOperation = true
    }
    // 빼기 (가로형)
    @IBAction func buSub(_ sender: Any) {
        op2 = "−"
        num3 = Double(laNumberShow2.text!)
        newOperation = true
    }
    // 곱하기 (가로형)
    var op2 = "+"
    var num3: Double?
    @IBAction func buMul(_ sender: Any) {
        op2 = "×"
        num3 = Double(laNumberShow2.text!)
        newOperation = true
    }
    // 나누기 (가로형)
    @IBAction func buDiv(_ sender: Any) {
        op2 = "÷"
        num3 = Double(laNumberShow2.text!)
        newOperation = true
    }
    // 결과 (가로형)
    @IBAction func buEqual(_ sender: Any) {
        let num4 = Double(laNumberShow2.text!)
        var results: Double?
        switch op2 {
        case "+":
            results = num3! + num4!
        case "−":
            results = num3! - num4!
        case "×":
            results = num3! * num4!
        case "÷":
            results = num3! / num4!
        default:
            results = 0.0
        }
        laNumberShow2.text = String(results!)
        newOperation = true
    }
    // AC
    @IBAction func buAC(_ sender: Any) {
        laNumberShow2.text = "0"
        newOperation = true
    }
    // ⁺/₋
    @IBAction func buSign(_ sender: Any) {
        var textNumber = String (laNumberShow2.text!)
        textNumber = "-" + textNumber
        laNumberShow2.text = textNumber
    }
    // %
    @IBAction func buPercent(_ sender: Any) {
        var num3 = Double(laNumberShow2.text!)
        num3 = num3!/100.0
        laNumberShow2.text = String(num3!)
        newOperation = true
    }
    
    // 알림창 생성 버튼 ---------------------------------------
    // info
    @IBAction func buInfo(_ sender: Any) {
        Output_Alert(title: "도움말", message: "이 버튼은 공식 속 각 알파벳에 대한 정보를 나타냅니다.", text: "확인")
    }
    // 이자율
    @IBAction func interestRate(_ sender: Any) {
        Output_Alert(title: "도움말", message: "이자율 계산을 원하시면 오른쪽의\n'I / PT = R' 버튼을 참고하세요.", text: "확인")
    }
    // 복리
    @IBAction func compound(_ sender: Any) {
        Output_Alert(title: "도움말", message: "복리 계산을 원하시면 오른쪽의\n'P(1 + I)ⁿ' 버튼을 참고하세요.", text: "확인")
    }
    // 4대보험
    @IBAction func insurance(_ sender: Any) {
        Output_Alert(title: "도움말", message: "급여를 입력하고 4대보험 중 계산하고자 하는 항목을 오른쪽 4개의 버튼에서 선택하세요.\n\n[2022년 5월 기준 - 근로자부담액]\n국민연금 = 급여 × 4.5%\n건강보험 = 급여 × 3.495%\n고용보험 = 실업급여 × 0.8%\n장기요양 = 건강보험료 × 6.135%", text: "확인")
    }
    // I/PT = R
    @IBAction func r(_ sender: Any) {
        Output_Alert(title: "도움말", message: "\n1. I  값 입력 후 '▷' 버튼을 눌러주세요.\n2. P 값 입력 후 '▶︎' 버튼을 눌러주세요.\n3. T 값 입력 후 'R ⏎' 버튼을 눌러주세요.", text: "확인")
    }
    // P(1+I)ⁿ
    @IBAction func p(_ sender: Any) {
        Output_Alert(title: "도움말", message: "\n1. P 값 입력 후 '▷' 버튼을 눌러주세요.\n2. I  값 입력 후 '▶︎' 버튼을 눌러주세요.\n3. n 값 입력 후 'C ⏎' 버튼을 눌러주세요.\n\n[n: 회차]", text: "확인")
    }
    
    // 도움말 창
    func Output_Alert(title: String, message: String, text: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: text, style: UIAlertAction.Style.cancel, handler: nil)

        alertController.addAction(okButton)

        return self.present(alertController, animated: true, completion: nil)
    }
    
    // 계산 버튼 --------------------------------------------
    // 1번 숫자 입력 ▷ 2번 숫자 입력 ▶︎ 3번 숫자 입력 ⏎
    // ▷
    var num5: Double?
    @IBAction func nextR(_ sender: UIButton) {
        num5 = Double(laNumberShow2.text!)
        newOperation = true
    }
    // ▶︎
    var num6: Double?
    @IBAction func nextR2(_ sender: Any) {
        num6 = Double(laNumberShow2.text!)
        newOperation = true
    }
    // R ⏎
    @IBAction func resultR(_ sender: Any) {
        let num7 = Double(laNumberShow2.text!)
        var results2: Double?
        results2 = num5! / (num6! * num7!)
        laNumberShow2.text = String(results2!)
        newOperation = true
    }
    // C ⏎
    @IBAction func resultC(_ sender: Any) {
        let num7 = Double(laNumberShow2.text!)
        var results3: Double?
        results3 = num5! * pow((1 + num6!), num7!)
        laNumberShow2.text = String(results3!)
        newOperation = true
    }
    // 국민연금
    @IBAction func pension(_ sender: Any) {
        var num3 = Double(laNumberShow2.text!)
        num3 = num3!*0.045
        laNumberShow2.text = String(num3!) + String(" 원")
        newOperation = true
    }
    // 건강보험
    @IBAction func health(_ sender: Any) {
        var num3 = Double(laNumberShow2.text!)
        num3 = num3!*0.03495
        laNumberShow2.text = String(num3!) + String(" 원")
        newOperation = true
    }
    // 고용보험
    @IBAction func imployment(_ sender: Any) {
        var num3 = Double(laNumberShow2.text!)
        num3 = num3!*0.008
        laNumberShow2.text = String(num3!) + String(" 원")
        newOperation = true
    }
    // 장기요양
    @IBAction func care(_ sender: Any) {
        var num3 = Double(laNumberShow2.text!)
        num3 = num3!*0.06135
        laNumberShow2.text = String(num3!) + String(" 원")
        newOperation = true
    }
}
