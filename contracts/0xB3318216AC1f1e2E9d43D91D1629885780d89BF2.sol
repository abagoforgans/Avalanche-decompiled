contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
mapping of uint256 balances;
address stor4;

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function owner() {
    return owner
}

function controllers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function addController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function setGameAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    stor4 = stor2
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

function sub_b4fad1b5(?) {
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balances[address(msg.sender)] = 0
}

function getMinted() {
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    require ext_code.size(stor4)
    staticcall stor4.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    return ext_call.return_data[30 len 2]
}

function sub_58ba9fbe(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    require ext_code.size(stor4)
    staticcall stor4.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == 65535:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if block.timestamp % arg2 < 2:
        if block.number < 1:
            revert with 'NH{q', 17
        if uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) % 10:
            return 0
        if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
            if uint16(uint16(ext_call.return_data[0]) + 1) > 10000:
                return 0
        else:
            if not sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3 % 2048 >> 245 % 10:
                return 0
        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 > 95:
            return 8 >= uint8(arg1)
        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 > 80:
            return 7 >= uint8(arg1)
        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 <= 50:
            return 5 >= uint8(arg1)
    else:
        if not arg2:
            revert with 'NH{q', 18
        if block.number < 1:
            revert with 'NH{q', 17
        if uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) % 10:
            return 0
        if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
            if uint16(uint16(ext_call.return_data[0]) + 1) > 10000:
                return 0
        else:
            if not sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2 % 2048 >> 245 % 10:
                return 0
        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 > 95:
            return 8 >= uint8(arg1)
        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 > 80:
            return 7 >= uint8(arg1)
        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 <= 50:
            return 5 >= uint8(arg1)
    return 6 >= uint8(arg1)
}

function sub_d995cf9b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if balances[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    balances[address(msg.sender)] += msg.value
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    require ext_code.size(stor4)
    staticcall stor4.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == 65535:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if block.timestamp % arg2 < 2:
        if block.number < 1:
            revert with 'NH{q', 17
        if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
            if not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) % 10:
                if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
                    if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 > 95:
                        if 8 >= uint8(arg1):
                            call msg.sender with:
                               value balances[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            balances[address(msg.sender)] = 0
                    else:
                        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 > 80:
                            if 7 >= uint8(arg1):
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
                        else:
                            if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 <= 50:
                                if 5 >= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                            else:
                                if 6 >= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
        else:
            if not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) % 10:
                if sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3 % 2048 >> 245 % 10:
                    if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 > 95:
                        if 8 >= uint8(arg1):
                            call msg.sender with:
                               value balances[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            balances[address(msg.sender)] = 0
                    else:
                        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 > 80:
                            if 7 >= uint8(arg1):
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
                        else:
                            if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor 3) >> 96 % 100 <= 50:
                                if 5 >= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                            else:
                                if 6 >= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
    else:
        if not arg2:
            revert with 'NH{q', 18
        if block.number < 1:
            revert with 'NH{q', 17
        if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
            if not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) % 10:
                if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
                    if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 > 95:
                        if 8 >= uint8(arg1):
                            call msg.sender with:
                               value balances[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            balances[address(msg.sender)] = 0
                    else:
                        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 > 80:
                            if 7 >= uint8(arg1):
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
                        else:
                            if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 <= 50:
                                if 5 >= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                            else:
                                if 6 >= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
        else:
            if not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) % 10:
                if sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2 % 2048 >> 245 % 10:
                    if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 > 95:
                        if 8 >= uint8(arg1):
                            call msg.sender with:
                               value balances[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            balances[address(msg.sender)] = 0
                    else:
                        if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 > 80:
                            if 7 >= uint8(arg1):
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
                        else:
                            if Mask(16, 96, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor block.timestamp % arg2) >> 96 % 100 <= 50:
                                if 5 >= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                            else:
                                if 6 >= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
}



}
