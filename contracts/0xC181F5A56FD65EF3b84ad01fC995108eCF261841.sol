contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
mapping of address stor3;
array of struct stor4;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_911487a6(?) {
    if not stor3[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    mem[64] = (32 * stor4.length) + 128
    mem[96] = stor4.length
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        idx = 0
        s = 128
        t = (32 * stor4.length) + 192
        while idx < stor4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 128] = 32
    mem[(32 * stor4.length) + 160] = stor4.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_3c046960(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _24 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = stor2
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(address(_24))
        call address(_24).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor2, cd[36]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_cabb9212(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stor4.length:
        mem[0] = stor4[idx].field_0
        mem[32] = 3
        stor3[stor4[idx].field_0] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor4.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            stor4[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_c074cfd7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    if not stor3[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 'NH{q', 17
    if stor1 == address(arg1):
        if ext_call.return_data[0] - arg2 >= 0:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call address(arg4) with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    else:
        if ext_call.return_data[0] - arg2 >= 0:
            mem[ceil32(return_data.size) + 128] = address(arg1)
            mem[ceil32(return_data.size) + 160] = stor1
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = arg2
            mem[ceil32(return_data.size) + 228] = arg3
            mem[ceil32(return_data.size) + 260] = 160
            mem[ceil32(return_data.size) + 356] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 292] = address(arg4)
            mem[ceil32(return_data.size) + 324] = block.timestamp + 30
            require ext_code.size(stor2)
            call stor2.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, arg3, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(arg4), block.timestamp + 30
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 223
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 193 > test266151307():
                revert with 'NH{q', 65
            require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
}

function sub_a1ee5fbb(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _65 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_65))
        staticcall address(_65).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0 == cd[68]:
            _71 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _73 = mem[_71]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = _73
            require ext_code.size(address(_65))
            call address(_65).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[36]), _73
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_80] == bool(mem[_80])
        else:
            _70 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[68] <= mem[_70]:
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(address(_65))
                call address(_65).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_81] == bool(mem[_81])
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_65))
                staticcall address(_65).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _85 = mem[_82]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = _85
                require ext_code.size(address(_65))
                call address(_65).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[36]), _85
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _88 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_88] == bool(mem[_88])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if eth.balance(this.address):
        call address(cd[36]) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_4c9a1fb8(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _90 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_90))
        staticcall address(_90).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _94 = mem[_93]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 140 len 20] != stor1:
            if not ('cd', 36).length:
                revert with 'NH{q', 18
            s = 0
            while s < ('cd', 36).length:
                if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 141 len 20]
                mem[mem[64] + 36] = _94 / ('cd', 36).length
                require ext_code.size(address(_90))
                call address(_90).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _94 / ('cd', 36).length
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_125] == bool(mem[_125])
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _94 / ('cd', 36).length
            continue 
        if mem[_93] < cd[68]:
            revert with 'NH{q', 17
        if not ('cd', 36).length:
            revert with 'NH{q', 18
        s = 0
        while s < ('cd', 36).length:
            if s >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 141 len 20]
            mem[mem[64] + 36] = _94 - cd[68] / ('cd', 36).length
            require ext_code.size(address(_90))
            call address(_90).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _94 - cd[68] / ('cd', 36).length
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_126] == bool(mem[_126])
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _94 - cd[68] / ('cd', 36).length
        continue 
    if eth.balance(this.address):
        if not ('cd', 36).length:
            revert with 'NH{q', 18
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20] with:
               value eth.balance(this.address) / ('cd', 36).length wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x911487a6(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3c046960(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = ceil32(32 * ('cd', 4).length) + 129
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                idx = cd[4] + 36
                s = 160
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                mem[0] = msg.sender
                mem[32] = 3
                if not stor3[msg.sender]:
                    revert with 0, 'Caller not in whiteList'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[128]:
                        revert with 'NH{q', 50
                    _229 = mem[(32 * idx) + 160]
                    mem[mem[64] + 4] = stor2
                    mem[mem[64] + 36] = cd[36]
                    require ext_code.size(address(_229))
                    call address(_229).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor2, cd[36]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _242 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_242] == bool(mem[_242])
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x4c9a1fb8(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x715018a6(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                        require not msg.value
                        return owner
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 'NH{q', 65
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = cd[4] + 36
                    s = 160
                    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require cd[36] <= test266151307()
                    require calldata.size > cd[36] + 35
                    if ('cd', 36).length > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
                    mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    s = ceil32(32 * ('cd', 4).length) + 161
                    idx = cd[36] + 36
                    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 'NH{q', 50
                        _308 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_308))
                        staticcall address(_308).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _319 = mem[_317]
                        if idx >= mem[128]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 172 len 20] != stor1:
                            if not ('cd', 36).length:
                                revert with 'NH{q', 18
                            s = 0
                            while s < ('cd', 36).length:
                                if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 173 len 20]
                                mem[mem[64] + 36] = _319 / ('cd', 36).length
                                require ext_code.size(address(_308))
                                call address(_308).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], _319 / ('cd', 36).length
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _351 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_351] == bool(mem[_351])
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                continue 
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _319 / ('cd', 36).length
                            continue 
                        if mem[_317] < cd[68]:
                            revert with 'NH{q', 17
                        if not ('cd', 36).length:
                            revert with 'NH{q', 18
                        s = 0
                        while s < ('cd', 36).length:
                            if s >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 'NH{q', 50
                            mem[mem[64] + 4] = mem[(32 * s) + ceil32(32 * ('cd', 4).length) + 173 len 20]
                            mem[mem[64] + 36] = _319 - cd[68] / ('cd', 36).length
                            require ext_code.size(address(_308))
                            call address(_308).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _319 - cd[68] / ('cd', 36).length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_352] == bool(mem[_352])
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            continue 
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _319 - cd[68] / ('cd', 36).length
                        continue 
                    if eth.balance(this.address):
                        if not ('cd', 36).length:
                            revert with 'NH{q', 18
                        idx = 0
                        while idx < ('cd', 36).length:
                            if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 'NH{q', 50
                            call mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 173 len 20] with:
                               value eth.balance(this.address) / ('cd', 36).length wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
        else:
            if unknown_0xc074cfd7(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x911487a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not stor3[msg.sender]:
                        revert with 0, 'Caller not in whiteList'
                    mem[64] = (32 * stor4.length) + 160
                    mem[128] = stor4.length
                    if not stor4.length:
                        mem[(32 * stor4.length) + 160] = 32
                        mem[(32 * stor4.length) + 192] = stor4.length
                        idx = 0
                        s = 160
                        t = (32 * stor4.length) + 224
                        while idx < stor4.length:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from (32 * stor4.length) + 160
                           len (96 * stor4.length) + 64
                    mem[160] = address(stor4.field_0)
                    idx = 160
                    s = 0
                    while (32 * stor4.length) + 128 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(32 * stor4.length) + 160] = 32
                    mem[(32 * stor4.length) + 192] = stor4.length
                    idx = 0
                    s = 160
                    t = mem[64] + 64
                    while idx < stor4.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len (64 * stor4.length) + -mem[64] + 224
                if unknown_0xa1ee5fbb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = ceil32(32 * ('cd', 4).length) + 129
                    mem[128] = ('cd', 4).length
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    idx = cd[4] + 36
                    s = 160
                    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    require cd[36] == address(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[128]:
                            revert with 'NH{q', 50
                        _233 = mem[(32 * idx) + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_233))
                        staticcall address(_233).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 == cd[68]:
                            _258 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _265 = mem[_258]
                            mem[mem[64] + 4] = address(cd[36])
                            mem[mem[64] + 36] = _265
                            require ext_code.size(address(_233))
                            call address(_233).0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(cd[36]), _265
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _274 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_274] == bool(mem[_274])
                        else:
                            _253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if cd[68] <= mem[_253]:
                                mem[mem[64] + 4] = address(cd[36])
                                mem[mem[64] + 36] = cd[68]
                                require ext_code.size(address(_233))
                                call address(_233).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _277 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_277] == bool(mem[_277])
                            else:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(_233))
                                staticcall address(_233).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _278 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _285 = mem[_278]
                                mem[mem[64] + 4] = address(cd[36])
                                mem[mem[64] + 36] = _285
                                require ext_code.size(address(_233))
                                call address(_233).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), _285
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _288 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_288] == bool(mem[_288])
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if eth.balance(this.address):
                        call address(cd[36]) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xc074cfd7(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xcabb9212(?????):
                        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            emit OwnershipTransferred(owner, address(cd[4]));
                            owner = address(cd[4])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 'NH{q', 65
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        idx = cd[4] + 36
                        s = 160
                        while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                            require cd[idx] == address(cd[idx])
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        idx = 0
                        while idx < stor4.length:
                            mem[0] = stor4[idx].field_0
                            mem[32] = 3
                            stor3[stor4[idx].field_0] = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            if idx >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            mem[0] = mem[(32 * idx) + 172 len 20]
                            mem[32] = 3
                            stor3[mem[(32 * idx) + 172 len 20]] = mem[(32 * idx) + 172 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                        stor4.length = ('cd', 4).length
                        if not ('cd', 4).length:
                            idx = 0
                            while stor4.length > idx:
                                stor4[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        else:
                            s = 0
                            idx = 160
                            while (32 * ('cd', 4).length) + 160 > idx:
                                stor4[s].field_0 = mem[idx + 12 len 20]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
                            while stor4.length > idx:
                                stor4[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[100] == address(cd[100])
                    if not stor3[msg.sender]:
                        revert with 0, 'Caller not in whiteList'
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < cd[36]:
                        revert with 'NH{q', 17
                    if stor1 == address(cd[4]):
                        if ext_call.return_data[0] - cd[36] >= 0:
                            require ext_code.size(stor1)
                            call stor1.withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args cd[36]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call address(cd[100]) with:
                               value cd[36] wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if ext_call.return_data[0] - cd[36] >= 0:
                            mem[ceil32(return_data.size) + 160] = address(cd[4])
                            mem[ceil32(return_data.size) + 192] = stor1
                            if 30 > !block.timestamp:
                                revert with 'NH{q', 17
                            mem[ceil32(return_data.size) + 224] = 0x676528d100000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = cd[36]
                            mem[ceil32(return_data.size) + 260] = cd[68]
                            mem[ceil32(return_data.size) + 292] = 160
                            mem[ceil32(return_data.size) + 388] = 2
                            idx = 0
                            s = ceil32(return_data.size) + 160
                            t = ceil32(return_data.size) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(return_data.size) + 324] = address(cd[100])
                            mem[ceil32(return_data.size) + 356] = block.timestamp + 30
                            require ext_code.size(stor2)
                            call stor2.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args cd[36], cd[68], Array(len=2, data=mem[ceil32(return_data.size) + 420 len 64]), address(cd[100]), block.timestamp + 30
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
                            require ceil32(return_data.size) + return_data.size + 224 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 255
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 225 > test266151307():
                                revert with 'NH{q', 65
                            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, cd[36]) >> 32 + 224]) + 32 <= return_data.size
}



}
