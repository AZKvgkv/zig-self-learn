const std = @import("std");

pub fn main() !void {
    const string = "ziglings";

    // 1. 像访问数组一样获取第3个字符 g
    const g = string[2];

    // 2. 使用数组的重复操作符
    const laugh = "ha " ** 3;

    // 3. 使用数组的连接操作符 ‘++’拼接字符串

    const major = "Major";
    const tom = "Tom";
    const major_tom = major ++ " " ++ tom;

    // 打印格式： 使用 u 打印字符；使用 s 打印字符串
    std.debug.print("g = {u}, {s}{s}\n", .{ g, laugh, major_tom });

    const lyrics =
        \\Ziggy played guitar
        \\Jamming good with Andrew Kelley
        \\And the Spiders from Mars
    ;
    std.debug.print("lyrics {s}", .{lyrics});
}
