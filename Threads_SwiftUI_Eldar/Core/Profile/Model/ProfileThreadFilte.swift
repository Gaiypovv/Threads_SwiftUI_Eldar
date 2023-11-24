//
//  ProfileThreadFilte.swift
//  Threads_SwiftUI_Eldar
//
//  Created by Eldar Gaiypov on 24/11/23.
//

import Foundation

enum ProfileThreadFilte: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self{
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    
    var id: Int { return self.rawValue }
}
