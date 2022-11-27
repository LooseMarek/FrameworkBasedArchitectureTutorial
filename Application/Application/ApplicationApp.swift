//
//  ApplicationApp.swift
//  Application
//
//  Created by Marek Loose on 11/11/2022.
//

import SwiftUI

@main
struct ApplicationApp: App {
        
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ApplicationRouter().start()
            }
        }
    }
    
}

struct ApplicationApp_Previews: PreviewProvider {
    
    static var previews: some View {
        ApplicationRouter().start()
    }
    
}
