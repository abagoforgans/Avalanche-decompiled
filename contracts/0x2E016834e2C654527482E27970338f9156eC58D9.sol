contract main {




// =====================  Runtime code  =====================


address owner;
uint256 rate;
uint256 dropUnitPrice;
address nftAddress;

function rate() {
    return rate
}

function nftAddress() {
    return nftAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function dropUnitPrice() {
    return dropUnitPrice
}

function _fallback() payable {
    revert
}

function setNFTAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function restricted to owner of contract'
    emit 0x72c106ba: nftAddress, arg1
    nftAddress = arg1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function restricted to owner of contract'
    require arg1
    require arg1 != owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function restricted to owner of contract'
    require arg1 != rate
    require arg1 > 0
    emit RateChanged(rate, arg1);
    rate = arg1
    if not rate:
        revert with 'NH{q', 18
    dropUnitPrice = 10^18 / rate
    return 1
}

function getTokenAllowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdrawERC20Tokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Function restricted to owner of contract'
    require arg1
    require arg2
    require arg3 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit ERC20TokensWithdrawn(address(arg1), address(arg2), arg3);
    return 1
}

function sub_b4f7579e(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if cd[36] and ('cd', 4).length > -1 / cd[36]:
        revert with 'NH{q', 17
    if cd[36] * ('cd', 4).length > (-1 * ('cd', 4).length * dropUnitPrice) - 1:
        revert with 'NH{q', 17
    if msg.value < (cd[36] * ('cd', 4).length) + (('cd', 4).length * dropUnitPrice):
        revert with 0, 'Not enough ETH sent with transaction!'
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if not address(cd[68]):
        call owner with:
           value ('cd', 4).length * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value ('cd', 4).length * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[68]) with:
           value ('cd', 4).length * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length * dropUnitPrice / 2
        emit CommissionPaid((('cd', 4).length * dropUnitPrice / 2), address(cd[68]));
    if msg.value > (cd[36] * ('cd', 4).length) + (('cd', 4).length * dropUnitPrice):
        if msg.value < (cd[36] * ('cd', 4).length) + (('cd', 4).length * dropUnitPrice):
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (cd[36] * ('cd', 4).length) - (('cd', 4).length * dropUnitPrice) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 140 len 20]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value cd[36] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if cd[36] and ('cd', 4).length > -1 / cd[36]:
        revert with 'NH{q', 17
    emit EthAirdrop(('cd', 4).length, cd[36] * ('cd', 4).length, msg.sender);
    return 1
}

function sub_7f5f943f(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if msg.value < ('cd', 4).length * dropUnitPrice:
        revert with 0, 'Not enough ETH sent with transaction!'
    if msg.value <= ('cd', 4).length * dropUnitPrice:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _126 = mem[(32 * idx) + 128]
                mem[floor32(('cd', 4).length) + 97] = 0x6a62784200000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + 101] = address(_126)
                require ext_code.size(address(cd[36]))
                call address(cd[36]).mint(address arg1) with:
                     gas gas_remaining wei
                    args address(_126)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.value < ('cd', 4).length * dropUnitPrice:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (('cd', 4).length * dropUnitPrice) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _128 = mem[(32 * idx) + 128]
                mem[floor32(('cd', 4).length) + 97] = 0x6a62784200000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + 101] = address(_128)
                require ext_code.size(address(cd[36]))
                call address(cd[36]).mint(address arg1) with:
                     gas gas_remaining wei
                    args address(_128)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if mem[96] and dropUnitPrice > -1 / mem[96]:
        revert with 'NH{q', 17
    if not address(cd[68]):
        call owner with:
           value mem[96] * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[68]) with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[floor32(('cd', 4).length) + 97] = mem[96] * dropUnitPrice / 2
        emit CommissionPaid(mem[floor32(('cd', 4).length) + 97], address(cd[68]));
    mem[floor32(('cd', 4).length) + 97] = mem[96]
    emit 0x27e0a1f9: mem[floor32(('cd', 4).length) + 97], msg.sender, address(cd[36])
    return 1
}

function sub_fc368731(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == address(cd[100])
    if ('cd', 36).length and dropUnitPrice > -1 / ('cd', 36).length:
        revert with 'NH{q', 17
    if msg.value < ('cd', 36).length * dropUnitPrice:
        revert with 0, 'Not enough ETH sent with transaction!'
    if msg.value <= ('cd', 36).length * dropUnitPrice:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _126 = mem[(32 * idx) + 128]
                mem[floor32(('cd', 36).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 36).length) + 101] = msg.sender
                mem[floor32(('cd', 36).length) + 133] = address(_126)
                mem[floor32(('cd', 36).length) + 165] = cd[68]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_126), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.value < ('cd', 36).length * dropUnitPrice:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (('cd', 36).length * dropUnitPrice) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _128 = mem[(32 * idx) + 128]
                mem[floor32(('cd', 36).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 36).length) + 101] = msg.sender
                mem[floor32(('cd', 36).length) + 133] = address(_128)
                mem[floor32(('cd', 36).length) + 165] = cd[68]
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_128), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if mem[96] and dropUnitPrice > -1 / mem[96]:
        revert with 'NH{q', 17
    if not address(cd[100]):
        call owner with:
           value mem[96] * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[100]) with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[floor32(('cd', 36).length) + 97] = mem[96] * dropUnitPrice / 2
        emit CommissionPaid(mem[floor32(('cd', 36).length) + 97], address(cd[100]));
    mem[floor32(('cd', 36).length) + 97] = mem[96]
    emit TokenAirdrop(mem[floor32(('cd', 36).length) + 97], msg.sender, address(cd[4]));
    return 1
}

