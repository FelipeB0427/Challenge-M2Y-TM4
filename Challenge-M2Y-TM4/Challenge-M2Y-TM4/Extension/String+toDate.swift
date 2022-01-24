//
//  String+toDate.swift
//  Challenge-M2Y-TM4
//
//  Created by Felipe Brigagão de Almeida on 23/01/22.
//

import Foundation

extension String {
    func toDate(withFormat format: String = "yyyy-MM-dd") -> Date? {
        let formatter = DateFormatter()
        let date = formatter.date(from: self)
        
        return date
    }
}
