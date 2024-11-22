[build-badge]: https://github.com/ellie-bee/little-language/actions/workflows/build.yml/badge.svg
[build-url]: https://github.com/ellie-bee/little-language/actions?query=workflow%3Abuild+branch%3Amain

[license-badge]: https://img.shields.io/badge/License-CC0_1.0-blue
[license-url]: https://github.com/ellie-bee/little-language/blob/main/LICENSE

# little language
[![build][build-badge]][build-url]
[![CC0][license-badge]][license-url]

An attempt at a small language meant to help teach how to write a compiler

### Bulding and usage
```sh
# With nix
nix build
# with just Cargo
cargo build --release
```

```sh
# to compile some ll
llc path/to/file.ll path/to/result

# then just execute it
./path/to/result
```

### small little language exmaple
```
-- let's define a function called `main` that acts as our entry point
let main() {
    -- print some text
    print_string("Hello, World!\n");

    print_string("check if 39 is prime\n");

    if is_prime(39) {
        print_string("39 is prime!\n");
    } else {
        print_string("39 is not prime!\n");
    }
}

let is_prime(n) {
    if n < 1 {
        return false;
    } else {
        -- to keep track of how many factors our number has
        let factor_count = 0;

        for i in 1..n {
            if n % i == 0 {
                factor_count = factor_count + 1;
            }
        }

        if factor_count > 2 {
            return false;
        } else {
            return true;
        }
    }
}
```

