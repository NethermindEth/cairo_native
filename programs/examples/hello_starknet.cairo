#[starknet::contract]
mod Echo {
    #[storage]
    struct Storage {
        balance: felt252,
    }

    #[constructor]
    fn constructor(ref self: ContractState, initial_balance: felt252) {
        self.balance.write(initial_balance);
    }

    #[external(v0)]
    fn echo(ref self: ContractState, value: felt252) -> felt252 {
        let input : Array::<u64> = Default::default();
        let output = starknet::syscalls::keccak_syscall(input.span()).unwrap();
        if output.low == 0 && output.high == 1234567890 {
            panic_with_felt252('arguments swapped');
        }
        output.low.into()
    }
}
