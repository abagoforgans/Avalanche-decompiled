contract main {




// =====================  Runtime code  =====================


address sub_49e6466dAddress;
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

function sub_49e6466d(?) {
    return sub_49e6466dAddress
}

function underlying() {
    return underlyingAddress
}

function _fallback() payable {
    revert
}

function withdraw() {
    if stor1:
        revert with 0, 'is wNative token'
    if balances[address(msg.sender)] <= 0:
        revert with 0, 'zero balance'
    balances[address(msg.sender)] = 0
    call underlyingAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_49e6466dAddress, 0
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
        _90 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = sub_49e6466dAddress
        staticcall underlyingAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args mem[mem[64] + 4], sub_49e6466dAddress
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _94 = mem[_93]
        require mem[_93] == mem[_93]
        if mem[_93]:
            mem[mem[64] + 4] = address(_90)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_90)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _98 = mem[_97]
            require mem[_97] == mem[_97]
            if _94 <= mem[_97]:
                if _94:
                    mem[mem[64] + 4] = address(_90)
                    mem[mem[64] + 36] = _94
                    mem[mem[64] + 68] = block.timestamp
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    call sub_49e6466dAddress.depositWithPermit(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, address arg7) with:
                         gas gas_remaining wei
                        args address(_90), _94, block.timestamp, 0, 0, 0, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _102 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_102] == mem[_102]
                    mem[0] = address(_90)
                    mem[32] = 2
                    if balances[address(_90)] > -_94 - 1:
                        revert with 'NH{q', 17
                    balances[address(_90)] += _94
                    if total > -_94 - 1:
                        revert with 'NH{q', 17
                    total += _94
                    call sub_49e6466dAddress.0x3ccfd60b with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _111 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_111] == mem[_111]
                    if stor1:
                        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _94
                        require ext_code.size(underlyingAddress)
                        call underlyingAddress.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _94
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(_90) with:
                           value _94 wei
                             gas gas_remaining wei
                        if return_data.size:
                            _124 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_124] = return_data.size
                            mem[_124 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            mem[0] = address(_90)
                            mem[32] = 2
                            if balances[address(_90)] < _94:
                                revert with 'NH{q', 17
                            balances[address(_90)] -= _94
            else:
                if mem[_97]:
                    mem[mem[64] + 4] = address(_90)
                    mem[mem[64] + 36] = _98
                    mem[mem[64] + 68] = block.timestamp
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = 0
                    mem[mem[64] + 164] = 0
                    mem[mem[64] + 196] = this.address
                    call sub_49e6466dAddress.depositWithPermit(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, address arg7) with:
                         gas gas_remaining wei
                        args address(_90), _98, block.timestamp, 0, 0, 0, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _104 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_104] == mem[_104]
                    mem[0] = address(_90)
                    mem[32] = 2
                    if balances[address(_90)] > -_98 - 1:
                        revert with 'NH{q', 17
                    balances[address(_90)] += _98
                    if total > -_98 - 1:
                        revert with 'NH{q', 17
                    total += _98
                    call sub_49e6466dAddress.0x3ccfd60b with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_114] == mem[_114]
                    if stor1:
                        mem[mem[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _98
                        require ext_code.size(underlyingAddress)
                        call underlyingAddress.0x2e1a7d4d with:
                             gas gas_remaining wei
                            args _98
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call address(_90) with:
                           value _98 wei
                             gas gas_remaining wei
                        if return_data.size:
                            _126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_126] = return_data.size
                            mem[_126 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if ext_call.success:
                            mem[0] = address(_90)
                            mem[32] = 2
                            if balances[address(_90)] < _98:
                                revert with 'NH{q', 17
                            balances[address(_90)] -= _98
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
