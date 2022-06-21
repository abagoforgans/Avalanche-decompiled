contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;
mapping of uint256 balances;
address stor5;

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
    stor1[address(arg1)] = 0
}

function setGameAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
    stor5 = stor2
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
    require ext_code.size(stor5)
    staticcall stor5.minted() with:
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
    require ext_code.size(stor5)
    staticcall stor5.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == 65535:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) % 10:
        return 0
    if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
        if uint16(uint16(ext_call.return_data[0]) + 1) > 10000:
            return 0
    else:
        if not sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2 % 2048 >> 245 % 10:
            return 0
    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) > 95:
        return uint8(arg1) >= 8
    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) > 80:
        return uint8(arg1) >= 7
    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) <= 50:
        return uint8(arg1) >= 5
    return uint8(arg1) >= 6
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
    require ext_code.size(stor5)
    staticcall stor5.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == 65535:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
        if not uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) % 10:
            if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
                if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) > 95:
                    if uint8(arg1) >= 8:
                        call msg.sender with:
                           value balances[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        balances[address(msg.sender)] = 0
                else:
                    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) > 80:
                        if uint8(arg1) >= 7:
                            call msg.sender with:
                               value balances[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            balances[address(msg.sender)] = 0
                    else:
                        if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) <= 50:
                            if uint8(arg1) >= 5:
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
                        else:
                            if uint8(arg1) >= 6:
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
    else:
        if not uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) % 10:
            if sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2 % 2048 >> 245 % 10:
                if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) > 95:
                    if uint8(arg1) >= 8:
                        call msg.sender with:
                           value balances[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        balances[address(msg.sender)] = 0
                else:
                    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) > 80:
                        if uint8(arg1) >= 7:
                            call msg.sender with:
                               value balances[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            balances[address(msg.sender)] = 0
                    else:
                        if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor arg2) >> 16 % 100) <= 50:
                            if uint8(arg1) >= 5:
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
                        else:
                            if uint8(arg1) >= 6:
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
}



}
