//
//  TabBarShape.swift
//  SwiftUI Demo
//
//  Created by Rahul Mayani on 11/09/23.
//

import SwiftUI

// MARK: - Shape
extension TabBarView {
    struct Curve: Shape {
        func path(in rect: CGRect) -> Path {
            let h = rect.maxY * 0.5
            return Path {
                $0.move(to: .zero)
                $0.addLine(to: CGPoint(x: rect.midX / 2.5, y: rect.minY))
                $0.addCurve(to: CGPoint(x: rect.midX, y: h), control1: CGPoint(x: rect.midX * 0.8, y: rect.minY), control2: CGPoint(x: rect.midX * 0.78, y: h))
                $0.addCurve(to: CGPoint(x: rect.midX * 3.0 / 2, y: rect.minY), control1: CGPoint(x: rect.midX * 1.2, y: h), control2: CGPoint(x: rect.midX * 1.3, y: rect.minY))
                $0.addLine(to: CGPoint(x: rect.maxX, y: rect.minY - 2))
            }
        }
    }
    
    struct CurveWhite: Shape {
        func path(in rect: CGRect) -> Path {
            let h = rect.maxY * 0.5
            return Path {
                $0.move(to: .zero)
                $0.addLine(to: CGPoint(x: rect.midX / 2.5, y: rect.minY))
                $0.addCurve(to: CGPoint(x: rect.midX, y: h), control1: CGPoint(x: rect.midX * 0.8, y: rect.minY), control2: CGPoint(x: rect.midX * 0.78, y: h))
                $0.addCurve(to: CGPoint(x: rect.midX * 3.0 / 2, y: rect.minY), control1: CGPoint(x: rect.midX * 1.2, y: h), control2: CGPoint(x: rect.midX * 1.3, y: rect.minY))
            }
        }
    }
}
