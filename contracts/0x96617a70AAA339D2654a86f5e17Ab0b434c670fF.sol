contract main {




// =====================  Runtime code  =====================


address owner;
uint256 amountToken;
uint256 sub_794f7e24;
uint256 liquidity;
uint256 sub_48de0f40;
address sub_18aad847Address;

function amountToken() {
    return amountToken
}

function sub_18aad847(?) {
    return sub_18aad847Address
}

function liquidity() {
    return liquidity
}

function sub_48de0f40(?) {
    return sub_48de0f40
}

function sub_794f7e24(?) {
    return sub_794f7e24
}

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_969f8c0b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_18aad847Address = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'Lock Time must be in the future'
    if arg1 <= sub_48de0f40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You can only increase the lock time, not decrease it.'
    sub_48de0f40 = arg1
}

function withdrawLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_48de0f40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Liquidity is still locked, you can't withdraw'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, liquidity
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_48de0f40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Liquidity is still locked, you can't withdraw'
    if eth.balance(this.address) / 10 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if eth.balance(this.address) < 3 * eth.balance(this.address) / 10:
        revert with 0, 17
    if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 1000 > 0x130d190130d190130d190130d190130d190130d190130d190130d190130d190:
        revert with 0, 17
    if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    call 0x8f47416cae600bccf9530e9f3aeaa06bdd1caa79 with:
       value 3 * eth.balance(this.address) / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x82cfc8c10dbec9408669d3e0cda3c9b358f534a4 with:
       value 215 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 1000 wei
         gas 2300 * is_zero(value) wei
    call 0x6bf231e1e89d5a62337011659e9c15f7d1f5e7bb with:
       value 215 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 1000 wei
         gas 2300 * is_zero(value) wei
    if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 > 0x2492492492492492492492492492492492492492492492492492492492492492:
        revert with 0, 17
    call 0xf78209da1a68fef792d627926e0a08d1241ea519 with:
       value 7 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0xd0c500766a82d00dc558cb858e9f98ded3b24524 with:
       value 5 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
         gas 2300 * is_zero(value) wei
    call 0x711a4bb05e7151a200d8bcf8a382412056469012 with:
       value 5 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
         gas 2300 * is_zero(value) wei
    call 0x8dbaedb169c064c0ca622e20b2eb98d1df8c624b with:
       value 5 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
         gas 2300 * is_zero(value) wei
    if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    call 0xfca9a410649818cd79e256dc7d7b6d0e1de95ca6 with:
       value 4 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 > -1:
        revert with 0, 17
    call 0xd640593f052c0df0efa09892fd4ea09810660961 with:
       value eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x102ff0b3(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return amountToken
        if unknown_0x18aad847(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_18aad847Address
        if unknown_0x1a686502(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return liquidity
        if uint32(call.func_hash) >> 224 != unknown_0x3ccfd60b(?????):
            if unknown_0x48de0f40(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_48de0f40
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x794f7e24(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_794f7e24
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x969f8c0b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_18aad847Address = address(arg1)
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x9d67ac37(?????):
                        if unknown_0xae04d45d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg1 <= block.timestamp:
                                revert with 0, 'Lock Time must be in the future'
                            if arg1 <= sub_48de0f40:
                                revert with 0, 'You can only increase the lock time, not decrease it.'
                            sub_48de0f40 = arg1
                        else:
                            require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(arg1):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(arg1)
                            emit OwnershipTransferred(owner, address(arg1));
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if block.timestamp <= sub_48de0f40:
                            revert with 0, 'Liquidity is still locked, you can't withdraw'
                        require ext_code.size(address(arg1))
                        call address(arg1).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, liquidity
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if block.timestamp <= sub_48de0f40:
                revert with 0, 'Liquidity is still locked, you can't withdraw'
            if eth.balance(this.address) / 10 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                revert with 0, 17
            if eth.balance(this.address) < 3 * eth.balance(this.address) / 10:
                revert with 0, 17
            if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 1000 > 0x130d190130d190130d190130d190130d190130d190130d190130d190130d190:
                revert with 0, 17
            if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            call 0x8f47416cae600bccf9530e9f3aeaa06bdd1caa79 with:
               value 3 * eth.balance(this.address) / 10 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x82cfc8c10dbec9408669d3e0cda3c9b358f534a4 with:
               value 215 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 1000 wei
                 gas 2300 * is_zero(value) wei
            call 0x6bf231e1e89d5a62337011659e9c15f7d1f5e7bb with:
               value 215 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 1000 wei
                 gas 2300 * is_zero(value) wei
            if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 > 0x2492492492492492492492492492492492492492492492492492492492492492:
                revert with 0, 17
            call 0xf78209da1a68fef792d627926e0a08d1241ea519 with:
               value 7 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0xd0c500766a82d00dc558cb858e9f98ded3b24524 with:
               value 5 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
                 gas 2300 * is_zero(value) wei
            call 0x711a4bb05e7151a200d8bcf8a382412056469012 with:
               value 5 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
                 gas 2300 * is_zero(value) wei
            call 0x8dbaedb169c064c0ca622e20b2eb98d1df8c624b with:
               value 5 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
                 gas 2300 * is_zero(value) wei
            if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            call 0xfca9a410649818cd79e256dc7d7b6d0e1de95ca6 with:
               value 4 * eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 > -1:
                revert with 0, 17
            call 0xd640593f052c0df0efa09892fd4ea09810660961 with:
               value eth.balance(this.address) - (3 * eth.balance(this.address) / 10) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
