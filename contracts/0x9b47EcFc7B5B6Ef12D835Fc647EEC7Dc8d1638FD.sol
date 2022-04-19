contract main {




// =====================  Runtime code  =====================


address owner;
address sub_c02b9e5eAddress;
address usdtAddress;
array of uint256 winners;
array of uint8 stor453;

function usdt() {
    return usdtAddress
}

function owner() {
    return owner
}

function winners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 450
    return winners[arg1]
}

function sub_c02b9e5e(?) {
    return sub_c02b9e5eAddress
}

function isWon(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 10001
    return bool(stor453[uint8(arg1)])
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

function emergencyWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(usdtAddress)
    call usdtAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_05f8e707(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < 450:
        mem[mem[64] + 4] = winners[idx]
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                gas gas_remaining wei
               args winners[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        require mem[_15] == mem[_15 + 12 len 20]
        mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_16)
        mem[mem[64] + 36] = ext_call.return_data[0] / 450
        require ext_code.size(usdtAddress)
        call usdtAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(_16), ext_call.return_data[0] / 450
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getWinners() {
    mem[96] = 450
    mem[14528] = 0
    mem[14560] = 0
    mem[128] = 14528
    mem[64] = 14656
    mem[14592] = 0
    mem[14624] = 0
    mem[160] = 14592
    s = 160
    idx = 449
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[14592] = 0
        mem[14624] = 0
        mem[s + 32] = 14592
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 450:
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = winners[idx]
        mem[mem[64] + 4] = winners[idx]
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                gas gas_remaining wei
               args winners[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == mem[_16 + 12 len 20]
        mem[_12 + 32] = mem[_16 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _12
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _11 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _23 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_23 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _11 + (64 * _15) + -mem[64] + 64
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0xc02b9e5e(?????) > uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0x05f8e707(?????):
            if unknown_0x2f48ab7d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return usdtAddress
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0xa2fb1175(?????):
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 < 450
            return winners[arg1]
        require not msg.value
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[132] = this.address
        require ext_code.size(usdtAddress)
        staticcall usdtAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 128
        require return_data.size >= 32
        idx = 0
        while idx < 450:
            mem[mem[64] + 4] = winners[idx]
            require ext_code.size(sub_c02b9e5eAddress)
            staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                    gas gas_remaining wei
                   args winners[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _48 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _50 = mem[_48]
            require mem[_48] == mem[_48 + 12 len 20]
            mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_50)
            mem[mem[64] + 36] = ext_call.return_data[0] / 450
            require ext_code.size(usdtAddress)
            call usdtAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_50), ext_call.return_data[0] / 450
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if unknown_0xc02b9e5e(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return sub_c02b9e5eAddress
    if unknown_0xdb2e21bc(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        require ext_code.size(usdtAddress)
        staticcall usdtAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(usdtAddress)
        call usdtAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if uint32(call.func_hash) >> 224 != unknown_0xdf15c37e(?????):
        if unknown_0xe9c0932f(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 < 10001
            return bool(stor453[uint8(arg1)])
        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not address(arg1):
                revert with 0, 'Ownable: new owner is the zero address'
            owner = address(arg1)
            emit OwnershipTransferred(owner, address(arg1));
    require not msg.value
    mem[128] = 450
    mem[14560] = 0
    mem[14592] = 0
    mem[160] = 14560
    mem[64] = 14688
    mem[14624] = 0
    mem[14656] = 0
    mem[192] = 14624
    s = 192
    idx = 449
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[14624] = 0
        mem[14656] = 0
        mem[s + 32] = 14624
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 450:
        _56 = mem[64]
        mem[64] = mem[64] + 64
        mem[_56] = winners[idx]
        mem[mem[64] + 4] = winners[idx]
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                gas gas_remaining wei
               args winners[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_60] == mem[_60 + 12 len 20]
        mem[_56 + 32] = mem[_60 + 12 len 20]
        if idx >= mem[128]:
            revert with 0, 50
        mem[(32 * idx) + 160] = _56
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _55 = mem[64]
    mem[mem[64]] = 32
    _59 = mem[128]
    mem[mem[64] + 32] = mem[128]
    idx = 0
    s = 160
    t = mem[64] + 64
    while idx < _59:
        _67 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_67 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _55 + (64 * _59) + -mem[64] + 64
}



}
