//
//  SettingsView.swift
//  hike-swiftui
//
//  Created by Kshitij Singh Chauhan on 05/12/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: SECTION HEADER
            Section {
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .padding(.top, 8)

                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            // MARK: SECTION ICONS
            
            // MARK: SECTION ABOUT
            
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right reserved")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                // 1. Basic Labeled Content
                LabeledContent("Application", value: "HIKE")
                
                // 2. Advanced Labeled Content
                LabeledContent {
                    // Content
                    Text("HIKE")
                        .foregroundColor(.primary)
                        .fontWeight(.heavy)
                } label: {
                    // Label
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.blue)
                            Image(systemName: "apps.iphone")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                        }
                        Text("Application")
                    }
                }
            } //: SECTION
        } //: LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
