//
//  SwiftUIView.swift
//  
//
//  Created by anduser on 13.06.2023.
//

import SwiftUI

// MARK: - Destination enum

public enum PopDestination {
    case root
    case previous
}

public enum NavTransition {
    case none
    case custom(AnyTransition)
}

enum NavType {
    case push
    case pop
    case psp
}

final public class NavStackVM: ObservableObject {

    @Published fileprivate var current: Screen?

    private var screenStack: ScreenStack = .init() {
        didSet {
            current = screenStack.top()
        }
    }

    var easing: Animation = .easeInOut(duration: 0.5)
    var navigationtype: NavType = .push

    // MARK: - API

    func push<S: View>(_ screen: S) {
        let screen: Screen = .init(
            id: UUID().uuidString,
            nextScreen: AnyView(screen)
        )
        navigationtype = .push
        withAnimation(easing) {
            screenStack.push(screen)
        }
    }

    func pop(to: PopDestination = .previous) {
        navigationtype = .pop
        withAnimation(easing) {
            switch to {
            case .root:
                screenStack.popToPrevious()

            case .previous:
                screenStack.popToRoot()
            }
        }
    }
}

// MARK: - UI

public struct NavStack<Content>: View where Content: View {

    // MARK: - Properties

    @StateObject var viewModel: NavStackVM = .init()
    private let content: Content
    private let transitions: (push: AnyTransition, pop: AnyTransition)

    public var easing: Animation {
        get {
            viewModel.easing
        }
        set {
            viewModel.easing = newValue
        }
    }

    public init(
        transitions: NavTransition,
        easing: Animation,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content()
        switch transitions {
        case .none:
            self.transitions = (.identity, .identity)

        case .custom(let anyTransition):
            self.transitions = (anyTransition, anyTransition)
        }
    }

    // MARK: - Body

    public var body: some View {
        let isRoot = viewModel.current == nil

        return ZStack {
            if isRoot {
                content
                    .environmentObject(viewModel)
                    .transition(viewModel.navigationtype == .push ? transitions.push : transitions.pop)
                
            } else {
                viewModel.current!.nextScreen
                    .environmentObject(viewModel)
            }
        }
    }
}

public struct NavButtonPop<Content>: View where Content: View {

    @EnvironmentObject var viewModel: NavStackVM

    private let content: Content
    private let destination: PopDestination

    public init(
        @ViewBuilder content: @escaping () -> Content,
        destination: PopDestination
    ) {
        self.content = content()
        self.destination = destination
    }

    public var body: some View {
        content.onTapGesture {
            pop()
        }
    }

    private func pop() {
        viewModel.pop(to: destination)
    }
}

public struct NavButtonPush<Content, Destination>: View where Content: View, Destination: View {

    @EnvironmentObject var viewModel: NavStackVM

    private let content: Content
    private let destination: Destination

    public init(
        @ViewBuilder content: @escaping () -> Content,
        destination: Destination
    ) {
        self.content = content()
        self.destination = destination
    }

    public var body: some View {
        content.onTapGesture {
            push()
        }
    }

    private func push() {
        viewModel.push(destination)
    }
}

// MARK: - Base Logic

private struct Screen: Equatable, Identifiable {

    let id: String // enum?
    let nextScreen: AnyView

    static func ==(lhs: Screen, rhs: Screen) -> Bool {
        lhs.id == rhs.id
    }
}

private struct ScreenStack {

    private var screens: [Screen] = .init()

    func top() -> Screen? {
        screens.last
    }

    mutating func push(_ s: Screen) {
        screens.append(s)
    }

    mutating func popToPrevious() {
        _ = screens.popLast()
    }

    mutating func popToRoot() {
        screens.removeAll()
    }

    mutating func pushTo(id: String) {
    }
}


// MARK: - Previews

//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavStack()
//    }
//}
