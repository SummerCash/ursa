# ursa

A stack-based Go WebAssembly virtual machine.

## Installation

```BASH
go get -u github.com/SummerCash/ursa
```

## Usage

Running a .wasm file in the Ursa VM:

```BASH
go run main.go --source PATH-TO-.WASM --entry ENTRY-FUNCTION-NAME
```

An example:

```BASH
go run main.go --source examples/unary.wasm --entry i32_clz
```

## Credits

A big thanks to the [Perlin-network](https://github.com/perlin-network) and [Go-interpreter](https://github.com/go-interpreter) teams for writing a large portion of the necessary preliminary foundation logic of the VM! This repository is mainly just for cleaning up a bit of their work and adding certain features that may be useful in the future.