function sub_706602f4(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if msg.value < ('cd', 4).length * dropUnitPrice:
        revert with 0, 'Not enough ETH sent with transaction!'
    if msg.value <= ('cd', 4).length * dropUnitPrice:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _197 = mem[(32 * idx) + 128]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _201 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 102] = address(_197)
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 134] = _201
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0x40c10f19 with:
                     gas gas_remaining wei
                    args address(_197), _201
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.value < ('cd', 4).length * dropUnitPrice:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (('cd', 4).length * dropUnitPrice) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _199 = mem[(32 * idx) + 128]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _203 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 102] = address(_199)
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 134] = _203
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0x40c10f19 with:
                     gas gas_remaining wei
                    args address(_199), _203
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if mem[96] and dropUnitPrice > -1 / mem[96]:
        revert with 'NH{q', 17
    if not address(cd[100]):
        call owner with:
           value mem[96] * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[100]) with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = mem[96] * dropUnitPrice / 2
        emit CommissionPaid(mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98], address(cd[100]));
    mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = mem[96]
    emit 0x27e0a1f9: mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98], msg.sender, address(cd[36])
    return 1
}

function sub_c9ac4157(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if msg.value < ('cd', 4).length * dropUnitPrice:
        revert with 0, 'Not enough ETH sent with transaction!'
    if msg.value <= ('cd', 4).length * dropUnitPrice:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _197 = mem[(32 * idx) + 128]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _201 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 102] = msg.sender
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 134] = address(_197)
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 166] = _201
                require ext_code.size(address(cd[36]))
                call address(cd[36]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(_197), _201
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.value < ('cd', 4).length * dropUnitPrice:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (('cd', 4).length * dropUnitPrice) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _199 = mem[(32 * idx) + 128]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _203 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 102] = msg.sender
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 134] = address(_199)
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 166] = _203
                require ext_code.size(address(cd[36]))
                call address(cd[36]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(_199), _203
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if mem[96] and dropUnitPrice > -1 / mem[96]:
        revert with 'NH{q', 17
    if not address(cd[100]):
        call owner with:
           value mem[96] * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[100]) with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = mem[96] * dropUnitPrice / 2
        emit CommissionPaid(mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98], address(cd[100]));
    mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = mem[96]
    emit 0x27e0a1f9: mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98], msg.sender, address(cd[36])
    return 1
}

function sub_445a0e1f(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Total number of recipients and values are not equal'
    if ('cd', 36).length and dropUnitPrice > -1 / ('cd', 36).length:
        revert with 'NH{q', 17
    if msg.value < ('cd', 36).length * dropUnitPrice:
        revert with 0, 'Not enough ETH sent with transaction!'
    if msg.value <= ('cd', 36).length * dropUnitPrice:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + floor32(('cd', 36).length) + 129] > 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _225 = mem[(32 * idx) + 128]
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    _229 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = msg.sender
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = address(_225)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = _229
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_225), _229
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.value < ('cd', 36).length * dropUnitPrice:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (('cd', 36).length * dropUnitPrice) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + floor32(('cd', 36).length) + 129] > 0:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _227 = mem[(32 * idx) + 128]
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    _231 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = msg.sender
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = address(_227)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 166] = _231
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_227), _231
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if mem[96] and dropUnitPrice > -1 / mem[96]:
        revert with 'NH{q', 17
    if not address(cd[100]):
        call owner with:
           value mem[96] * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[100]) with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = mem[96] * dropUnitPrice / 2
        emit CommissionPaid(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98], address(cd[100]));
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = mem[96]
    emit TokenAirdrop(mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98], msg.sender, address(cd[4]));
    return 1
}

