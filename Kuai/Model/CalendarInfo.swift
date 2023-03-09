//
//  CalendarInfo.swift
//  Kuai
//
//  Created by Zachary Bader (student LM) on 3/8/23.
//
import Foundation

class CalendarInfo {
    var dailyDate: String
    var weeklyDate: [String]
    var monthlyDate: [String]
    
    
    init (dailyDate: String = "9-7-22", weeklyDate: [String] = [], monthlyDate: [String] = []) {
        self.dailyDate = dailyDate
        self.weeklyDate = weeklyDate
        self.monthlyDate = monthlyDate
    }
}
