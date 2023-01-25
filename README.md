# binaryen-v

A V wrapper for binaryen, an optimizer and compiler/toolchain library for WebAssembly. [Read more about the library here.](https://github.com/WebAssembly/binaryen)

Translated with [`c2v`](https://github.com/vlang/c2v), then modified by me.

# example

A V example mirroring the provided C example, [`c-api-hello-world.c`.](https://github.com/WebAssembly/binaryen/blob/main/test/example/c-api-hello-world.c)

```sh
v -translated run main.v # requires `-translated`
```

```v
import binaryen

fn main() {
    mod := binaryen.modulecreate()

    ii := [binaryen.typeint32(), binaryen.typeint32()]!
    params := binaryen.typecreate(ii, 2)
    results := binaryen.typeint32()

    x := binaryen.localget(mod, 0, binaryen.typeint32())
    y := binaryen.localget(mod, 1, binaryen.typeint32())

    add := binaryen.binary(mod, binaryen.addint32(), x, y)

    adder := binaryen.addfunction(mod, c"adder", params, results, unsafe { nil }, 0, add)

    binaryen.moduleprint(mod)
    binaryen.moduledispose(mod)
}
```