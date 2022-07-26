contract main {




// =====================  Runtime code  =====================


address owner;
uint256 maxLimit;
uint256 minLimit;
uint256 sub_b0611f34;
uint256 sub_7a424776;
address stor5;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
address stor7;
address stor8;

function maxLimit() {
    return maxLimit
}

function minLimit() {
    return minLimit
}

function sub_7a424776(?) {
    return sub_7a424776
}

function owner() {
    return owner
}

function sub_b0611f34(?) {
    return sub_b0611f34
}

function isPaused() {
    return bool(uint8(stor6.field_160))
}

function destroy() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, not bool(uint8(stor6.field_160)))
}

function setNFT(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
}

function sub_0f6f2802(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7a424776 = arg1
}

function sub_780661fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b0611f34 = arg1
}

function setMinLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minLimit = arg1
}

function setMaxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxLimit = arg1
}

function sub_6876bcb9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = address(arg1)
}

function sub_88cb57b4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = address(arg1)
    address(stor6.field_0) = stor5
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, '0x08'
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

function sub_7caf0ff4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
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
        staticcall stor7.0x2f745c59 with:
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

function sub_191bad21(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require tx.origin == msg.sender
    require msg.value >= minLimit
    require msg.value <= maxLimit
    require not uint8(stor6.field_160)
    if block.number < 1:
        revert with 'NH{q', 17
    mem[128] = gas_remaining
    mem[160] = block.hash(block.number - 1)
    mem[192] = block.timestamp
    mem[224] = block.number
    mem[96] = 128
    if sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6 > -2:
        revert with 'NH{q', 17
    require ext_code.size(address(stor6.field_0))
    call address(stor6.field_0).0xa0d065c3 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[260] = msg.sender
    require ext_code.size(stor7)
    staticcall stor7.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(stor7)
        staticcall stor7.0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _55 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_55] == mem[_55]
        if idx == -1:
            revert with 'NH{q', 17
        if mem[_55] < 4431:
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
        if uint8(arg1) == (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
            if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                revert with 'NH{q', 17
            if msg.value and 1000 > -1 / msg.value:
                revert with 'NH{q', 17
            if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                revert with 'NH{q', 18
            if 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                revert with 'NH{q', 17
            require ext_code.size(address(stor6.field_0))
            call address(stor6.field_0).0x90dab34f with:
                 gas gas_remaining wei
                args 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
            require ext_code.size(stor8)
            call stor8.0xbaa08e6f with:
                 gas gas_remaining wei
                args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000
        else:
            if uint8(arg2) == (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
                if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                    revert with 'NH{q', 17
                if msg.value and 1000 > -1 / msg.value:
                    revert with 'NH{q', 17
                if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                    revert with 'NH{q', 18
                if 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                    revert with 'NH{q', 17
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).0x90dab34f with:
                     gas gas_remaining wei
                    args 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                require ext_code.size(stor8)
                call stor8.0xbaa08e6f with:
                     gas gas_remaining wei
                    args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000
            else:
                if uint8(arg3) != (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
                    emit 0x7348729c: msg.sender, msg.value, 0, 0, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                    require ext_code.size(stor8)
                    call stor8.0xbaa08e6f with:
                         gas gas_remaining wei
                        args msg.sender, 0, msg.value, 0
                else:
                    if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                        revert with 'NH{q', 17
                    if msg.value and 1000 > -1 / msg.value:
                        revert with 'NH{q', 17
                    if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                        revert with 'NH{q', 18
                    if 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                        revert with 'NH{q', 17
                    require ext_code.size(address(stor6.field_0))
                    call address(stor6.field_0).0x90dab34f with:
                         gas gas_remaining wei
                        args 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                    require ext_code.size(stor8)
                    call stor8.0xbaa08e6f with:
                         gas gas_remaining wei
                        args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000
    else:
        if not s:
            if ext_call.return_data[0] and sub_7a424776 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if sub_b0611f34 < ext_call.return_data[0] * sub_7a424776:
                revert with 'NH{q', 17
            if uint8(arg1) == (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
                if sub_b0611f34 - (ext_call.return_data[0] * sub_7a424776) > -1001:
                    revert with 'NH{q', 17
                if msg.value and 1000 > -1 / msg.value:
                    revert with 'NH{q', 17
                if not sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                    revert with 'NH{q', 18
                if 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                    revert with 'NH{q', 17
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).0x90dab34f with:
                     gas gas_remaining wei
                    args 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                require ext_code.size(stor8)
                call stor8.0xbaa08e6f with:
                     gas gas_remaining wei
                    args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000
            else:
                if uint8(arg2) == (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
                    if sub_b0611f34 - (ext_call.return_data[0] * sub_7a424776) > -1001:
                        revert with 'NH{q', 17
                    if msg.value and 1000 > -1 / msg.value:
                        revert with 'NH{q', 17
                    if not sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                        revert with 'NH{q', 18
                    if 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                        revert with 'NH{q', 17
                    require ext_code.size(address(stor6.field_0))
                    call address(stor6.field_0).0x90dab34f with:
                         gas gas_remaining wei
                        args 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                    require ext_code.size(stor8)
                    call stor8.0xbaa08e6f with:
                         gas gas_remaining wei
                        args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000
                else:
                    if uint8(arg3) != (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
                        emit 0x7348729c: msg.sender, msg.value, 0, 0, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                        require ext_code.size(stor8)
                        call stor8.0xbaa08e6f with:
                             gas gas_remaining wei
                            args msg.sender, 0, msg.value, 0
                    else:
                        if sub_b0611f34 - (ext_call.return_data[0] * sub_7a424776) > -1001:
                            revert with 'NH{q', 17
                        if msg.value and 1000 > -1 / msg.value:
                            revert with 'NH{q', 17
                        if not sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                            revert with 'NH{q', 18
                        if 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000:
                            revert with 'NH{q', 17
                        require ext_code.size(address(stor6.field_0))
                        call address(stor6.field_0).0x90dab34f with:
                             gas gas_remaining wei
                            args 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                        require ext_code.size(stor8)
                        call stor8.0xbaa08e6f with:
                             gas gas_remaining wei
                            args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-1 * ext_call.return_data[0] * sub_7a424776) + 1000
        else:
            if sub_7a424776 > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 'NH{q', 17
            if sub_b0611f34 < 5 * sub_7a424776:
                revert with 'NH{q', 17
            if uint8(arg1) == (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
                if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                    revert with 'NH{q', 17
                if msg.value and 1000 > -1 / msg.value:
                    revert with 'NH{q', 17
                if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                    revert with 'NH{q', 18
                if 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                    revert with 'NH{q', 17
                require ext_code.size(address(stor6.field_0))
                call address(stor6.field_0).0x90dab34f with:
                     gas gas_remaining wei
                    args 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                require ext_code.size(stor8)
                call stor8.0xbaa08e6f with:
                     gas gas_remaining wei
                    args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000
            else:
                if uint8(arg2) == (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
                    if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                        revert with 'NH{q', 17
                    if msg.value and 1000 > -1 / msg.value:
                        revert with 'NH{q', 17
                    if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                        revert with 'NH{q', 18
                    if 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                        revert with 'NH{q', 17
                    require ext_code.size(address(stor6.field_0))
                    call address(stor6.field_0).0x90dab34f with:
                         gas gas_remaining wei
                        args 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                    require ext_code.size(stor8)
                    call stor8.0xbaa08e6f with:
                         gas gas_remaining wei
                        args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000
                else:
                    if uint8(arg3) != (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1:
                        emit 0x7348729c: msg.sender, msg.value, 0, 0, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                        require ext_code.size(stor8)
                        call stor8.0xbaa08e6f with:
                             gas gas_remaining wei
                            args msg.sender, 0, msg.value, 0
                    else:
                        if sub_b0611f34 - (5 * sub_7a424776) > -1001:
                            revert with 'NH{q', 17
                        if msg.value and 1000 > -1 / msg.value:
                            revert with 'NH{q', 17
                        if not sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                            revert with 'NH{q', 18
                        if 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000 and 2 > -1 / 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000:
                            revert with 'NH{q', 17
                        require ext_code.size(address(stor6.field_0))
                        call address(stor6.field_0).0x90dab34f with:
                             gas gas_remaining wei
                            args 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x7348729c: msg.sender, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000, 1, (sha3(gas_remaining, block.hash(block.number - 1), block.timestamp, block.number) % 6) + 1
                        require ext_code.size(stor8)
                        call stor8.0xbaa08e6f with:
                             gas gas_remaining wei
                            args msg.sender, 1, msg.value, 2 * 1000 * msg.value / sub_b0611f34 + (-5 * sub_7a424776) + 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
