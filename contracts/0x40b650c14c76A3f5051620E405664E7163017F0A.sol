contract main {




// =====================  Runtime code  =====================


const sub_20ed5459(?) = 3


address owner;
uint256 count;
array of address sub_af174784;
array of address stor3;
array of uint256 sub_4c475217;
uint256 sub_9294a030;
address tokenAddress;
address sub_bd8c12daAddress;

function count() payable {
    return count
}

function sub_4c475217(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return sub_4c475217[arg1]
}

function owner() payable {
    return owner
}

function sub_9294a030(?) payable {
    return sub_9294a030
}

function sub_af174784(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 3
    return sub_af174784[arg1]
}

function sub_bd8c12da(?) payable {
    return sub_bd8c12daAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMinAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9294a030 = arg1
}

function update(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 3:
        revert with 0, '!Index out of range'
    sub_af174784[arg1] = arg2
    sub_4c475217[arg1] = arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f262fbd0(?) payable {
    mem[64] = 96
    idx = 0
    while idx < 3:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        require ext_code.size(sub_af174784[idx])
        staticcall sub_af174784[idx].0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12 = mem[_11]
        require mem[_11] == mem[_11]
        if idx >= 3:
            revert with 'NH{q', 50
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _12
        require ext_code.size(sub_af174784[idx])
        call sub_af174784[idx].0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 5000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bf78df4a(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 1:
        revert with 0, 'not good'
    idx = 0
    while idx < 10:
        if arg1 >= 3:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        require ext_code.size(sub_af174784[arg1])
        staticcall sub_af174784[arg1].0x2f745c59 with:
                gas gas_remaining wei
               args msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _15 = mem[_13]
        require mem[_13] == mem[_13]
        if arg1 >= 3:
            revert with 'NH{q', 50
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = _15
        require ext_code.size(sub_af174784[arg1])
        call sub_af174784[arg1].0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), _15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg1 > -2:
        revert with 'NH{q', 17
    if arg1 + 1 >= 3:
        revert with 'NH{q', 50
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(stor3[arg1])
    call stor3[arg1].0x54ba0f27 with:
         gas gas_remaining wei
        args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _14 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_14] == mem[_14]
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > 10:
        revert with 0, '!Too many'
    if arg1 and sub_9294a030 > -1 / arg1:
        revert with 'NH{q', 17
    mem[96] = 0x9dc29fac00000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    mem[132] = arg1 * sub_9294a030
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 * sub_9294a030
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1:
        mem[mem[64] + 4] = count
        require ext_code.size(sub_bd8c12daAddress)
        call sub_bd8c12daAddress.0xcd4b6914 with:
             gas gas_remaining wei
            args count
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_af174784.length)
            call sub_af174784.length.0x54ba0f27 with:
                 gas gas_remaining wei
                args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_19] == mem[_19]
        else:
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15] == mem[_15]
            if count > -2:
                revert with 'NH{q', 17
            count++
            s = 0
            while s < 3:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(sub_af174784.length)
            call sub_af174784.length.0x54ba0f27 with:
                 gas gas_remaining wei
                args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_23] == mem[_23]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
