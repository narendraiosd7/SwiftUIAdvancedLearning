//
//  ViewModifierBootcamp.swift
//  AdvancedLearning
//
//  Created by Narendra Vadde on 05/05/25.
//

import SwiftUI

struct DefaultButtonViewModifier: ViewModifier {

  let backgroundColor: Color
  
  func body(content: Content) -> some View {
    content
      .foregroundColor(.white)
      .frame(height: 45)
      .frame(maxWidth: .infinity)
      .background(backgroundColor)
      .cornerRadius(10)
      .shadow(radius: 10)
      .padding()
  }
}

extension View {

  func defaultButtonStyle(backgroundColor: Color = .blue) -> some View {
    modifier(DefaultButtonViewModifier(backgroundColor: backgroundColor))
  }
}

struct ViewModifierBootcamp: View {
  
  var body: some View {
    VStack {
      Text("Hello, world!")
        .font(.headline)
        .modifier(DefaultButtonViewModifier(backgroundColor: .orange))
      
      Text("Hello, Everyone!")
        .font(.subheadline)
        .defaultButtonStyle()
      
      Text("Hello!!!")
        .font(.title)
        .defaultButtonStyle(backgroundColor: .cyan)
    }
  }
}

#Preview {
    ViewModifierBootcamp()
}
