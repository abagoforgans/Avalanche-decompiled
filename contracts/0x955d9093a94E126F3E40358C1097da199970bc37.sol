contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 balances;
address stor3;

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

function setGameAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
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

function sub_eba0df84(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if uint16(uint16(arg1) % 100) > 98:
        return 0
    if uint16(uint16(arg1) % 100) > 96:
        return 1
    if uint16(uint16(arg1) % 100) > 94:
        return 2
    if uint16(uint16(arg1) % 100) > 92:
        return 3
    if uint16(uint16(arg1) % 100) > 90:
        return 4
    if uint16(uint16(arg1) % 100) > 75:
        return 5
    if uint16(uint16(arg1) % 100) > 60:
        return 6
    if uint16(uint16(arg1) % 100) > 45:
        return 7
    if uint16(uint16(arg1) % 100) > 30:
        return 8
    if uint16(uint16(arg1) % 100) <= 15:
        return 10
    return 9
}

function sub_44769c4a(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    require ext_code.size(stor3)
    staticcall stor3.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == -1:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) % 10:
        return 0
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 98:
        return 0 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 96:
        return 1 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 94:
        return 2 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 92:
        return 3 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 90:
        return 4 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 75:
        return 5 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 60:
        return 6 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 45:
        return 7 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 30:
        return 8 <= uint8(arg1)
    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) <= 15:
        return 10 <= uint8(arg1)
    return 9 <= uint8(arg1)
}

function sub_cad9ba1a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    if balances[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    balances[address(msg.sender)] += msg.value
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controllable: you are not controller pd'
    require ext_code.size(stor3)
    staticcall stor3.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == -1:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) % 10:
        if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 98:
            if 0 <= uint8(arg1):
                call msg.sender with:
                   value balances[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                balances[address(msg.sender)] = 0
        else:
            if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 96:
                if 1 <= uint8(arg1):
                    call msg.sender with:
                       value balances[address(msg.sender)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    balances[address(msg.sender)] = 0
            else:
                if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 94:
                    if 2 <= uint8(arg1):
                        call msg.sender with:
                           value balances[address(msg.sender)] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        balances[address(msg.sender)] = 0
                else:
                    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 92:
                        if 3 <= uint8(arg1):
                            call msg.sender with:
                               value balances[address(msg.sender)] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            balances[address(msg.sender)] = 0
                    else:
                        if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 90:
                            if 4 <= uint8(arg1):
                                call msg.sender with:
                                   value balances[address(msg.sender)] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                balances[address(msg.sender)] = 0
                        else:
                            if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 75:
                                if 5 <= uint8(arg1):
                                    call msg.sender with:
                                       value balances[address(msg.sender)] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    balances[address(msg.sender)] = 0
                            else:
                                if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 60:
                                    if 6 <= uint8(arg1):
                                        call msg.sender with:
                                           value balances[address(msg.sender)] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        balances[address(msg.sender)] = 0
                                else:
                                    if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 45:
                                        if 7 <= uint8(arg1):
                                            call msg.sender with:
                                               value balances[address(msg.sender)] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            balances[address(msg.sender)] = 0
                                    else:
                                        if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) > 30:
                                            if 8 <= uint8(arg1):
                                                call msg.sender with:
                                                   value balances[address(msg.sender)] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                balances[address(msg.sender)] = 0
                                        else:
                                            if uint16(Mask(16, 16, sha3(tx.origin, block.hash(block.number - 1), block.timestamp, uint16(ext_call.return_data[0]) + 1)) >> 16 % 100) <= 15:
                                                if 10 <= uint8(arg1):
                                                    call msg.sender with:
                                                       value balances[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    balances[address(msg.sender)] = 0
                                            else:
                                                if 9 <= uint8(arg1):
                                                    call msg.sender with:
                                                       value balances[address(msg.sender)] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    balances[address(msg.sender)] = 0
}



}
