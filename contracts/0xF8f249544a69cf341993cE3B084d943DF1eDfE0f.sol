contract main {




// =====================  Runtime code  =====================


address owner;
uint256 maxLimit;
uint256 minLimit;
uint256 sub_b0611f34;
uint256 sub_7a424776;
address treasuryAddress;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
address stor7;
address stor8;
array of address sub_bb189cca;
mapping of uint8 stor10;

function maxLimit() payable {
    return maxLimit
}

function minLimit() payable {
    return minLimit
}

function sub_7a424776(?) payable {
    return sub_7a424776
}

function owner() payable {
    return owner
}

function sub_b0611f34(?) payable {
    return sub_b0611f34
}

function isPaused() payable {
    return bool(uint8(stor6.field_160))
}

function sub_bb189cca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_bb189cca.length
    return sub_bb189cca[arg1]
}

function treasuryAddress() payable {
    return treasuryAddress
}

function sub_ed46049a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function destroy() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, not bool(uint8(stor6.field_160)))
}

function setNFT(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
}

function sub_0f6f2802(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7a424776 = arg1
}

function sub_780661fb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b0611f34 = arg1
}

function setMinLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minLimit = arg1
}

function setMaxLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxLimit = arg1
}

function sub_6876bcb9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = address(arg1)
}

function sub_1fcc9f89(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = 0
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, '0x08'
}

function sub_88cb57b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = address(arg1)
    address(stor6.field_0) = treasuryAddress
}

function sub_eee0c74b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bb189cca.length++
    sub_bb189cca[sub_bb189cca.length] = address(arg1)
    stor10[address(arg1)] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_ae6841db(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg3))
    call address(arg3).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7caf0ff4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor7)
    staticcall stor7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = idx
        require ext_code.size(stor7)
        staticcall stor7.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_15] == mem[_15]
        if idx == -1:
            revert with 'NH{q', 17
        if mem[_15] < 4431:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if ext_call.return_data[0] < 5:
        if not s:
            if ext_call.return_data[0] and sub_7a424776 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if sub_b0611f34 < ext_call.return_data[0] * sub_7a424776:
                revert with 'NH{q', 17
            return (sub_b0611f34 - (ext_call.return_data[0] * sub_7a424776))
    if sub_7a424776 > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 'NH{q', 17
    if sub_b0611f34 < 5 * sub_7a424776:
        revert with 'NH{q', 17
    return (sub_b0611f34 - (5 * sub_7a424776))
}

