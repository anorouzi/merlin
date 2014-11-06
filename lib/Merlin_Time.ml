external merlin_gettime : unit -> Int64.t = "merlin_gettime"

let time () = merlin_gettime ()

let from (start:Int64.t) =
  Int64.sub (time ()) start

let to_secs nsecs = Int64.div nsecs 1000000000L

let to_fsecs nsecs = (Int64.to_float nsecs) /. (Int64.to_float 1000000000L)

