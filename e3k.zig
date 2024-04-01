const expect = @import("std").testing.expect;

fn increment(num: *u8) void {
    num.* += 1;
}

test "pointers" {
    var x: u8 = 1;
    increment(&x);
    try expect(x == 2);
}

// test "naughty pointer" {
//     var x: u16 = 0;
//     var y: *u8 = @ptrFromInt(x); // not allowed ptr can have value null or 0
//     _ = y;
// }

// test "const pointers" {
//     const x: u8 = 1;
//     var y = &x;
//     y.* += 1;
// }

test "usize" {
    try expect(@sizeOf(usize) == @sizeOf(*u8));
    try expect(@sizeOf(isize) == @sizeOf(*u8));
}