function sub_b94ab68f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require tx.origin == msg.sender
    if arg5 < minLimit:
        revert with 0, 'Can't play smaller than maxLimit'
    if arg5 > maxLimit:
        revert with 0, 'Can't play larger than maxLimit'
    require not uint8(stor6.field_160)
    if arg4 >= sub_bb189cca.length:
        revert with 'NH{q', 50
    mem[0] = 9
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(sub_bb189cca[arg4])
    staticcall sub_bb189cca[arg4].allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg5 > ext_call.return_data[0]:
        revert with 0, 'Allowance is lower than played amount'
    mem[ceil32(return_data.size) + 128] = address(msg.sender)
    mem[ceil32(return_data.size) + 148] = block.gas_limit
    mem[ceil32(return_data.size) + 180] = block.timestamp
    mem[ceil32(return_data.size) + 212] = block.number
    mem[ceil32(return_data.size) + 96] = 116
    if sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6 > -2:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 248] = msg.sender
    mem[ceil32(return_data.size) + 280] = treasuryAddress
    mem[ceil32(return_data.size) + 312] = arg5
    require ext_code.size(sub_bb189cca[arg4])
    call sub_bb189cca[arg4].transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, treasuryAddress, arg5
    mem[ceil32(return_data.size) + 244] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 248] = arg5
    mem[(2 * ceil32(return_data.size)) + 280] = arg4
    require ext_code.size(address(stor6.field_0))
    call address(stor6.field_0).0x411e17a1 with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 248 len ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 248] = msg.sender
    require ext_code.size(stor7)
    staticcall stor7.balanceOf(address arg1) with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 248 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 244] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 244
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(stor7)
        staticcall stor7.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_76] == mem[_76]
        if idx == -1:
            revert with 'NH{q', 17
        if mem[_76] < 4431:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if ext_call.return_data[0] >= 5:
        if sub_7a424776 > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 'NH{q', 17
        if sub_b0611f34 < 5 * sub_7a424776:
            revert with 'NH{q', 17
        if uint8(arg1) == (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
            if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                revert with 'NH{q', 17
            if arg5 and 1000 > -1 / arg5:
                revert with 'NH{q', 17
            if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                revert with 'NH{q', 18
            if 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                revert with 'NH{q', 17
            require ext_code.size(address(stor6.field_0))
            call address(stor6.field_0).0x22f7db60 with:
                 gas gas_remaining wei
                args 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
            require ext_code.size(stor8)
            call stor8.0x51f1399d with:
                 gas gas_remaining wei
                args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, arg4
        else:
            if uint8(arg2) == (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
                if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                    revert with 'NH{q', 17
                if arg5 and 1000 > -1 / arg5:
                    revert with 'NH{q', 17
                if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                    revert with 'NH{q', 18
                if 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                    revert with 'NH{q', 17
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).0x22f7db60 with:
                     gas gas_remaining wei
                    args 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                require ext_code.size(stor8)
                call stor8.0x51f1399d with:
                     gas gas_remaining wei
                    args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, arg4
            else:
                if uint8(arg3) != (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
                    emit 0x7348729c: msg.sender, arg5, 0, 0, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                    require ext_code.size(stor8)
                    call stor8.0x51f1399d with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg5, 0, arg4
                else:
                    if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                        revert with 'NH{q', 17
                    if arg5 and 1000 > -1 / arg5:
                        revert with 'NH{q', 17
                    if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                        revert with 'NH{q', 18
                    if 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                        revert with 'NH{q', 17
                    require ext_code.size(address(stor6.field_0))
                    call address(stor6.field_0).0x22f7db60 with:
                         gas gas_remaining wei
                        args 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                    require ext_code.size(stor8)
                    call stor8.0x51f1399d with:
                         gas gas_remaining wei
                        args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, arg4
    else:
        if not s:
            if ext_call.return_data[0] and sub_7a424776 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if sub_b0611f34 < ext_call.return_data[0] * sub_7a424776:
                revert with 'NH{q', 17
            if uint8(arg1) == (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
                if sub_b0611f34 - (ext_call.return_data[0] * sub_7a424776) > -1001:
                    revert with 'NH{q', 17
                if arg5 and 1000 > -1 / arg5:
                    revert with 'NH{q', 17
                if not sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                    revert with 'NH{q', 18
                if 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                    revert with 'NH{q', 17
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).0x22f7db60 with:
                     gas gas_remaining wei
                    args 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, msg.sender, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                require ext_code.size(stor8)
                call stor8.0x51f1399d with:
                     gas gas_remaining wei
                    args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, arg4
            else:
                if uint8(arg2) == (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
                    if sub_b0611f34 - (ext_call.return_data[0] * sub_7a424776) > -1001:
                        revert with 'NH{q', 17
                    if arg5 and 1000 > -1 / arg5:
                        revert with 'NH{q', 17
                    if not sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                        revert with 'NH{q', 18
                    if 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                        revert with 'NH{q', 17
                    require ext_code.size(address(stor6.field_0))
                    call address(stor6.field_0).0x22f7db60 with:
                         gas gas_remaining wei
                        args 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, msg.sender, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                    require ext_code.size(stor8)
                    call stor8.0x51f1399d with:
                         gas gas_remaining wei
                        args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, arg4
                else:
                    if uint8(arg3) != (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
                        emit 0x7348729c: msg.sender, arg5, 0, 0, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                        require ext_code.size(stor8)
                        call stor8.0x51f1399d with:
                             gas gas_remaining wei
                            args msg.sender, 0, arg5, 0, arg4
                    else:
                        if sub_b0611f34 - (ext_call.return_data[0] * sub_7a424776) > -1001:
                            revert with 'NH{q', 17
                        if arg5 and 1000 > -1 / arg5:
                            revert with 'NH{q', 17
                        if not sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                            revert with 'NH{q', 18
                        if 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                            revert with 'NH{q', 17
                        require ext_code.size(address(stor6.field_0))
                        call address(stor6.field_0).0x22f7db60 with:
                             gas gas_remaining wei
                            args 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, msg.sender, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                        require ext_code.size(stor8)
                        call stor8.0x51f1399d with:
                             gas gas_remaining wei
                            args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, arg4
        else:
            if sub_7a424776 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 'NH{q', 17
            if sub_b0611f34 < 5 * sub_7a424776:
                revert with 'NH{q', 17
            if uint8(arg1) == (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
                if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                    revert with 'NH{q', 17
                if arg5 and 1000 > -1 / arg5:
                    revert with 'NH{q', 17
                if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                    revert with 'NH{q', 18
                if 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                    revert with 'NH{q', 17
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).0x22f7db60 with:
                     gas gas_remaining wei
                    args 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                require ext_code.size(stor8)
                call stor8.0x51f1399d with:
                     gas gas_remaining wei
                    args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, arg4
            else:
                if uint8(arg2) == (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
                    if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                        revert with 'NH{q', 17
                    if arg5 and 1000 > -1 / arg5:
                        revert with 'NH{q', 17
                    if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                        revert with 'NH{q', 18
                    if 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                        revert with 'NH{q', 17
                    require ext_code.size(address(stor6.field_0))
                    call address(stor6.field_0).0x22f7db60 with:
                         gas gas_remaining wei
                        args 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender, arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                    require ext_code.size(stor8)
                    call stor8.0x51f1399d with:
                         gas gas_remaining wei
                        args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, arg4
                else:
                    if uint8(arg3) != (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1:
                        emit 0x7348729c: msg.sender, arg5, 0, 0, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                        require ext_code.size(stor8)
                        call stor8.0x51f1399d with:
                             gas gas_remaining wei
                            args msg.sender, 0, arg5, 0, arg4
                    else:
                        if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                            revert with 'NH{q', 17
                        if arg5 and 1000 > -1 / arg5:
                            revert with 'NH{q', 17
                        if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                            revert with 'NH{q', 18
                        if 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                            revert with 'NH{q', 17
                        require ext_code.size(address(stor6.field_0))
                        call address(stor6.field_0).0x22f7db60 with:
                             gas gas_remaining wei
                            args 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x7348729c: msg.sender, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(msg.sender, block.gas_limit, block.timestamp, block.number) % 6) + 1
                        require ext_code.size(stor8)
                        call stor8.0x51f1399d with:
                             gas gas_remaining wei
                            args msg.sender, 1, arg5, 2 * 1000 * arg5 / sub_b0611f34 + (-5 * sub_7a424776) + 1000, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
