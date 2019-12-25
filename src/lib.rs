
#![no_std]

#[panic_handler]
fn handle_panic(_: &core::panic::PanicInfo) -> ! {
    loop {}
}

const WIDTH: usize = 600;
const HEIGHT: usize = 600;

#[no_mangle]
static mut BUFFER: [u32, WIDTH * HEIGHT] = [0; WIDTH * HEIGHT];
