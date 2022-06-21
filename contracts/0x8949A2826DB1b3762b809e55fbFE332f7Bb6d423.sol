contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
mapping of uint256 stor3;
uint256 stor4;
uint256 stor5;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_e5a15255(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (eth.balance(arg1) > 0)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= eth.balance(this.address)
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3[address(msg.sender)] <= 0:
        revert with 0, 'no'
    if eth.balance(this.address) < stor3[address(msg.sender)]:
        revert with 0, 'noo'
    call msg.sender with:
       value stor3[address(msg.sender)] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failed to send back avax'
    stor3[address(msg.sender)] = 0
}

function hello(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if msg.value <= 0:
        revert with 0, 'avax pls'
    if arg2 > -2:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if block.timestamp % arg1 < 2:
        if block.number < 1:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        staticcall stor1.mintCost(uint256 arg1) with:
                gas gas_remaining wei
               args (arg2 + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.minted() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
        if arg2 + 1 <= stor4:
            if arg2 != ext_call.return_data[30 len 2]:
                if stor3[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                stor3[address(msg.sender)] += msg.value
            else:
                if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, arg2 + 1) xor 3) % 10:
                    if stor3[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += msg.value
                else:
                    if arg2 + 1 > stor4:
                        if stor3[address(msg.sender)] > -msg.value - 1:
                            revert with 'NH{q', 17
                        stor3[address(msg.sender)] += msg.value
                    else:
                        if ext_call.return_data[0] > stor5:
                            if stor3[address(msg.sender)] > -msg.value - 1:
                                revert with 'NH{q', 17
                            stor3[address(msg.sender)] += msg.value
                        else:
                            if arg2 + 1 > stor4:
                                mem[(2 * ceil32(return_data.size)) + 276] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                mem[(2 * ceil32(return_data.size)) + 308] = 0x567b751f0a4f9522b462b40dcb0848cdb88c6ed3
                                mem[(2 * ceil32(return_data.size)) + 340] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 344] = ext_call.return_data[0]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 276
                                t = (2 * ceil32(return_data.size)) + 504
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor2)
                                call stor2.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 10^18 wei
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 504 len 64]), msg.sender, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if msg.value < 0:
                                    revert with 'NH{q', 17
                            call msg.sender with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'failed to send back avax'
        else:
            if arg2 != ext_call.return_data[30 len 2]:
                if stor3[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                stor3[address(msg.sender)] += msg.value
            else:
                if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, arg2 + 1) xor 3) % 10:
                    if stor3[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += msg.value
                else:
                    if not sha3(msg.sender, block.hash(block.number - 1), block.timestamp, arg2 + 1) xor 3 % 2048 >> 245 % 10:
                        if stor3[address(msg.sender)] > -msg.value - 1:
                            revert with 'NH{q', 17
                        stor3[address(msg.sender)] += msg.value
                    else:
                        if ext_call.return_data[0] > stor5:
                            if stor3[address(msg.sender)] > -msg.value - 1:
                                revert with 'NH{q', 17
                            stor3[address(msg.sender)] += msg.value
                        else:
                            if arg2 + 1 > stor4:
                                mem[(2 * ceil32(return_data.size)) + 276] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                mem[(2 * ceil32(return_data.size)) + 308] = 0x567b751f0a4f9522b462b40dcb0848cdb88c6ed3
                                mem[(2 * ceil32(return_data.size)) + 340] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 344] = ext_call.return_data[0]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 276
                                t = (2 * ceil32(return_data.size)) + 504
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor2)
                                call stor2.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 10^18 wei
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 504 len 64]), msg.sender, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if msg.value < 0:
                                    revert with 'NH{q', 17
                            call msg.sender with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'failed to send back avax'
    else:
        if not arg1:
            revert with 'NH{q', 18
        if block.number < 1:
            revert with 'NH{q', 17
        require ext_code.size(stor1)
        staticcall stor1.mintCost(uint256 arg1) with:
                gas gas_remaining wei
               args (arg2 + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor1)
        staticcall stor1.minted() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[30 len 2]
        if arg2 + 1 <= stor4:
            if arg2 != ext_call.return_data[30 len 2]:
                if stor3[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                stor3[address(msg.sender)] += msg.value
            else:
                if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, arg2 + 1) xor block.timestamp % arg1) % 10:
                    if stor3[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += msg.value
                else:
                    if arg2 + 1 > stor4:
                        if stor3[address(msg.sender)] > -msg.value - 1:
                            revert with 'NH{q', 17
                        stor3[address(msg.sender)] += msg.value
                    else:
                        if ext_call.return_data[0] > stor5:
                            if stor3[address(msg.sender)] > -msg.value - 1:
                                revert with 'NH{q', 17
                            stor3[address(msg.sender)] += msg.value
                        else:
                            if arg2 + 1 > stor4:
                                mem[(2 * ceil32(return_data.size)) + 276] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                mem[(2 * ceil32(return_data.size)) + 308] = 0x567b751f0a4f9522b462b40dcb0848cdb88c6ed3
                                mem[(2 * ceil32(return_data.size)) + 340] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 344] = ext_call.return_data[0]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 276
                                t = (2 * ceil32(return_data.size)) + 504
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor2)
                                call stor2.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 10^18 wei
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 504 len 64]), msg.sender, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if msg.value < 0:
                                    revert with 'NH{q', 17
                            call msg.sender with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'failed to send back avax'
        else:
            if arg2 != ext_call.return_data[30 len 2]:
                if stor3[address(msg.sender)] > -msg.value - 1:
                    revert with 'NH{q', 17
                stor3[address(msg.sender)] += msg.value
            else:
                if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, arg2 + 1) xor block.timestamp % arg1) % 10:
                    if stor3[address(msg.sender)] > -msg.value - 1:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += msg.value
                else:
                    if not sha3(msg.sender, block.hash(block.number - 1), block.timestamp, arg2 + 1) xor block.timestamp % arg1 % 2048 >> 245 % 10:
                        if stor3[address(msg.sender)] > -msg.value - 1:
                            revert with 'NH{q', 17
                        stor3[address(msg.sender)] += msg.value
                    else:
                        if ext_call.return_data[0] > stor5:
                            if stor3[address(msg.sender)] > -msg.value - 1:
                                revert with 'NH{q', 17
                            stor3[address(msg.sender)] += msg.value
                        else:
                            if arg2 + 1 > stor4:
                                mem[(2 * ceil32(return_data.size)) + 276] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                mem[(2 * ceil32(return_data.size)) + 308] = 0x567b751f0a4f9522b462b40dcb0848cdb88c6ed3
                                mem[(2 * ceil32(return_data.size)) + 340] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 344] = ext_call.return_data[0]
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 276
                                t = (2 * ceil32(return_data.size)) + 504
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(stor2)
                                call stor2.swapAVAXForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value 10^18 wei
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 504 len 64]), msg.sender, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 'NH{q', 17
                                if msg.value < 0:
                                    revert with 'NH{q', 17
                            call msg.sender with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'failed to send back avax'
}



}