function sub_a880a263(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 98 > test266151307() or ceil32(ceil32(('cd', 68).length)) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + ceil32(ceil32(('cd', 68).length)) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[floor32(('cd', 4).length) + 129 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[floor32(('cd', 4).length) + ('cd', 68).length + 129] = 0
    require cd[100] == address(cd[100])
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if msg.value < ('cd', 4).length * dropUnitPrice:
        revert with 0, 'Not enough ETH sent with transaction!'
    if msg.value <= ('cd', 4).length * dropUnitPrice:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _156 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xa8d5521100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_156)
                mem[mem[64] + 36] = 64
                _164 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 68] = mem[floor32(('cd', 4).length) + 97]
                s = 0
                while s < _164:
                    mem[mem[64] + s + 100] = mem[floor32(('cd', 4).length) + s + 129]
                    s = s + 32
                    continue 
                if ceil32(_164) <= _164:
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mintToCaller(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args address(_156), 64, mem[mem[64] + 68 len ceil32(_164) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _218 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_218] == mem[_218]
                else:
                    mem[mem[64] + _164 + 100] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mintToCaller(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args address(_156), 64, mem[mem[64] + 68 len ceil32(_164) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_220] == mem[_220]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.value < ('cd', 4).length * dropUnitPrice:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (('cd', 4).length * dropUnitPrice) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _158 = mem[(32 * idx) + 128]
                _159 = mem[64]
                mem[mem[64]] = 0xa8d5521100000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_158)
                mem[mem[64] + 36] = 64
                _165 = mem[floor32(('cd', 4).length) + 97]
                mem[mem[64] + 68] = mem[floor32(('cd', 4).length) + 97]
                s = 0
                while s < _165:
                    mem[mem[64] + s + 100] = mem[floor32(('cd', 4).length) + s + 129]
                    s = s + 32
                    continue 
                if ceil32(_165) <= _165:
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _159 + ceil32(_165) + -mem[64] + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_219] == mem[_219]
                else:
                    mem[_159 + _165 + 100] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _159 + ceil32(_165) + -mem[64] + 96]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_221] == mem[_221]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if mem[96] and dropUnitPrice > -1 / mem[96]:
        revert with 'NH{q', 17
    if not address(cd[100]):
        call owner with:
           value mem[96] * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[100]) with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[mem[64]] = mem[96] * dropUnitPrice / 2
        emit CommissionPaid(mem[mem[64]], address(cd[100]));
    mem[mem[64]] = mem[96]
    emit 0x27e0a1f9: mem[mem[64]], msg.sender, nftAddress
    return 1
}

function sub_343ce58f(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if msg.value < ('cd', 4).length * dropUnitPrice:
        revert with 0, 'Not enough ETH sent with transaction!'
    if msg.value <= ('cd', 4).length * dropUnitPrice:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _277 = mem[(32 * idx) + 128]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _281 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                _285 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 68).length) + 130]
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = msg.sender
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 135] = address(_277)
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 167] = _281
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199] = _285
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 231] = 160
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 263] = 0
                require ext_code.size(address(cd[36]))
                call address(cd[36]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_277), _281, _285, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if msg.value < ('cd', 4).length * dropUnitPrice:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value - (('cd', 4).length * dropUnitPrice) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _279 = mem[(32 * idx) + 128]
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                _283 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                _287 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 68).length) + 130]
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 103] = msg.sender
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 135] = address(_279)
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 167] = _283
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 199] = _287
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 231] = 160
                mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 263] = 0
                require ext_code.size(address(cd[36]))
                call address(cd[36]).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(_279), _283, _287, 160, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if mem[96] and dropUnitPrice > -1 / mem[96]:
        revert with 'NH{q', 17
    if not address(cd[132]):
        call owner with:
           value mem[96] * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[132]) with:
           value mem[96] * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = mem[96] * dropUnitPrice / 2
        emit CommissionPaid(mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99], address(cd[132]));
    mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99] = mem[96]
    emit 0x27e0a1f9: mem[floor32(('cd', 4).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99], msg.sender, address(cd[36])
    return 1
}

function sub_1850b048(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Total number of recipients and values are not equal'
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + floor32(('cd', 4).length) + 129] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        continue 
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length > (-1 * ('cd', 4).length * dropUnitPrice) - 1:
        revert with 'NH{q', 17
    if msg.value < (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) + (('cd', 4).length * dropUnitPrice):
        revert with 0, 'Not enough ETH sent with transaction!'
    if ('cd', 4).length and dropUnitPrice > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if not address(cd[68]):
        call owner with:
           value ('cd', 4).length * dropUnitPrice wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value > (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) + (('cd', 4).length * dropUnitPrice):
            if msg.value < (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) + (('cd', 4).length * dropUnitPrice):
                revert with 'NH{q', 17
            call msg.sender with:
               value msg.value - (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) - (('cd', 4).length * dropUnitPrice) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        call owner with:
           value ('cd', 4).length * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call address(cd[68]) with:
           value ('cd', 4).length * dropUnitPrice / 2 wei
             gas 2300 * is_zero(value) wei
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 4).length * dropUnitPrice / 2
        emit CommissionPaid((('cd', 4).length * dropUnitPrice / 2), address(cd[68]));
        if msg.value > (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) + (('cd', 4).length * dropUnitPrice):
            if msg.value < (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) + (('cd', 4).length * dropUnitPrice):
                revert with 'NH{q', 17
            call msg.sender with:
               value msg.value - (s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length) - (('cd', 4).length * dropUnitPrice) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 140 len 20]:
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            if mem[(32 * idx) + floor32(('cd', 4).length) + 129] > 0:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit EthAirdrop(('cd', 4).length, s * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length * ('cd', 36).length, msg.sender);
    return 1
}



}
