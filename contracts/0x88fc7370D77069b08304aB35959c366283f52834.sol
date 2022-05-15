contract main {




// =====================  Runtime code  =====================


#
#  - sub_12a11f33(?)
#  - _fallback()
#
address owner;
address stor1;
mapping of address stor3;
array of struct stor4;
address stor5;
address stor7;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVaultAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
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
        s = (32 * stor4.length) + 192
        t = 128
        while idx < stor4.length:
            mem[s] = mem[t + 12 len 20]
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
    s = mem[64] + 64
    t = 128
    while idx < stor4.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4.length) + -mem[64] + 192
}

function sub_a947f575(?) {
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
    require cd[68] == address(cd[68])
    mem[0] = msg.sender
    mem[32] = 3
    if not stor3[msg.sender]:
        revert with 0, 'Caller not in whiteList'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _24 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = cd[36]
        require ext_code.size(address(_24))
        call address(_24).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[68]), cd[36]
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

function sub_d3329cb9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg2.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + 132] = address(_2)
    mem[ceil32(arg2.length) + 164] = address(_3)
    mem[ceil32(arg2.length) + 196] = address(_4)
    mem[ceil32(arg2.length) + 228] = _5
    mem[ceil32(arg2.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg2.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg2.length) + 132] = _14
        mem[ceil32(arg2.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg2.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg2.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function elkCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function zeroCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function oliveCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function lydiaCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function canaryCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function baguetteCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function yetiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
}

function complusV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    _2 = mem[128]
    _3 = mem[160]
    _4 = mem[192]
    _5 = mem[224]
    _6 = mem[352]
    _7 = mem[384]
    _8 = mem[416]
    mem[ceil32(arg4.length) + 128] = 0xa718a900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg4.length) + 132] = address(_2)
    mem[ceil32(arg4.length) + 164] = address(_3)
    mem[ceil32(arg4.length) + 196] = address(_4)
    mem[ceil32(arg4.length) + 228] = _5
    mem[ceil32(arg4.length) + 260] = 0
    require ext_code.size(stor1)
    call stor1.liquidationCall(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args address(_2), address(_3), address(_4), _5, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[256]:
        revert with 'NH{q', 50
    if 1 == mem[256]:
        call _2 with:
             gas 1300000 wei
            args mem[288], _6
        if not ext_call.success:
            revert with 0, 'tf'
        call _2 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2 with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    else:
        _14 = mem[288]
        mem[ceil32(arg4.length) + 128] = 0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b
        mem[ceil32(arg4.length) + 132] = _14
        mem[ceil32(arg4.length) + 164] = _7
        call _2 with:
             gas 1300000 wei
            args _14, _7
        if not ext_call.success:
            revert with 0, 'tf'
        if 0 >= mem[256]:
            revert with 'NH{q', 50
        if 1 >= mem[256]:
            revert with 'NH{q', 50
        if address(_8) <= address(_2):
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args _6, 0, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args _6, 0, mem[320]
                revert with 'sf'
        else:
            call mem[288].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas 350000 wei
                args 0, _6, mem[320], 128, 0, mem[ceil32(arg4.length) + 293 len 63]
            if not ext_call.success:
                call mem[288].swap(uint256 arg1, uint256 arg2, address arg3) with:
                     gas 350000 wei
                    args 0, _6, mem[320]
                revert with 'sf'
        # ext_call.success
        call _2.0x70a08231 with:
             gas 15000 wei
            args this.address
        if ext_call.return_data[0] < 1:
            revert with 'NH{q', 17
        call _2.0xa9059cbb with:
             gas 1300000 wei
            args stor7, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with 0, 'tf'
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
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
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
        if mem[(32 * idx) + 140 len 20] != stor5:
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



}
