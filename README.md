# binaryen-v

A 1 to 1 V wrapper for binaryen, an optimizer and compiler/toolchain library for WebAssembly. [Read more about the library here.](https://github.com/WebAssembly/binaryen)

Translated with [`c2v`](https://github.com/vlang/c2v), then heavily modified. Used in the upcoming WebAssembly backend for V, developed by me!

# example

A V example mirroring the provided C example, [`c-api-hello-world.c`.](https://github.com/WebAssembly/binaryen/blob/main/test/example/c-api-hello-world.c)

```sh
v run main.v
```

```v
import binaryen as wa

fn main() {
	mod := wa.modulecreate()

	ii := [wa.typeint32(), wa.typeint32()]
	params := wa.typecreate(ii.data, ii.len)
	results := wa.typeint32()

	x := wa.localget(mod, 0, wa.typeint32())
	y := wa.localget(mod, 1, wa.typeint32())

	add := wa.binary(mod, wa.addint32(), x, y)

	/* adder := */ wa.addfunction(mod, c'adder', params, results, unsafe { nil }, 0, add)

	wa.moduleprint(mod)
	wa.moduledispose(mod)
}
```