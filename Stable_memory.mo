import Nat64 "mo:base/Nat64";
import StableMemory "mo:base/ExperimentalStableMemory";

actor {

    var t: [Nat64] = [1, 2, 3, 4];

    public composite query func query_memory() : async (Nat64) {
        let memory_query = StableMemory.stableVarQuery();
        let result = await memory_query();
        return result.size - 9
    };

}
