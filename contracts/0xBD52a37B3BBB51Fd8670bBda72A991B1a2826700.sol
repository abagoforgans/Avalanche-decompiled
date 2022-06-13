contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address stor1;
address stor2;
mapping of address sub_3d4b8eba;
mapping of uint8 stor4;
mapping of uint8 stor5;

function sub_031534fb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[address(arg1)])
}

function sub_3d4b8eba(?) {
    return sub_3d4b8eba[address(msg.sender)]
}

function paused() {
    return bool(stor0)
}

function sub_5f009ce4(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor5[arg1[all]])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_99d1f337(?) {
    sub_3d4b8eba[address(msg.sender)] = 0
}

function sub_eb09d8ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_3d4b8eba[address(msg.sender)] = address(arg1)
}

function withdraw() payable {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setWithdrawer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function sub_1c019c55(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
}

function sub_ba8a60d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function removeFeeFree(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
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

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_99744d86(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function returnTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Unauthorised'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cb08056a(?) {
    require calldata.size - 4 >= 256
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
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 > test266151307() or floor32(('cd', 132).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == cd[164]
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    require cd[228] == uint8(cd[228])
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_3d4b8eba[address(cd[4])] != msg.sender:
        revert with 0, 'Unauthorised'
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ('cd', 196).length + 99] = 5
    if stor5[call.data[cd[196] + 36 len ('cd', 196).length]]:
        revert with 0, 'Duplicate transaction'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _445 = mem[128]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 103] = address(cd[4])
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 135] = this.address
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 167] = cd[100]
    require ext_code.size(address(_445))
    call address(_445).0x23b872dd with:
         gas gas_remaining wei
        args address(cd[4]), address(this.address), cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    mem[0] = mem[140 len 20]
    mem[32] = 4
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    if bool(stor4[mem[140 len 20]]) == 1:
        _458 = mem[160]
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
        require ext_code.size(address(_458))
        staticcall address(_458).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        while uint8(idx) < ('cd', 132).length:
            if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                revert with 'NH{q', 50
            _738 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
            _739 = mem[floor32(('cd', 36).length) + 97]
            if not mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 18
            if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _757 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 0 / mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 17
            if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == stor2:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _797 = mem[160]
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = address(_797)
                mem[mem[64] + 68] = _757 - (0 / _739)
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = this.address
                mem[mem[64] + 164] = block.timestamp + 120
                require ext_code.size(address(_738))
                call address(_738).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], address(_797), _757 - (0 / _739), 0, address(this.address), block.timestamp + 120
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                require mem[_859] == mem[_859]
                require mem[_859 + 32] == mem[_859 + 32]
            else:
                if block.timestamp > -121:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _757 - (0 / _739)
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 196
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 120
                require ext_code.size(address(_738))
                call address(_738).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _757 - (0 / _739), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _931 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _937 = mem[_931]
                require mem[_931] <= test266151307()
                require _931 + mem[_931] + 31 < _931 + return_data.size
                _939 = mem[_931 + mem[_931]]
                if mem[_931 + mem[_931]] > test266151307():
                    revert with 'NH{q', 65
                if _931 + ceil32(return_data.size) + floor32(mem[_931 + mem[_931]]) + 1 > test266151307() or floor32(mem[_931 + mem[_931]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _931 + ceil32(return_data.size) + floor32(mem[_931 + mem[_931]]) + 1
                mem[_931 + ceil32(return_data.size)] = _939
                require _937 + (32 * _939) + 32 <= return_data.size
                s = 0
                t = _931 + _937 + 32
                u = _931 + ceil32(return_data.size) + 32
                while s < _939:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _737 = mem[160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_737))
        staticcall address(_737).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _759 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _765 = mem[_759]
        require mem[_759] == mem[_759]
        if mem[_759] < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _825 = mem[160]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = _765 - ext_call.return_data[0]
        require ext_code.size(address(_825))
        call address(_825).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[4]), _765 - ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _837 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_837] == bool(mem[_837])
        if _765 - ext_call.return_data[0] < cd[164]:
            revert with 0, 'Failed'
        _847 = mem[64]
        mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
        mem[mem[64] + ('cd', 196).length] = 5
        stor[sha3(mem[mem[64] len _847 + ('cd', 196).length + -mem[64] + 32])] = 1
    else:
        mem[0] = mem[172 len 20]
        mem[32] = 4
        if bool(stor4[mem[172 len 20]]) == 1:
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _461 = mem[160]
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
            require ext_code.size(address(_461))
            staticcall address(_461).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            while uint8(idx) < ('cd', 132).length:
                if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                _741 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                _742 = mem[floor32(('cd', 36).length) + 97]
                if not mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 18
                if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                _758 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 0 / mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 17
                if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == stor2:
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _800 = mem[160]
                    if block.timestamp > -121:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = mem[140 len 20]
                    mem[mem[64] + 36] = address(_800)
                    mem[mem[64] + 68] = _758 - (0 / _742)
                    mem[mem[64] + 100] = 0
                    mem[mem[64] + 132] = this.address
                    mem[mem[64] + 164] = block.timestamp + 120
                    require ext_code.size(address(_741))
                    call address(_741).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], address(_800), _758 - (0 / _742), 0, address(this.address), block.timestamp + 120
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _860 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_860] == mem[_860]
                    require mem[_860 + 32] == mem[_860 + 32]
                else:
                    if block.timestamp > -121:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _758 - (0 / _742)
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = mem[96]
                    s = 0
                    t = 128
                    u = mem[64] + 196
                    while s < mem[96]:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 120
                    require ext_code.size(address(_741))
                    call address(_741).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args _758 - (0 / _742), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _932 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _938 = mem[_932]
                    require mem[_932] <= test266151307()
                    require _932 + mem[_932] + 31 < _932 + return_data.size
                    _940 = mem[_932 + mem[_932]]
                    if mem[_932 + mem[_932]] > test266151307():
                        revert with 'NH{q', 65
                    if _932 + ceil32(return_data.size) + floor32(mem[_932 + mem[_932]]) + 1 > test266151307() or floor32(mem[_932 + mem[_932]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _932 + ceil32(return_data.size) + floor32(mem[_932 + mem[_932]]) + 1
                    mem[_932 + ceil32(return_data.size)] = _940
                    require _938 + (32 * _940) + 32 <= return_data.size
                    s = 0
                    t = _932 + _938 + 32
                    u = _932 + ceil32(return_data.size) + 32
                    while s < _940:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _740 = mem[160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_740))
            staticcall address(_740).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _762 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _768 = mem[_762]
            require mem[_762] == mem[_762]
            if mem[_762] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _826 = mem[160]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _768 - ext_call.return_data[0]
            require ext_code.size(address(_826))
            call address(_826).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _768 - ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _838 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_838] == bool(mem[_838])
            if _768 - ext_call.return_data[0] < cd[164]:
                revert with 0, 'Failed'
            _852 = mem[64]
            mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
            mem[mem[64] + ('cd', 196).length] = 5
            stor[sha3(mem[mem[64] len _852 + ('cd', 196).length + -mem[64] + 32])] = 1
        else:
            if uint8(cd[228]) < 1:
                if cd[100] and 10 > -1 / cd[100]:
                    revert with 'NH{q', 17
                if not 10 * cd[100] / 10000:
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _477 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                    require ext_code.size(address(_477))
                    staticcall address(_477).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _898 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _899 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _921 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 10 * cd[100] / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == stor2:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _953 = mem[160]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[140 len 20]
                            mem[mem[64] + 36] = address(_953)
                            mem[mem[64] + 68] = _921 - (10 * cd[100] / 10000 / _899)
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            require ext_code.size(address(_898))
                            call address(_898).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_953), _921 - (10 * cd[100] / 10000 / _899), 0, address(this.address), block.timestamp + 120
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1033 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1033] == mem[_1033]
                            require mem[_1033 + 32] == mem[_1033 + 32]
                        else:
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            _959 = mem[64]
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _921 - (10 * cd[100] / 10000 / _899)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            _981 = mem[96]
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < _981:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_959 + 100] = this.address
                            mem[_959 + 132] = block.timestamp + 120
                            require ext_code.size(address(_898))
                            call address(_898).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _959 + (32 * _981) + -mem[64] + 192]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1091 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1095 = mem[_1091]
                            require mem[_1091] <= test266151307()
                            require _1091 + mem[_1091] + 31 < _1091 + return_data.size
                            _1099 = mem[_1091 + mem[_1091]]
                            if mem[_1091 + mem[_1091]] > test266151307():
                                revert with 'NH{q', 65
                            if _1091 + ceil32(return_data.size) + floor32(mem[_1091 + mem[_1091]]) + 1 > test266151307() or floor32(mem[_1091 + mem[_1091]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1091 + ceil32(return_data.size) + floor32(mem[_1091 + mem[_1091]]) + 1
                            mem[_1091 + ceil32(return_data.size)] = _1099
                            require _1095 + (32 * _1099) + 32 <= return_data.size
                            s = 0
                            t = _1091 + _1095 + 32
                            u = _1091 + ceil32(return_data.size) + 32
                            while s < _1099:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _897 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_897))
                    staticcall address(_897).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _926 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _933 = mem[_926]
                    require mem[_926] == mem[_926]
                    if mem[_926] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _971 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _933 - ext_call.return_data[0]
                    require ext_code.size(address(_971))
                    call address(_971).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _933 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _989 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_989] == bool(mem[_989])
                    if _933 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1007 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 5
                    stor[sha3(mem[mem[64] len _1007 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _471 = mem[128]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = 10 * cd[100] / 10000
                    require ext_code.size(address(_471))
                    call address(_471).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, 10 * cd[100] / 10000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _538 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                    require ext_code.size(address(_538))
                    staticcall address(_538).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _901 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _902 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _922 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < 10 * cd[100] / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == stor2:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _954 = mem[160]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[140 len 20]
                            mem[mem[64] + 36] = address(_954)
                            mem[mem[64] + 68] = _922 - (10 * cd[100] / 10000 / _902)
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            require ext_code.size(address(_901))
                            call address(_901).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_954), _922 - (10 * cd[100] / 10000 / _902), 0, address(this.address), block.timestamp + 120
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1034 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1034] == mem[_1034]
                            require mem[_1034 + 32] == mem[_1034 + 32]
                        else:
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _922 - (10 * cd[100] / 10000 / _902)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 120
                            require ext_code.size(address(_901))
                            call address(_901).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _922 - (10 * cd[100] / 10000 / _902), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1092 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1096 = mem[_1092]
                            require mem[_1092] <= test266151307()
                            require _1092 + mem[_1092] + 31 < _1092 + return_data.size
                            _1100 = mem[_1092 + mem[_1092]]
                            if mem[_1092 + mem[_1092]] > test266151307():
                                revert with 'NH{q', 65
                            if _1092 + ceil32(return_data.size) + floor32(mem[_1092 + mem[_1092]]) + 1 > test266151307() or floor32(mem[_1092 + mem[_1092]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1092 + ceil32(return_data.size) + floor32(mem[_1092 + mem[_1092]]) + 1
                            mem[_1092 + ceil32(return_data.size)] = _1100
                            require _1096 + (32 * _1100) + 32 <= return_data.size
                            s = 0
                            t = _1092 + _1096 + 32
                            u = _1092 + ceil32(return_data.size) + 32
                            while s < _1100:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _900 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_900))
                    staticcall address(_900).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _927 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _934 = mem[_927]
                    require mem[_927] == mem[_927]
                    if mem[_927] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _972 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _934 - ext_call.return_data[0]
                    require ext_code.size(address(_972))
                    call address(_972).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _934 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _990 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_990] == bool(mem[_990])
                    if _934 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1012 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 5
                    stor[sha3(mem[mem[64] len _1012 + ('cd', 196).length + -mem[64] + 32])] = 1
            else:
                if cd[100] and uint8(cd[228]) > -1 / cd[100]:
                    revert with 'NH{q', 17
                if not cd[100] * uint8(cd[228]) / 10000:
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _478 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = this.address
                    require ext_code.size(address(_478))
                    staticcall address(_478).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _904 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _905 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _923 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * uint8(cd[228]) / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == stor2:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _955 = mem[160]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[140 len 20]
                            mem[mem[64] + 36] = address(_955)
                            mem[mem[64] + 68] = _923 - (cd[100] * uint8(cd[228]) / 10000 / _905)
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            require ext_code.size(address(_904))
                            call address(_904).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_955), _923 - (cd[100] * uint8(cd[228]) / 10000 / _905), 0, address(this.address), block.timestamp + 120
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1035 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1035] == mem[_1035]
                            require mem[_1035 + 32] == mem[_1035 + 32]
                        else:
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _923 - (cd[100] * uint8(cd[228]) / 10000 / _905)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 120
                            require ext_code.size(address(_904))
                            call address(_904).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _923 - (cd[100] * uint8(cd[228]) / 10000 / _905), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1093 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1097 = mem[_1093]
                            require mem[_1093] <= test266151307()
                            require _1093 + mem[_1093] + 31 < _1093 + return_data.size
                            _1101 = mem[_1093 + mem[_1093]]
                            if mem[_1093 + mem[_1093]] > test266151307():
                                revert with 'NH{q', 65
                            if _1093 + ceil32(return_data.size) + floor32(mem[_1093 + mem[_1093]]) + 1 > test266151307() or floor32(mem[_1093 + mem[_1093]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1093 + ceil32(return_data.size) + floor32(mem[_1093 + mem[_1093]]) + 1
                            mem[_1093 + ceil32(return_data.size)] = _1101
                            require _1097 + (32 * _1101) + 32 <= return_data.size
                            s = 0
                            t = _1093 + _1097 + 32
                            u = _1093 + ceil32(return_data.size) + 32
                            while s < _1101:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _903 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_903))
                    staticcall address(_903).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _928 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _935 = mem[_928]
                    require mem[_928] == mem[_928]
                    if mem[_928] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _973 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _935 - ext_call.return_data[0]
                    require ext_code.size(address(_973))
                    call address(_973).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _935 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _991 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_991] == bool(mem[_991])
                    if _935 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1017 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 5
                    stor[sha3(mem[mem[64] len _1017 + ('cd', 196).length + -mem[64] + 32])] = 1
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _472 = mem[128]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 103] = stor1
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 135] = cd[100] * uint8(cd[228]) / 10000
                    require ext_code.size(address(_472))
                    call address(_472).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, cd[100] * uint8(cd[228]) / 10000
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 1 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    _539 = mem[160]
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 103] = this.address
                    require ext_code.size(address(_539))
                    staticcall address(_539).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (2 * ceil32(return_data.size)) + 99] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 132).length) + (4 * ceil32(return_data.size)) + 99
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    idx = 0
                    while uint8(idx) < ('cd', 132).length:
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                            revert with 'NH{q', 50
                        _907 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                        _908 = mem[floor32(('cd', 36).length) + 97]
                        if not mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 18
                        if uint8(idx) >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        _924 = mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129]
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + 129] < cd[100] * uint8(cd[228]) / 10000 / mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 17
                        if mem[(32 * uint8(idx)) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 142 len 20] == stor2:
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            if 1 >= mem[96]:
                                revert with 'NH{q', 50
                            _956 = mem[160]
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[140 len 20]
                            mem[mem[64] + 36] = address(_956)
                            mem[mem[64] + 68] = _924 - (cd[100] * uint8(cd[228]) / 10000 / _908)
                            mem[mem[64] + 100] = 0
                            mem[mem[64] + 132] = this.address
                            mem[mem[64] + 164] = block.timestamp + 120
                            require ext_code.size(address(_907))
                            call address(_907).swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_956), _924 - (cd[100] * uint8(cd[228]) / 10000 / _908), 0, address(this.address), block.timestamp + 120
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1036 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            require mem[_1036] == mem[_1036]
                            require mem[_1036 + 32] == mem[_1036 + 32]
                        else:
                            if block.timestamp > -121:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _924 - (cd[100] * uint8(cd[228]) / 10000 / _908)
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = mem[96]
                            s = 0
                            t = 128
                            u = mem[64] + 196
                            while s < mem[96]:
                                mem[u] = mem[t + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 120
                            require ext_code.size(address(_907))
                            call address(_907).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _924 - (cd[100] * uint8(cd[228]) / 10000 / _908), 0, 160, address(this.address), block.timestamp + 120, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1094 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1098 = mem[_1094]
                            require mem[_1094] <= test266151307()
                            require _1094 + mem[_1094] + 31 < _1094 + return_data.size
                            _1102 = mem[_1094 + mem[_1094]]
                            if mem[_1094 + mem[_1094]] > test266151307():
                                revert with 'NH{q', 65
                            if _1094 + ceil32(return_data.size) + floor32(mem[_1094 + mem[_1094]]) + 1 > test266151307() or floor32(mem[_1094 + mem[_1094]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _1094 + ceil32(return_data.size) + floor32(mem[_1094 + mem[_1094]]) + 1
                            mem[_1094 + ceil32(return_data.size)] = _1102
                            require _1098 + (32 * _1102) + 32 <= return_data.size
                            s = 0
                            t = _1094 + _1098 + 32
                            u = _1094 + ceil32(return_data.size) + 32
                            while s < _1102:
                                require mem[t] == mem[t]
                                mem[u] = mem[t]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        continue 
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _906 = mem[160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_906))
                    staticcall address(_906).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _929 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _936 = mem[_929]
                    require mem[_929] == mem[_929]
                    if mem[_929] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _974 = mem[160]
                    mem[mem[64] + 4] = address(cd[4])
                    mem[mem[64] + 36] = _936 - ext_call.return_data[0]
                    require ext_code.size(address(_974))
                    call address(_974).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[4]), _936 - ext_call.return_data[0]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _992 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_992] == bool(mem[_992])
                    if _936 - ext_call.return_data[0] < cd[164]:
                        revert with 0, 'Failed'
                    _1022 = mem[64]
                    mem[mem[64] len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
                    mem[mem[64] + ('cd', 196).length] = 5
                    stor[sha3(mem[mem[64] len _1022 + ('cd', 196).length + -mem[64] + 32])] = 1
}



}
