const Window = opaque {};
const Button = opaque {};

extern fn show_window(*Window) callconv(.C) void;

test "opaque" {
    var main_window: *Window = undefined;
    show_window(main_window);

    // var ok_button: *Button = undefined;
    // show_window(ok_button); // not allowed
}

const Window1 = opaque {
    fn show(self: *Window1) void {
        show_window1(self);
    }
};

extern fn show_window1(*Window1) callconv(.C) void;

test "opaque with declarations" {
    var main_window: *Window1 = undefined;
    main_window.show();
}