-- let's define a function called `main` that acts as our entry point
let main() {
    -- print some text
    print_string("Hello, World!");

    print_string("check if 39 is prime");

    if is_prime(39) {
        print_string("39 is prime!");
    } else {
        print_string("39 is not prime!");
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
