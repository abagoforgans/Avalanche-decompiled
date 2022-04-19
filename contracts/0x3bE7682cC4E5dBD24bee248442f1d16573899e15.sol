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
    return bool(uint8(stor453[uint8(arg1)]))
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

function setWinner(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= 10001:
        revert with 0, 50
    uint256(stor453[0.03125 / arg2]) = 256^(arg2 % 32) or !(255 * 256^(arg2 % 32)) and uint256(stor453[0.03125 / arg2])
    if arg1 >= 450:
        revert with 0, 50
    winners[arg1] = arg2
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

function getWinners() {
    mem[96] = 450
    mem[64] = 14592
    mem[14528] = 0
    mem[14560] = 0
    mem[128] = 14528
    s = 128
    idx = 450
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[14528] = 0
        mem[14560] = 0
        mem[s + 32] = 14528
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 450:
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = winners[idx]
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
        require mem[_15] == mem[_15 + 12 len 20]
        mem[_11 + 32] = mem[_15 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _11
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _10 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _22 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_22 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _10 + (64 * _14) + -mem[64] + 64
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

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0xa2fb1175(?????) > uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0x05f8e707(?????):
            if unknown_0x2f48ab7d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return usdtAddress
            if uint32(call.func_hash) >> 224 != unknown_0x68cbce31(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                    require not msg.value
                    return owner
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg2 >= 10001:
                    revert with 0, 50
                uint256(stor453[0.03125 / arg2]) = 256^(arg2 % 32) or !(255 * 256^(arg2 % 32)) and uint256(stor453[0.03125 / arg2])
                if arg1 >= 450:
                    revert with 0, 50
                winners[arg1] = arg2
        else:
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
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _51 = mem[_49]
                require mem[_49] == mem[_49 + 12 len 20]
                mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_51)
                mem[mem[64] + 36] = ext_call.return_data[0] / 450
                require ext_code.size(usdtAddress)
                call usdtAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_51), ext_call.return_data[0] / 450
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    if unknown_0xa2fb1175(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 < 450
        return winners[arg1]
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
            return bool(uint8(stor453[uint8(arg1)]))
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
    mem[64] = 14624
    mem[14560] = 0
    mem[14592] = 0
    mem[160] = 14560
    s = 160
    idx = 450
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[14560] = 0
        mem[14592] = 0
        mem[s + 32] = 14560
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < 450:
        _57 = mem[64]
        mem[64] = mem[64] + 64
        mem[_57] = winners[idx]
        mem[mem[64] + 4] = winners[idx]
        require ext_code.size(sub_c02b9e5eAddress)
        staticcall sub_c02b9e5eAddress.minters(uint256 rg1) with:
                gas gas_remaining wei
               args winners[idx]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_61] == mem[_61 + 12 len 20]
        mem[_57 + 32] = mem[_61 + 12 len 20]
        if idx >= mem[128]:
            revert with 0, 50
        mem[(32 * idx) + 160] = _57
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _56 = mem[64]
    mem[mem[64]] = 32
    _60 = mem[128]
    mem[mem[64] + 32] = mem[128]
    idx = 0
    s = 160
    t = mem[64] + 64
    while idx < _60:
        _68 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_68 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _56 + (64 * _60) + -mem[64] + 64
}



}
