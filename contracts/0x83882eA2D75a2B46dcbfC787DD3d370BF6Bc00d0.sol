contract main {




// =====================  Runtime code  =====================


address routerAddress;
uint8 stor1; offset 160
address underlyingAddress;
mapping of uint256 balances;
uint256 total;

function sub_26fc3e51(?) {
    return bool(stor1)
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function total() {
    return total
}

function underlying() {
    return underlyingAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function depositVault(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 0
}

function withdraw() {
    if stor1:
        revert with 0, 'is wNative token'
    if balances[address(msg.sender)] <= 0:
        revert with 0, 'zero balance'
    balances[address(msg.sender)] = 0
    call underlyingAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call underlyingAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balances[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function launch(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _66 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = routerAddress
        staticcall underlyingAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args mem[mem[64] + 4], routerAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _70 = mem[_69]
        require mem[_69] == mem[_69]
        if mem[_69]:
            mem[mem[64] + 4] = address(_66)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_66)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _74 = mem[_73]
            require mem[_73] == mem[_73]
            if _70 <= mem[_73]:
                if _70:
                    mem[mem[64]] = 0x8d7d3eea00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_66)
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _70
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 0
                    require ext_code.size(routerAddress)
                    call routerAddress.anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
                         gas gas_remaining wei
                        args address(_66), address(this.address), address(this.address), _70, block.timestamp, 0, 0, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = address(_66)
                    mem[32] = 2
                    if balances[address(_66)] > -_70 - 1:
                        revert with 'NH{q', 17
                    balances[address(_66)] += _70
                    if total > -_70 - 1:
                        revert with 'NH{q', 17
                    total += _70
                    if stor1:
                        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _70
                        require ext_code.size(underlyingAddress)
                        call underlyingAddress.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _70
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(_66) with:
                           value _70 wei
                             gas gas_remaining wei
                        if return_data.size:
                            _88 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_88] = return_data.size
                            mem[_88 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            mem[0] = address(_66)
                            mem[32] = 2
                            if balances[address(_66)] < _70:
                                revert with 'NH{q', 17
                            balances[address(_66)] -= _70
            else:
                if mem[_73]:
                    mem[mem[64]] = 0x8d7d3eea00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_66)
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = _74
                    mem[mem[64] + 132] = block.timestamp
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = 0
                    mem[mem[64] + 228] = 0
                    mem[mem[64] + 260] = 0
                    require ext_code.size(routerAddress)
                    call routerAddress.anySwapOutUnderlyingWithPermit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8, uint256 arg9) with:
                         gas gas_remaining wei
                        args address(_66), address(this.address), address(this.address), _74, block.timestamp, 0, 0, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = address(_66)
                    mem[32] = 2
                    if balances[address(_66)] > -_74 - 1:
                        revert with 'NH{q', 17
                    balances[address(_66)] += _74
                    if total > -_74 - 1:
                        revert with 'NH{q', 17
                    total += _74
                    if stor1:
                        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _74
                        require ext_code.size(underlyingAddress)
                        call underlyingAddress.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _74
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(_66) with:
                           value _74 wei
                             gas gas_remaining wei
                        if return_data.size:
                            _90 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_90] = return_data.size
                            mem[_90 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            mem[0] = address(_66)
                            mem[32] = 2
                            if balances[address(_66)] < _74:
                                revert with 'NH{q', 17
                            balances[address(_66)] -= _74
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
