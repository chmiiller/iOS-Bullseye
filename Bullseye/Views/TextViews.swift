//
//  TextViews.swift
//  Bullseye
//
//  Created by Carlos Zinato on 25/02/2024.
//

import SwiftUI

struct InstructionText: View {
    var text: String

    var body: some View {
        Text(text)
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .kerning(-1.0)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
}

struct SliderLabelText: View {
    var text: String

    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .font(.caption)
            .kerning(1.5)
            .bold()
            .foregroundColor(Color("TextColor"))
            
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "🎯\nPut the Bullseye as close as you can to:")
            BigNumberText(text: "99")
            LabelText(text: "round")
        }
    }
}
