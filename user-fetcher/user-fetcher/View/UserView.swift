//
//  UserView.swift
//  user-fetcher
//
//  Created by Stevan Vlajic on 10.12.23.
//

import Foundation
import SwiftUI


struct UserView: View{
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview{
    UserView()
}
