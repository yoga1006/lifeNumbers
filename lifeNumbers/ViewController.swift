//
//  ViewController.swift
//  lifeNumbers
//
//  Created by Yoga on 2022/6/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroungView: UIView!
    @IBOutlet weak var backgruond2ImageView: UIImageView!
    @IBOutlet weak var background3ImageView: UIImageView!
    
    @IBOutlet weak var starSignDatePicker: UIDatePicker!
    @IBOutlet weak var starSignLabel: UILabel!
    @IBOutlet weak var starsignImageview: UIImageView!
    @IBOutlet weak var lifeNumLabel: UILabel!
    @IBOutlet weak var lifeNumMeansLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backgroungView.layer.cornerRadius = 50
        backgruond2ImageView.layer.cornerRadius = 50
        background3ImageView.layer.cornerRadius = 30
        
    }
    
    
    @IBAction func done(_ sender: UIButton) {
        starSigns()
        lifeCodeCalculate()
    }
    
    
    //生日對應星座
    func starSigns(){
        //取值(選取日期）
        let pickDate = starSignDatePicker.date
        let dateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: pickDate)
        let month = dateComponents.month!
        let day = dateComponents.day!
        
        //設定星座名稱、顯示星座image
        if month==1 && day>=20 || month==2 && day<=18{
            starSignLabel.text = "水瓶座 Aquarius"
            starsignImageview.image=UIImage(named: "Aquarius")}
        else if month==2 && day>=19 || month==3 && day<=20{
            starSignLabel.text = "雙魚座 Pisces"
            starsignImageview.image=UIImage(named: "Pisces")}
        else if month==3 && day>=21 || month==4 && day<=19{
            starSignLabel.text = "牡羊座 Aries"
            starsignImageview.image=UIImage(named: "Aries")}
        else if month==4 && day>=20 || month==5 && day<=20{
            starSignLabel.text = "金牛座 Taurus"
            starsignImageview.image=UIImage(named: "Taurus")}
        else if month==5 && day>=21 || month==6 && day<=21{
            starSignLabel.text = "雙子座 Gemini"
            starsignImageview.image=UIImage(named: "Gemini")}
        else if month==6 && day>=22 || month==7 && day<=22{
            starSignLabel.text = "巨蟹座 Cancer"
            starsignImageview.image=UIImage(named: "Cancer")}
        else if month==7 && day>=23 || month==8 && day<=22{
            starSignLabel.text = "獅子座 Leo"
            starsignImageview.image=UIImage(named: "Leo")}
        else if month==8 && day>=23 || month==9 && day<=22{
            starSignLabel.text = "處女座 Virgo"
            starsignImageview.image=UIImage(named: "Virgo")}
        else if month==9 && day>=23 || month==10 && day<=23{
            starSignLabel.text = "天秤座 Libra"
            starsignImageview.image=UIImage(named: "Libra")}
        else if month==10 && day>=24 || month==11 && day<=22{
            starSignLabel.text = "天蠍座 Scorpio"
            starsignImageview.image=UIImage(named: "Scorpio")}
        else if month==11 && day>=23 || month==12 && day<=21{
            starSignLabel.text = "射手座 Sagittarius"
            starsignImageview.image=UIImage(named: "Sagittarius")}
        else if month==12 && day>=22 || month==1 && day<=19{
            starSignLabel.text = "摩羯座 Capricorn"
            starsignImageview.image=UIImage(named: "Capricorn")}
                    
        }
    
    
    //計算生命靈數
    func lifeCodeCalculate(){
        //每個生命靈數對應的評語
        let lifeNumMeans = ["","獨立、積極\n創造、領導、能量","敏感、體貼\n柔順、和諧、依賴","行動、樂觀\n自信、表現、社交","忠誠、次序\n效率、助人、自律","聰穎、冒險\n適應、變化、學習","穩定、信賴\n熱情、正義、奉獻","內省、沉默\n直覺、真理、理想","忠貞、持續\n堅定、誠懇、照料","人性、啟發\n活力、關懷、靈性"]
        
        //日期轉成字串
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yMd"
        var dateString = dateFormatter.string(from: starSignDatePicker.date)
        
        var sum = 0
        
       /* //for迴圈：每個字元相加
        for character in dateString{
            //字串轉數字（才能相加）
            let number = Int(String(character))!
            sum = sum+number
        }
        //當總和>9，每個字元再做相加（十位數、個位數）
        while sum > 9{
            let tens = sum/10
            let one = sum%10
            sum = tens+one
        }
        lifeNumLabel.text="\(sum)"
       lifeNumMeansLabel.text=lifeNumMeans[sum]
        */
        
        
       //repeat-while迴圈
       repeat{
            //每次repeat都從0開始，否則會進入無限迴圈
            sum = 0
            //for迴圈：每個字元相加
            for character in dateString{
                //字串轉數字（才能相加）
                let number = Int(String(character))!
                sum = sum+number
            }
            //得到的總和轉成字串
            dateString = "\(sum)"
        //當sum>9，執行迴圈
        }while sum > 9
        //當sum<=9，不再執行
        lifeNumLabel.text="\(sum)"
        lifeNumMeansLabel.text=lifeNumMeans[sum]
    }
    
    }
                
          

