//
//  ContentView.swift
//  hike-swiftui
//
//  Created by Kshitij Singh Chauhan on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("image-1")
            .resizable()
            .scaledToFit()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
