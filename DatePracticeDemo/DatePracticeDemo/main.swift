//
//  main.swift
//  DatePracticeDemo
//
//  Created by 임수정 on 2021/04/10.
//

import Foundation

let dateformatter = DateFormatter()
dateformatter.locale = Locale(identifier: "ko_KR")
dateformatter.timeZone = TimeZone(identifier: "KST")
dateformatter.dateFormat = "yyyy-MMMM-dd E"
print(dateformatter.string(from: Date()))  //2021-4월-10 토

dateformatter.dateFormat = "yyyy-MMMM-dd E a h:m:s"
dateformatter.amSymbol = "오전"
dateformatter.pmSymbol = "오후"
print(dateformatter.string(from: Date())) // 2021-4월-10 토 오후 1:54:20

dateformatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
var today = dateformatter.date(from: "2021-12-12 0:0:0")! //KST -> UTC
print(today)  //2021-12-11 15:00:00 +0000 (-9시간) //UTC

dateformatter.timeZone = TimeZone(identifier: "UTC")
dateformatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
today = dateformatter.date(from: "2021-11-1 0:0:0")!
print(today) //2021-11-01 00:00:00 +0000
