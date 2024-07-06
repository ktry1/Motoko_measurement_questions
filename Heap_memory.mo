import Nat64 "mo:base/Nat64";
import Prim "mo:prim";

actor {
    type CanisterMemoryInfo = {
        rts_version : Text;
        rts_memory_size: Nat;
        rts_heap_size: Nat;
        rts_total_allocation: Nat;
        rts_reclaimed : Nat;
        rts_max_live_size : Nat;
    };

    var t: [Nat64] = [1, 2, 3, 4];

    public query func getCanisterMemoryInfo() : async CanisterMemoryInfo {
        return {
            rts_version = Prim.rts_version();
            rts_memory_size = Prim.rts_memory_size();
            rts_heap_size = Prim.rts_heap_size();
            rts_total_allocation = Prim.rts_total_allocation();
            rts_reclaimed = Prim.rts_reclaimed();
            rts_max_live_size = Prim.rts_max_live_size();
        };
    };

}
