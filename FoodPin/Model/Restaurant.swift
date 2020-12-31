//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit
import CoreData

class Restaurant {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    static func writeRestaurantFromBegin() {
        
        let sourceArray: [Restaurant] = [
            Restaurant(name: "大稻埕碼頭", type: "觀光勝地", location: "25.054060, 121.506741", phone: "232-923423", summary: "大稻埕碼頭位於淡水河畔，現今五號水門處（環河北路、民生西路口）。大稻埕的發展歷史，與大稻埕碼頭有著密切的關係，淡水開港通商，外商洋行紛紛到此開設商號，促成大稻埕往後的繁華。現今雖然碼頭功能不復當年，但已轉型為民眾休閒遊憩的去處。\n\n近年來大稻埕碼頭除了迎節慶放煙火之外，沿岸並闢建自行車道，民眾可以悠閒騎單車享受河畔之旅，同時欣賞大稻埕的古意景緻。", image: "DaDaoChen.jpg", isVisited: false),
            Restaurant(name: "台北101", type: "觀光勝地＆購物天堂", location: "臺北市信義區西村里8鄰信義路五段7號", phone: "348-233423", summary: "台北101是世界第十高樓，是全台最大的國際級購物中心，是綠建築，更是台灣的指標。\n台北101觀景台是全台灣最高的觀景台，在388 公尺的高空俯瞰整個台北市，高度不僅是象山的兩倍多，更是唯一可以眺望基隆河谷景觀的景點。", image: "101.jpg", isVisited: false),
            Restaurant(name: "國父紀念館", type: "觀光勝地", location: "110台北市信義區仁愛路四段505號", phone: "354-243523", summary: "國立國父紀念館乃紀念國父孫中山先生之偉大人格及革命行誼並發揚其思想學說為宗旨，並以推廣社會教育、促進文化建設為目標，為兼具博物館、表演廳內涵及推展全民終身教育的多功能綜合型社教機構；亦為舉辦學術文教藝術活動，提供國人涵養文化藝術、吸收新知及旅遊休憩的全方位文化藝術中心。", image: "GuoFu.jpg", isVisited: false),
            Restaurant(name: "國立故宮博物院", type: "藝文特區", location: "111台北市士林區至善路二段221號", phone: "453-333423", summary: "國立故宮博物院收藏有全世界最多的無價中華藝術寶藏，其收藏品的年代幾乎涵蓋了整個五千年的中國歷史，包含知名的「翠玉白菜」。\n與法國羅浮宮、英國大英博物館、美國大都會博物館、俄羅斯隱士館並稱為全世界五大博物館之一的故宮博物院，累積了從新石器時代到清末的文物將近70萬件，由於展品的質精量多，因此除了固定展示品外，館方不定期依專題展覽輪流展出。", image: "NationalPalace.jpg", isVisited: false),
            Restaurant(name: "中正紀念堂", type: "觀光勝地", location: "100台北市中正區中山南路21號", phone: "983-284334", summary: "中正紀念堂是為紀念已故前中華民國總統蔣中正而興建的建築，位於臺北市中正區，也是眾多紀念蔣中正的建築中規模最大者，落成以來成為臺北市及臺灣在國際上最著名地標與觀光景點之一。", image: "chiang kai-shek memorial hall.jpg", isVisited: false),
            Restaurant(name: "史密斯華倫斯基牛排館 Smith & Wollensky Taipei", type: "特選美食", location: "110台北市信義區松智路17號47F", phone: "02 2345 5647", summary: "Smith & Wollensky是美國最受歡迎的經典美式牛排餐廳，擁有多個私人包廂，提供顧客最頂級的乾式熟成牛排與各式優質海鮮。\nSmith & Wollensky Taipei位於信義區微風南山47樓，台北101 與信義區美景盡收眼底。 除了賓至如歸的服務，頂級的酒藏飲品與夜間酒吧的Jazz band表演，都將帶給您最難忘的體驗。", image: "SmithAndWollensky.jpg", isVisited: false),
            Restaurant(name: "鼎泰豐", type: "特選美食", location: "台北市信義路二段194號 (捷運東門站5號出口)", phone: "02 2321 8928", summary: "鼎泰豐是臺灣一家以麵食產銷為主的連鎖餐廳，以小籠包聞名。\n1958年開設於臺北市信義路，最初爲流行而於1970年代起兼賣小籠包，從此發跡。\n1996年，鼎泰豐拓展了日本市場，在日本迅速掀起一股小籠包熱，自此廣獲好評，曾爲《紐約時報》推薦爲「世界十大美食餐廳」之一。", image: "Din Tai Fung.jpeg", isVisited: false),
            Restaurant(name: "2015 FW AD", type: "我給忘了", location: "633 Bourke St Sydney New South Wales 2010 Surry Hills", phone: "982-434343", summary: "We make everything by hand with the best possible ingredients, from organic sourdoughs to pastries and cakes. A combination of great produce, good strong coffee, artisanal skill and hard work creates the honest, soulful, delectable bites that have made Bourke Street Bakery famous. Visit us at one of our many Sydney locations!", image: "bourkestreetbakery.jpg", isVisited: false),
            Restaurant(name: "林東芳牛肉麵", type: "特選美食", location: "台北市中山區八德路二段322號", phone: "02 2752 2556", summary: "到台北絕不能錯過的美味，榮登2018米其林畢比登推薦清單！享受充滿獨特中藥香氣的湯頭以及精心熬煮的牛肉牛筋，保證一吃就上癮！", image: "LinDongFun.jpg", isVisited: false),
            Restaurant(name: "淡水老街", type: "觀光勝地", location: "新北市淡水區中正路、重建街、清水街一帶", phone: "872-734343", summary: "「淡水老街」不僅早已是全台知名熱門景點，同時也吸引不少外國人慕名而來。這裡街道兩旁林立熱鬧商店，有濃濃古早味的餅舖、雜貨店，也有賣潮流服飾、玩具，當然還有最吸引人的人氣美食如阿給、魚丸，另外還有古蹟可參觀，怎麼玩都不會膩。", image: "Tamsui.jpg", isVisited: false),
            Restaurant(name: "臺北市立美術館", type: "藝文特區", location: "台北市中山區中山北路三段181號", phone: "343-233221", summary: "臺北市立美術館，簡稱北美館，位於台灣臺北市，成立於1983年12月24日，是臺灣第一座現當代美術館。", image: "Taipei Fine Arts Museum.jpg", isVisited: false),
            Restaurant(name: "Traif", type: "American", location: "229 S 4th St Brooklyn, NY 11211", phone: "985-723623", summary: "A young crowd populates this pork-focused American eatery in an older Williamsburg neighborhood. We open at 6PM, and close at 11 PM. If you enjoy a shared small plates dinner experience, come over and have a try.", image: "traif.jpg", isVisited: false),
            Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "445 Graham Ave Brooklyn, NY 11211", phone: "455-232345", summary: "Classic Italian deli & butcher draws patrons with meat-filled submarine sandwiches. We use the freshest meats and veggies to create the perfect panini for you. We look forward to seeing you!", image: "grahamavenuemeats.jpg", isVisited: false),
            Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "413 Graham Ave Brooklyn, NY 11211", phone: "434-232322", summary: "Small shop, some seating, definitely something different! We open at 7 every morning except Sunday, and close at 9 PM. We offer a variety of waffles with choices of sweet & savory fillings. If you are gluten free and craving waffles, this is the place to go.", image: "wafflewolf.jpg", isVisited: false),
            Restaurant(name: "Five Leaves", type: "Bistro", location: "18 Bedford Ave Brooklyn, NY 11222", phone: "343-234553", summary: " Great food, cocktails, ambiance, service. Nothing beats having a warm dinner and a whiskey. We open at 8 every morning, and close at 1 AM. The ricotta pancakes are something you must try.", image: "fiveleaves.jpg", isVisited: false),
            Restaurant(name: "Cafe Lore", type: "Latin American", location: "Sunset Park 4601 4th Ave Brooklyn, NY 11220", phone: "342-455433", summary: "Good place, great environment and amazing food! We open at 10 every morning except Sunday, and close at 9 PM. Give us a visit! Enjoy mushroom raviolis, pumpkin raviolis, meat raviolis with sausage and peppers, pork cutlets, eggplant parmesan, and salad.", image: "cafelore.jpg", isVisited: false),
            Restaurant(name: "Confessional", type: "Spanish", location: "308 E 6th St New York, NY 10003", phone: "643-332323", summary: "Most delicious cocktail you would ever try! Our menu includes a wide range of high quality internationally inspired dishes, vegetarian options, and local cuisine. We open at 10 AM, and close at 10 PM. We welcome you into our place to enjoy a meal with your friends.", image: "confessional.jpg", isVisited: false),
            Restaurant(name: "Barrafina", type: "Spanish", location: "54 Frith Street London W1D 4SL United Kingdom", phone: "542-343434", summary: "a collection of authentic Spanish Tapas bars in Central London! We have an open kitchen, a beautiful marble-topped bar where guests can sit and watch the chefs at work and stylish red leather stools. Lunch starts at 1 PM. Dinners starts 5:30 PM.", image: "barrafina.jpg", isVisited: false),
            Restaurant(name: "Donostia", type: "Spanish", location: "10 Seymour Place London W1H 7ND United Kingdom", phone: "722-232323", summary: "Very good basque food, creative dishes with terrific flavors! Donostia is a high end tapas restaurant with a friendly relaxed ambiance. Come over to enjoy awesome tapas!", image: "donostia.jpg", isVisited: false),
            Restaurant(name: "Royal Oak", type: "British", location: "2 Regency Street London SW1P 4BZ United Kingdom", phone: "343-988834", summary: "Specialise in great pub food. Established in 1872, we have local and world lagers, craft beer and a selection of wine and spirits for people to enjoy. Don't forget to try our range of Young's Ales and Fish and Chips.", image: "royaloak.jpg", isVisited: false),
            Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "22 Charlwood Street London SW1V 2DY Pimlico", phone: "432-344050", summary: "With kitchen serving gourmet burgers. We offer food every day of the week, Monday through to Sunday. Join us every Sunday from 4:30 – 7:30pm for live acoustic music!", image: "caskpubkitchen.jpg", isVisited: false)
        ]
        
        var restaurant: RestaurantMO!
        
        if let appDelegate = (UIApplication.shared.delegate as? AppDelegate) {
            for i in 0..<sourceArray.count {
                restaurant = RestaurantMO(context: appDelegate.persistentContainer.viewContext)
                restaurant.name = sourceArray[i].name
                restaurant.type = sourceArray[i].type
                restaurant.location = sourceArray[i].location
                restaurant.phone = sourceArray[i].phone
                restaurant.summary = sourceArray[i].summary
                restaurant.isVisited = false
                restaurant.rating = nil
                restaurant.image = UIImage(named: sourceArray[i].image)!.pngData()
            }
            appDelegate.saveContext() //write once for all new restauranrs
        }
    }
    
}

