[asd](http://cliffle.com/blog/bare-metal-wasm/)

Rust WeaAssembly Procedural Animation

This is a web-based procedural animation program
which uses WebAssembly
written in Rust.

All credit is due [cliffle.com](http://cliffle.com/blog/bare-metal-wasm/),
for this whole project follows the tutorial there.

Does not use Rust standard library,
minimizes html and js using `html-minifier` and `uglify-es`,
web assembly is minified with tools `wasm-strip` and `wasm-opt`.

Whole app takes 677 bytes including the current animation, 
which in itself would take 14kiB in PNG form as an image, not even as a GIF.

Build with `./build.sh`, serve with `./serve.py`.

