public func scrape() -> RustVec<StoreInfo> {
    RustVec(ptr: __swift_bridge__$scrape())
}

public class StoreInfo: StoreInfoRefMut {
    var isOwned: Bool = true

    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }

    deinit {
        if isOwned {
            __swift_bridge__$StoreInfo$_free(ptr)
        }
    }
}
public class StoreInfoRefMut: StoreInfoRef {
    public override init(ptr: UnsafeMutableRawPointer) {
        super.init(ptr: ptr)
    }
}
public class StoreInfoRef {
    var ptr: UnsafeMutableRawPointer

    public init(ptr: UnsafeMutableRawPointer) {
        self.ptr = ptr
    }
}
extension StoreInfo: Vectorizable {
    public static func vecOfSelfNew() -> UnsafeMutableRawPointer {
        __swift_bridge__$Vec_StoreInfo$new()
    }

    public static func vecOfSelfFree(vecPtr: UnsafeMutableRawPointer) {
        __swift_bridge__$Vec_StoreInfo$drop(vecPtr)
    }

    public static func vecOfSelfPush(vecPtr: UnsafeMutableRawPointer, value: StoreInfo) {
        __swift_bridge__$Vec_StoreInfo$push(vecPtr, {value.isOwned = false; return value.ptr;}())
    }

    public static func vecOfSelfPop(vecPtr: UnsafeMutableRawPointer) -> Optional<Self> {
        let pointer = __swift_bridge__$Vec_StoreInfo$pop(vecPtr)
        if pointer == nil {
            return nil
        } else {
            return (StoreInfo(ptr: pointer!) as! Self)
        }
    }

    public static func vecOfSelfGet(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<StoreInfoRef> {
        let pointer = __swift_bridge__$Vec_StoreInfo$get(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return StoreInfoRef(ptr: pointer!)
        }
    }

    public static func vecOfSelfGetMut(vecPtr: UnsafeMutableRawPointer, index: UInt) -> Optional<StoreInfoRefMut> {
        let pointer = __swift_bridge__$Vec_StoreInfo$get_mut(vecPtr, index)
        if pointer == nil {
            return nil
        } else {
            return StoreInfoRefMut(ptr: pointer!)
        }
    }

    public static func vecOfSelfLen(vecPtr: UnsafeMutableRawPointer) -> UInt {
        __swift_bridge__$Vec_StoreInfo$len(vecPtr)
    }
}



