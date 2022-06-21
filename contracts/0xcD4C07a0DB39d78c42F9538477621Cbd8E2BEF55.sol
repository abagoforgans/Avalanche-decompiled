contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor4;
address stor5;

function owner() {
    return owner
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
    stor1 = arg1
    stor4 = stor1
}

function sub_d773826d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
    stor5 = stor2
}

function sub_b4fad1b5(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function getMinted() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    staticcall stor4.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    return ext_call.return_data[30 len 2]
}

function sub_b92eaace(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == arg2
    require arg3 == uint16(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number < 1:
        revert with 'NH{q', 17
    if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(arg3)) xor arg2) % 10:
        return 0
    if uint16(arg3) <= 10000:
        if uint16(arg3) > 10000:
            return 0
    else:
        if not sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(arg3)) xor arg2 % 2048 >> 245 % 10:
            return 0
    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(arg3)) xor arg2) >> 16 % 100) > 95:
        return uint8(arg1) <= 8
    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(arg3)) xor arg2) >> 16 % 100) > 80:
        return uint8(arg1) <= 7
    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(arg3)) xor arg2) >> 16 % 100) <= 50:
        return uint8(arg1) <= 5
    return uint8(arg1) <= 6
}

function sub_df8120a9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == arg2
    require arg3 == uint16(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor4)
    staticcall stor4.minted() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    if ext_call.return_data[30 len 2] == 65535:
        revert with 'NH{q', 17
    if uint16(ext_call.return_data[30 len 2] + 1) != uint16(arg3):
    if bool(ext_call.return_data[30 len 2] + 1):
        if var56005 == -1:
            revert with 'NH{q', 17
        if uint16(ext_call.return_data[30 len 2] + 1) and var56005 + 1 > -1 / uint16(ext_call.return_data[30 len 2] + 1):
            revert with 'NH{q', 17
        if uint16(ext_call.return_data[30 len 2] + 1) + (var56005 * uint16(ext_call.return_data[30 len 2] + 1)) > -3:
            revert with 'NH{q', 17
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if block.number < 1:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 128] = address(msg.sender)
        mem[ceil32(return_data.size) + 148] = block.hash(block.number - 1)
        mem[ceil32(return_data.size) + 180] = block.timestamp
        mem[ceil32(return_data.size) + 212] = uint16(uint16(ext_call.return_data[0]) + 1)
        mem[ceil32(return_data.size) + 96] = 116
        mem[64] = ceil32(return_data.size) + 244
        if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
            if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2) % 10:
                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                require ext_code.size(stor5)
                call stor5.getRandomSeed(uint256 arg1) with:
                     gas gas_remaining wei
                    args uint16(uint16(ext_call.return_data[0]) + 1)
                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 244
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if uint16(uint16(ext_call.return_data[0]) + 1) > 10000:
                    mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                    require ext_code.size(stor5)
                    call stor5.getRandomSeed(uint256 arg1) with:
                         gas gas_remaining wei
                        args uint16(uint16(ext_call.return_data[0]) + 1)
                    mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 244
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2) >> 16 % 100) > 95:
                        if uint8(arg1) > 8:
                            mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                            require ext_code.size(stor5)
                            call stor5.getRandomSeed(uint256 arg1) with:
                                 gas gas_remaining wei
                                args uint16(uint16(ext_call.return_data[0]) + 1)
                            mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 244
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2) >> 16 % 100) > 80:
                            if uint8(arg1) > 7:
                                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                require ext_code.size(stor5)
                                call stor5.getRandomSeed(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args uint16(uint16(ext_call.return_data[0]) + 1)
                                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 244
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2) >> 16 % 100) <= 50:
                                if uint8(arg1) > 5:
                                    mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                    require ext_code.size(stor5)
                                    call stor5.getRandomSeed(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args uint16(uint16(ext_call.return_data[0]) + 1)
                                    mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 244
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                            else:
                                if uint8(arg1) > 6:
                                    mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                    require ext_code.size(stor5)
                                    call stor5.getRandomSeed(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args uint16(uint16(ext_call.return_data[0]) + 1)
                                    mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 244
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2) % 10:
                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                require ext_code.size(stor5)
                call stor5.getRandomSeed(uint256 arg1) with:
                     gas gas_remaining wei
                    args uint16(uint16(ext_call.return_data[0]) + 1)
                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 244
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if not sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2 % 2048 >> 245 % 10:
                    mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                    require ext_code.size(stor5)
                    call stor5.getRandomSeed(uint256 arg1) with:
                         gas gas_remaining wei
                        args uint16(uint16(ext_call.return_data[0]) + 1)
                    mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 244
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2) >> 16 % 100) > 95:
                        if uint8(arg1) > 8:
                            mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                            require ext_code.size(stor5)
                            call stor5.getRandomSeed(uint256 arg1) with:
                                 gas gas_remaining wei
                                args uint16(uint16(ext_call.return_data[0]) + 1)
                            mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 244
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2) >> 16 % 100) > 80:
                            if uint8(arg1) > 7:
                                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                require ext_code.size(stor5)
                                call stor5.getRandomSeed(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args uint16(uint16(ext_call.return_data[0]) + 1)
                                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 244
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2) >> 16 % 100) <= 50:
                                if uint8(arg1) > 5:
                                    mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                    require ext_code.size(stor5)
                                    call stor5.getRandomSeed(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args uint16(uint16(ext_call.return_data[0]) + 1)
                                    mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 244
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
                            else:
                                if uint8(arg1) > 6:
                                    mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                    require ext_code.size(stor5)
                                    call stor5.getRandomSeed(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args uint16(uint16(ext_call.return_data[0]) + 1)
                                    mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 244
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[0]
        var56001 = uint16(uint16(ext_call.return_data[0]) + 1) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 2
        var56005 = var56005 + 1
        continue 
    if var56005 > -3:
        revert with 'NH{q', 17
    if uint16(ext_call.return_data[30 len 2] + 1) and var56005 + 2 > -1 / uint16(ext_call.return_data[30 len 2] + 1):
        revert with 'NH{q', 17
    if (2 * uint16(ext_call.return_data[30 len 2] + 1)) + (var56005 * uint16(ext_call.return_data[30 len 2] + 1)) > -2:
        revert with 'NH{q', 17
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number < 1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 128] = address(msg.sender)
    mem[ceil32(return_data.size) + 148] = block.hash(block.number - 1)
    mem[ceil32(return_data.size) + 180] = block.timestamp
    mem[ceil32(return_data.size) + 212] = uint16(uint16(ext_call.return_data[0]) + 1)
    mem[ceil32(return_data.size) + 96] = 116
    mem[64] = ceil32(return_data.size) + 244
    if uint16(uint16(ext_call.return_data[0]) + 1) <= 10000:
        if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1) % 10:
            mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
            require ext_code.size(stor5)
            call stor5.getRandomSeed(uint256 arg1) with:
                 gas gas_remaining wei
                args uint16(uint16(ext_call.return_data[0]) + 1)
            mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 244
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if uint16(uint16(ext_call.return_data[0]) + 1) > 10000:
                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                require ext_code.size(stor5)
                call stor5.getRandomSeed(uint256 arg1) with:
                     gas gas_remaining wei
                    args uint16(uint16(ext_call.return_data[0]) + 1)
                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 244
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1) >> 16 % 100) > 95:
                    if uint8(arg1) > 8:
                        mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                        require ext_code.size(stor5)
                        call stor5.getRandomSeed(uint256 arg1) with:
                             gas gas_remaining wei
                            args uint16(uint16(ext_call.return_data[0]) + 1)
                        mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 244
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1) >> 16 % 100) > 80:
                        if uint8(arg1) > 7:
                            mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                            require ext_code.size(stor5)
                            call stor5.getRandomSeed(uint256 arg1) with:
                                 gas gas_remaining wei
                                args uint16(uint16(ext_call.return_data[0]) + 1)
                            mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 244
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1) >> 16 % 100) <= 50:
                            if uint8(arg1) > 5:
                                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                require ext_code.size(stor5)
                                call stor5.getRandomSeed(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args uint16(uint16(ext_call.return_data[0]) + 1)
                                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 244
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            if uint8(arg1) > 6:
                                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                require ext_code.size(stor5)
                                call stor5.getRandomSeed(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args uint16(uint16(ext_call.return_data[0]) + 1)
                                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 244
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
    else:
        if uint16(sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1) % 10:
            mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
            require ext_code.size(stor5)
            call stor5.getRandomSeed(uint256 arg1) with:
                 gas gas_remaining wei
                args uint16(uint16(ext_call.return_data[0]) + 1)
            mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 244
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
        else:
            if not sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1 % 2048 >> 245 % 10:
                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                require ext_code.size(stor5)
                call stor5.getRandomSeed(uint256 arg1) with:
                     gas gas_remaining wei
                    args uint16(uint16(ext_call.return_data[0]) + 1)
                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 244
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
            else:
                if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1) >> 16 % 100) > 95:
                    if uint8(arg1) > 8:
                        mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                        require ext_code.size(stor5)
                        call stor5.getRandomSeed(uint256 arg1) with:
                             gas gas_remaining wei
                            args uint16(uint16(ext_call.return_data[0]) + 1)
                        mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 244
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                else:
                    if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1) >> 16 % 100) > 80:
                        if uint8(arg1) > 7:
                            mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                            require ext_code.size(stor5)
                            call stor5.getRandomSeed(uint256 arg1) with:
                                 gas gas_remaining wei
                                args uint16(uint16(ext_call.return_data[0]) + 1)
                            mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 244
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                    else:
                        if uint16(Mask(16, 16, sha3(msg.sender, block.hash(block.number - 1), block.timestamp, uint16(uint16(ext_call.return_data[0]) + 1)) xor (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1) >> 16 % 100) <= 50:
                            if uint8(arg1) > 5:
                                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                require ext_code.size(stor5)
                                call stor5.getRandomSeed(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args uint16(uint16(ext_call.return_data[0]) + 1)
                                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 244
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
                        else:
                            if uint8(arg1) > 6:
                                mem[ceil32(return_data.size) + 248] = uint16(uint16(ext_call.return_data[0]) + 1)
                                require ext_code.size(stor5)
                                call stor5.getRandomSeed(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args uint16(uint16(ext_call.return_data[0]) + 1)
                                mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (2 * ceil32(return_data.size)) + 244
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[0]
    var56001 = (2 * uint16(uint16(ext_call.return_data[0]) + 1)) + (var56005 * uint16(uint16(ext_call.return_data[0]) + 1)) + 1
    var56005 = var56005 + 2
    continue 
}



}
