//
//  ContentView.swift
//  HapticFeedback
//
//  Created by Aleksandar Karamirev on 07/03/2023.
//

import SwiftUI

class HapticManager {
    static let instance = HapticManager()
    
    func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    func impact(style: UIImpactFeedbackGenerator.FeedbackStyle){
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
    
}


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                HStack{
                    Button("success"){HapticManager.instance.notification(type: .success)}
                        .padding()
                        .background(.green)
                        .foregroundColor(.white)

                    Button("warning"){HapticManager.instance.notification(type: .warning)}
                        .padding()
                        .background(.yellow)
                        .foregroundColor(.white)
                    Button("error"){HapticManager.instance.notification(type: .error)}
                        .padding()
                        .background(.red)
                        .foregroundColor(.white)
                }
                Divider()
                HStack{
                    Button("soft"){HapticManager.instance.impact(style: .soft)}
                        .padding(5)
                        .background(.blue)
                        .foregroundColor(.white)
                    Button("heavy"){HapticManager.instance.impact(style: .heavy)}
                        .padding(11)
                        .background(.purple)
                        .foregroundColor(.white)
                    Button("light"){HapticManager.instance.impact(style: .light)}
                        .padding(7)
                        .background(.gray)
                        .foregroundColor(.white)

                    Button("medium"){HapticManager.instance.impact(style: .medium)}
                        .padding(10)
                        .background(.cyan)
                        .foregroundColor(.white)

                    Button("rigid"){HapticManager.instance.impact(style: .rigid)}
                        .padding(9)
                        .background(.orange)
                        .foregroundColor(.white)

                }
            }
            .padding()
            .navigationTitle("Haptic Buttons")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
