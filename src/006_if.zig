const std = @import("std");

pub fn main() !void {
    const foo: u8 = 42;
    if (foo == 42) {
        std.debug.print("Foo is 42!", .{});
    } else {
        std.debug.print("Foo is not 42!", .{});
    }
    std.debug.print("\n", .{});

    // 三元运算符
    // 任务要求根据 discount 布尔值来决定 price 是 17 还是 20。

    const discount = true;
    const price = if (discount) 17 else 20;
    std.debug.print("With the discount, the price is ${}.\n", .{price});
}
