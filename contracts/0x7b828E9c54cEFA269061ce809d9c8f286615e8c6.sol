contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
array of struct stor5;
address stor6;
uint8 stage; offset 160
address stor7;
array of struct stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;

function owner() {
    return owner
}

function stage() {
    if stage >= 2:
        revert with 'NH{q', 33
    return stage
}

function _fallback() payable {
    revert
}

function getTotalFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return stor1, stor2
}

function getContractBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return eth.balance(this.address)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function startSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stage > 1:
        revert with 'NH{q', 33
    if stage:
        revert with 0, 'Sale is already ongoing'
    stage = 1
}

function stopSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stage > 1:
        revert with 'NH{q', 33
    if stage != 1:
        revert with 0, 'Sale has not started yet'
    stage = 0
}

function sub_47b2132b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas gas_remaining wei
    require ext_call.success
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

function getUnsoldTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    staticcall stor6.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_1dcac3cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a2a8138e(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = (32 * stor8.length) + 128
    mem[96] = stor8.length
    s = 128
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        _14 = mem[64]
        mem[64] = mem[64] + 96
        mem[_14] = stor8[idx].field_0
        mem[_14 + 32] = stor8[idx].field_256
        mem[_14 + 64] = stor8[idx].field_512
        mem[s] = _14
        s = s + 32
        idx = idx + 1
        continue 
    _15 = mem[64]
    mem[mem[64]] = 32
    _16 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _16:
        _22 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_22 + 32]
        mem[t + 64] = mem[_22 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _15 + (96 * _16) + -mem[64] + 64
}

function sub_f5f027e5(?) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8.length = 0
    idx = 0
    while 3 * stor8.length > idx:
        stor8[idx].field_0 = 0
        stor8[idx].field_256 = 0
        stor8[idx].field_512 = 0
        idx = idx + 3
        continue 
    idx = 0
    while idx < stor5.length:
        _24 = mem[64]
        mem[64] = mem[64] + 96
        mem[0] = 5
        mem[_24] = stor5[idx].field_0
        mem[32] = 3
        mem[_24 + 32] = stor3[stor5[idx].field_0]
        mem[32] = 4
        mem[_24 + 64] = stor4[stor5[idx].field_0]
        stor8.length++
        mem[0] = 8
        stor8[stor8.length].field_0 = stor5[idx].field_0
        stor8[stor8.length].field_256 = stor3[stor5[idx].field_0]
        stor8[stor8.length].field_512 = stor4[stor5[idx].field_0]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_1e9b04a2(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[64] = (32 * stor5.length) + 128
    mem[96] = stor5.length
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        idx = 0
        s = 128
        t = (32 * stor5.length) + 192
        while idx < stor5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 128] = 32
    mem[(32 * stor5.length) + 160] = stor5.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor5.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor5.length) + -mem[64] + 192
}

function sub_9c9ff343(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stage > 1:
        revert with 'NH{q', 33
    if not stage:
        revert with 0, 'Presale not started yet.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You have not supplied any MIM token'
    require ext_code.size(stor7)
    staticcall stor7.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'There is not enough allowance to spend MIM'
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor12, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'MIM could not be transferred'
    if not stor3[address(msg.sender)]:
        stor5.length++
        stor5[stor5.length].field_0 = msg.sender
    if stor3[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    stor3[address(msg.sender)] += arg1
    if stor1 > -arg1 - 1:
        revert with 'NH{q', 17
    stor1 += arg1
    if stor11 <= 0:
        revert with 0, 'Error when dividing tokens', 0
    if not stor11:
        revert with 'NH{q', 18
    if stor10 < stor9:
        revert with 'NH{q', 17
    if not stor10 - stor9:
        if arg1 / stor11 and 1 > -1 / arg1 / stor11:
            revert with 'NH{q', 17
        if stor4[address(msg.sender)] > -(arg1 / stor11) - 1:
            revert with 'NH{q', 17
        stor4[address(msg.sender)] += arg1 / stor11
        if stor2 > -(arg1 / stor11) - 1:
            revert with 'NH{q', 17
        stor2 += arg1 / stor11
        require ext_code.size(stor6)
        call stor6.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 / stor11
    else:
        if bool(bool(stor10 - stor9 < 78)) or bool(bool(stor10 - stor9 < 32)):
            if 10^(stor10 - stor9) > -1:
                revert with 'NH{q', 17
            if arg1 / stor11 and 10^(stor10 - stor9) > -1 / arg1 / stor11:
                revert with 'NH{q', 17
            if stor4[address(msg.sender)] > (-1 * arg1 / stor11 * 10^(stor10 - stor9)) - 1:
                revert with 'NH{q', 17
            stor4[address(msg.sender)] += arg1 / stor11 * 10^(stor10 - stor9)
            if stor2 > (-1 * arg1 / stor11 * 10^(stor10 - stor9)) - 1:
                revert with 'NH{q', 17
            stor2 += arg1 / stor11 * 10^(stor10 - stor9)
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 / stor11 * 10^(stor10 - stor9)
        else:
            s = 10
            t = 1
            idx = stor10 - stor9
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 / stor11 and t * s > -1 / arg1 / stor11:
                revert with 'NH{q', 17
            if stor4[address(msg.sender)] > (-1 * arg1 / stor11 * t * s) - 1:
                revert with 'NH{q', 17
            stor4[address(msg.sender)] += arg1 / stor11 * t * s
            if stor2 > (-1 * arg1 / stor11 * t * s) - 1:
                revert with 'NH{q', 17
            stor2 += arg1 / stor11 * t * s
            require ext_code.size(stor6)
            call stor6.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 / stor11 * t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
