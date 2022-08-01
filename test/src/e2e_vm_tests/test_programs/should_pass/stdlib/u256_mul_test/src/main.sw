script;

use std::assert::assert;
use std::result::*;
use std::u256::*;

fn main() -> bool {
    let zero = ~U256::from(0, 0, 0, 0);
    let one = ~U256::from(0, 0, 0, 1);
    let two = ~U256::from(0, 0, 0, 2);
    let max_u64 = ~U256::from(0, 0, 0, ~u64::max());

    let mul_256_of_two = max_u64 * two;
    assert(mul_256_of_two.c == 1);
    assert(mul_256_of_two.d == ~u64::max() - 1);

    let mul_256_of_four = mul_256_of_two * two;
    assert(mul_256_of_four.c == 3);
    assert(mul_256_of_four.d == ~u64::max() - 3);

    let mul_128_max = max_u64 * max_u64;
    assert(mul_128_max.c == ~u64::max() - 1);
    assert(mul_128_max.d == 1);

    true
}