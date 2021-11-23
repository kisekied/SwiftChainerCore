public struct Chainer<Base> {
    public let base: Base

    public init(_ base: Base) {
        self.base = base
    }
}

public protocol ChainerCompatible {
    associatedtype ChainerBase

    static var sc: Chainer<ChainerBase>.Type { get set }
    var sc: Chainer<ChainerBase> { get set }
}

extension ChainerCompatible {
    public static var sc: Chainer<Self>.Type {
        get {
            return Chainer<Self>.self
        }
        set { }
    }

    public var sc: Chainer<Self> {
        get {
            return Chainer(self)
        }
        set { }
    }
}
