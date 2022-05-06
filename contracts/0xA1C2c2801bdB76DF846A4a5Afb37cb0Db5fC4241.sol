contract main {




// =====================  Runtime code  =====================


#
#  - sub_a31808b1(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function sub_4be5d6a2(?) {
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_f31167d0(?) {
    if stor0 != msg.sender:
        return 0
    return 1
}

function transfer_ownership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    stor0 = arg1
    emit OwnershipTransferred(stor0, arg1);
    return 1
}

function sub_0eb8d896(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    if arg1:
        call stor0 with:
           value arg1 wei
             gas gas_remaining wei
    else:
        call stor0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send avax'
}

function borrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor2)
    call stor2.0xc5ebeaec with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_1f911393(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor3)
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return arg1
}

function sub_4c55c257(?) {
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor1)
    staticcall stor1.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function sub_991539fe(?) {
    require ext_code.size(stor2)
    staticcall stor2.getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function claim(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    mem[128] = stor2
    mem[160] = 0x744532ae00000000000000000000000000000000000000000000000000000000
    mem[164] = arg1
    idx = 0
    s = 128
    t = 292
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor1)
    call stor1.claimReward(uint8 arg1, address arg2, address[] arg3) with:
         gas gas_remaining wei
        args arg1 << 248, address(this.address), Array(len=1, data=mem[292])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor2)
    if arg1:
        call stor2.0xdb006a75 with:
             gas gas_remaining wei
            args arg1
    else:
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.0xdb006a75 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function redeemUnderlying(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor2)
    if arg1:
        call stor2.0x852a12e3 with:
             gas gas_remaining wei
            args arg1
    else:
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.0xdb006a75 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function repay(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor2)
    if arg1:
        call stor2.repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
    else:
        call stor2.borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function supply(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    if arg1:
        require ext_code.size(stor2)
        call stor2.mint(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
    else:
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(stor2)
        call stor2.mint(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_6e1e1028(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(address(arg2))
    if arg1:
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, arg1
    else:
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed to send token'
}

function sub_13c3d0ee(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == uint32(cd[68])
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    if cd[4]:
        if cd[4] <= 0:
            revert with 0, 'amount<=0'
        idx = 0
        s = cd[4]
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _160 = mem[(32 * idx) + 128]
            if stor0 != msg.sender:
                revert with 0, 'not owner'
            mem[mem[64] + 4] = s
            require ext_code.size(stor2)
            call stor2.mint(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_173] == mem[_173]
            if not uint32(cd[68]):
                if s and _160 > -1 / s:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = s * _160
                require ext_code.size(stor2)
                call stor2.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _160)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_186] == mem[_186]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _160
                continue 
            if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                if 10^uint32(cd[68]) > -1:
                    revert with 'NH{q', 17
                if s and _160 > -1 / s:
                    revert with 'NH{q', 17
                if not 10^uint32(cd[68]):
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = s * _160 / 10^uint32(cd[68])
                require ext_code.size(stor2)
                call stor2.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _160 / 10^uint32(cd[68]))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_194] == mem[_194]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _160 / 10^uint32(cd[68])
                continue 
            u = 10
            v = 1
            t = uint32(cd[68])
            while t > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = v * u
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 'NH{q', 17
            if s and _160 > -1 / s:
                revert with 'NH{q', 17
            if not v * u:
                revert with 'NH{q', 18
            mem[mem[64] + 4] = s * _160 / v * u
            require ext_code.size(stor2)
            call stor2.0xc5ebeaec with:
                 gas gas_remaining wei
                args (s * _160 / v * u)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_224] == mem[_224]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s * _160 / v * u
            continue 
        mem[mem[64] + 4] = s
        require ext_code.size(stor2)
        call stor2.mint(uint256 arg1) with:
             gas gas_remaining wei
            args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_168] == mem[_168]
    else:
        mem[floor32(('cd', 36).length) + 101] = this.address
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'amount<=0'
        idx = 0
        s = mem[floor32(('cd', 36).length) + 97]
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _161 = mem[(32 * idx) + 128]
            if stor0 != msg.sender:
                revert with 0, 'not owner'
            mem[mem[64] + 4] = s
            require ext_code.size(stor2)
            call stor2.mint(uint256 arg1) with:
                 gas gas_remaining wei
                args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_176] == mem[_176]
            if not uint32(cd[68]):
                if s and _161 > -1 / s:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = s * _161
                require ext_code.size(stor2)
                call stor2.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _161)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_187] == mem[_187]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _161
                continue 
            if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                if 10^uint32(cd[68]) > -1:
                    revert with 'NH{q', 17
                if s and _161 > -1 / s:
                    revert with 'NH{q', 17
                if not 10^uint32(cd[68]):
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = s * _161 / 10^uint32(cd[68])
                require ext_code.size(stor2)
                call stor2.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _161 / 10^uint32(cd[68]))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _195 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_195] == mem[_195]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _161 / 10^uint32(cd[68])
                continue 
            u = 10
            v = 1
            t = uint32(cd[68])
            while t > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = v * u
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 'NH{q', 17
            if s and _161 > -1 / s:
                revert with 'NH{q', 17
            if not v * u:
                revert with 'NH{q', 18
            mem[mem[64] + 4] = s * _161 / v * u
            require ext_code.size(stor2)
            call stor2.0xc5ebeaec with:
                 gas gas_remaining wei
                args (s * _161 / v * u)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_225] == mem[_225]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s * _161 / v * u
            continue 
        mem[mem[64] + 4] = s
        require ext_code.size(stor2)
        call stor2.mint(uint256 arg1) with:
             gas gas_remaining wei
            args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_169] == mem[_169]
}

function sub_611aaf5a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == bool(arg2)
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    if uint32(arg1) > 100:
        revert with 0, 'min_factor must <= 100'
    if not arg2:
        mem[100] = this.address
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'not enough governance token'
        mem[ceil32(return_data.size) + 96] = 3
        mem[ceil32(return_data.size) + 128] = 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5
        mem[ceil32(return_data.size) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(return_data.size) + 192] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        if block.timestamp > -16:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 224] = 3
        mem[ceil32(return_data.size) + 256 len 96] = call.data[calldata.size len 96]
        mem[ceil32(return_data.size) + 356] = stor5
        mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 388] = 64
        mem[(2 * ceil32(return_data.size)) + 420] = 3
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (2 * ceil32(return_data.size)) + 452
        while idx < mem[ceil32(return_data.size) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _84 = mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
        _85 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 353
        mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require _84 + (32 * _85) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _84 + 384
        t = (4 * ceil32(return_data.size)) + 384
        while idx < _85:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 2 >= _85:
            revert with 'NH{q', 50
        _151 = mem[(4 * ceil32(return_data.size)) + 448]
        if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
            revert with 'NH{q', 17
        _156 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _151 * uint32(arg1) / 100
        mem[mem[64] + 68] = 160
        _159 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _159:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_156 + 100] = this.address
        mem[_156 + 132] = block.timestamp + 15
        require ext_code.size(stor5)
        call stor5.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _156 + (32 * _159) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _197 = mem[_196]
        require mem[_196] <= test266151307()
        require _196 + mem[_196] + 31 < _196 + return_data.size
        _199 = mem[_196 + mem[_196]]
        if mem[_196 + mem[_196]] > test266151307():
            revert with 'NH{q', 65
        if _196 + ceil32(return_data.size) + floor32(mem[_196 + mem[_196]]) + 1 > test266151307() or floor32(mem[_196 + mem[_196]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _196 + ceil32(return_data.size) + floor32(mem[_196 + mem[_196]]) + 1
        mem[_196 + ceil32(return_data.size)] = _199
        require _197 + (32 * _199) + 32 <= return_data.size
        idx = 0
        s = _196 + _197 + 32
        t = _196 + ceil32(return_data.size) + 32
        while idx < _199:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if uint32(arg1) > 100:
            revert with 0, 'min_factor must <= 100'
        mem[96] = 1
        mem[128] = stor2
        mem[160] = 0x744532ae00000000000000000000000000000000000000000000000000000000
        mem[164] = 0
        mem[196] = this.address
        mem[228] = 96
        mem[260] = 1
        idx = 0
        s = 128
        t = 292
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        call stor1.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args 0, address(this.address), 96, 1, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[164] = this.address
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'not enough governance token'
        mem[ceil32(return_data.size) + 160] = 3
        mem[ceil32(return_data.size) + 192] = 0x8729438eb15e2c8b576fcc6aecda6a148776c0f5
        mem[ceil32(return_data.size) + 224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[ceil32(return_data.size) + 256] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        if block.timestamp > -16:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 288] = 3
        mem[ceil32(return_data.size) + 320 len 96] = call.data[calldata.size len 96]
        mem[ceil32(return_data.size) + 420] = stor5
        mem[ceil32(return_data.size) + 452] = ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor5, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 420] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 452] = 64
        mem[(2 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = ceil32(return_data.size) + 192
        t = (2 * ceil32(return_data.size)) + 516
        while idx < mem[ceil32(return_data.size) + 160]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 484 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _153 = mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 447 < (2 * ceil32(return_data.size)) + return_data.size + 416
        _154 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 417 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 417
        mem[(4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]
        require _153 + (32 * _154) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _153 + 448
        t = (4 * ceil32(return_data.size)) + 448
        while idx < _154:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 2 >= _154:
            revert with 'NH{q', 50
        _194 = mem[(4 * ceil32(return_data.size)) + 512]
        if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
            revert with 'NH{q', 17
        _198 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = _194 * uint32(arg1) / 100
        mem[mem[64] + 68] = 160
        _201 = mem[ceil32(return_data.size) + 160]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
        idx = 0
        s = ceil32(return_data.size) + 192
        t = mem[64] + 196
        while idx < _201:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_198 + 100] = this.address
        mem[_198 + 132] = block.timestamp + 15
        require ext_code.size(stor5)
        call stor5.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _198 + (32 * _201) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _233 = mem[_232]
        require mem[_232] <= test266151307()
        require _232 + mem[_232] + 31 < _232 + return_data.size
        _234 = mem[_232 + mem[_232]]
        if mem[_232 + mem[_232]] > test266151307():
            revert with 'NH{q', 65
        if _232 + ceil32(return_data.size) + floor32(mem[_232 + mem[_232]]) + 1 > test266151307() or floor32(mem[_232 + mem[_232]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _232 + ceil32(return_data.size) + floor32(mem[_232 + mem[_232]]) + 1
        mem[_232 + ceil32(return_data.size)] = _234
        require _233 + (32 * _234) + 32 <= return_data.size
        idx = 0
        s = _232 + _233 + 32
        t = _232 + ceil32(return_data.size) + 32
        while idx < _234:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function sub_5cfe8f0d(?) {
    require calldata.size - 4 >= 192
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint32(cd[36])
    require cd[68] == uint32(cd[68])
    require cd[100] == uint32(cd[100])
    require cd[132] == bool(cd[132])
    require cd[164] == cd[164]
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor2)
    call stor2.exchangeRateCurrent() with:
         gas gas_remaining wei
    mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if uint32(cd[68]) and ext_call.return_data[0] > -1 / uint32(cd[68]):
        revert with 'NH{q', 17
    if uint32(cd[68]) * ext_call.return_data[0] <= 0:
        revert with 0, 'ExchangeRate == 0 or colateral == 0'
    if uint32(cd[36]) > -uint32(cd[100]) + test266151307():
        revert with 'NH{q', 17
    if not uint32(uint32(cd[36]) + uint32(cd[100])):
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2)
            call stor2.borrowBalanceCurrent(address arg1) with:
                 gas gas_remaining wei
                args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _937 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _939 = mem[_937]
            require mem[_937] == mem[_937]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _953 = mem[(32 * idx) + 128]
                if uint32(cd[68]) * ext_call.return_data[0] and mem[(32 * idx) + 128] > -1 / uint32(cd[68]) * ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if mem[_937] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not uint32(cd[68]) * ext_call.return_data[0] * mem[(32 * idx) + 128]:
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1000 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1015 = mem[_1000]
                require mem[_1000] == mem[_1000]
                if mem[_1000] < 10^18 * _939 / uint32(cd[68]) * ext_call.return_data[0] * _953:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = mem[_1000] - (10^18 * _939 / uint32(cd[68]) * ext_call.return_data[0] * _953)
                require ext_code.size(stor2)
                call stor2.0xdb006a75 with:
                     gas gas_remaining wei
                    args (_1015 - (10^18 * _939 / uint32(cd[68]) * ext_call.return_data[0] * _953))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1148] == mem[_1148]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if mem[96] - 1 != idx:
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    if mem[96] - 1 != idx:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1331 = mem[_1291]
                        require mem[_1291] == mem[_1291]
                        mem[mem[64] + 4] = mem[_1291]
                        require ext_code.size(stor2)
                        call stor2.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args _1331
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1572] == mem[_1572]
                    else:
                        if not cd[132]:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1309 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1338 = mem[_1309]
                            require mem[_1309] == mem[_1309]
                            mem[mem[64] + 4] = mem[_1309]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1338
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1593 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1593] == mem[_1593]
                        else:
                            require ext_code.size(stor2)
                            call stor2.borrowBalanceCurrent(address arg1) with:
                                 gas gas_remaining wei
                                args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1339 = mem[_1310]
                            require mem[_1310] == mem[_1310]
                            mem[mem[64] + 4] = mem[_1310]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1339
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1594 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1594] == mem[_1594]
                else:
                    if cd[132]:
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = this.address
                        if mem[96] - 1 != idx:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1340 = mem[_1311]
                            require mem[_1311] == mem[_1311]
                            mem[mem[64] + 4] = mem[_1311]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1340
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1595 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1595] == mem[_1595]
                        else:
                            if not cd[132]:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1322 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1351 = mem[_1322]
                                require mem[_1322] == mem[_1322]
                                mem[mem[64] + 4] = mem[_1322]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1351
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1613 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1613] == mem[_1613]
                            else:
                                require ext_code.size(stor2)
                                call stor2.borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1323 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1352 = mem[_1323]
                                require mem[_1323] == mem[_1323]
                                mem[mem[64] + 4] = mem[_1323]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1352
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1614 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1614] == mem[_1614]
            else:
                if cd[164] > 0:
                    mem[mem[64] + 4] = cd[164]
                    require ext_code.size(stor2)
                    call stor2.0x852a12e3 with:
                         gas gas_remaining wei
                        args cd[164]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _971 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_971] == mem[_971]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 != idx:
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = this.address
                        if mem[96] - 1 != idx:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1055 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1074 = mem[_1055]
                            require mem[_1055] == mem[_1055]
                            mem[mem[64] + 4] = mem[_1055]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1074
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1168 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1168] == mem[_1168]
                        else:
                            if not cd[132]:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1063 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1082 = mem[_1063]
                                require mem[_1063] == mem[_1063]
                                mem[mem[64] + 4] = mem[_1063]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1082
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1177 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1177] == mem[_1177]
                            else:
                                require ext_code.size(stor2)
                                call stor2.borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1064 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1083 = mem[_1064]
                                require mem[_1064] == mem[_1064]
                                mem[mem[64] + 4] = mem[_1064]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1083
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1178 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1178] == mem[_1178]
                    else:
                        if cd[132]:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = this.address
                            if mem[96] - 1 != idx:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1065 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1084 = mem[_1065]
                                require mem[_1065] == mem[_1065]
                                mem[mem[64] + 4] = mem[_1065]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1084
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1179 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1179] == mem[_1179]
                            else:
                                if not cd[132]:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1068 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1094 = mem[_1068]
                                    require mem[_1068] == mem[_1068]
                                    mem[mem[64] + 4] = mem[_1068]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1094
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1182 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1182] == mem[_1182]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1069 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1095 = mem[_1069]
                                    require mem[_1069] == mem[_1069]
                                    mem[mem[64] + 4] = mem[_1069]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1095
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1183 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1183] == mem[_1183]
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _958 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _962 = mem[_958]
                    require mem[_958] == mem[_958 + 31 len 1]
                    if not mem[_958 + 31 len 1]:
                        if _939 and 1 > -1 / _939:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        require ext_code.size(stor3)
                        staticcall stor3.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1001 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1016 = mem[_1001]
                        require mem[_1001] == mem[_1001 + 31 len 1]
                        if mem[_1001 + 31 len 1] and 2 > 255 / mem[_1001 + 31 len 1]:
                            revert with 'NH{q', 17
                        if 2 * mem[_1001] % 128 < 2:
                            revert with 'NH{q', 17
                        if not uint8((2 * mem[_1001] % 128) - 2):
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if _939 / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = (_939 / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                            require ext_code.size(stor2)
                            call stor2.0xdb006a75 with:
                                 gas gas_remaining wei
                                args ((_939 / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1247 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1247] == mem[_1247]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                if mem[96] - 1 != idx:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1835 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1896 = mem[_1835]
                                    require mem[_1835] == mem[_1835]
                                    mem[mem[64] + 4] = mem[_1835]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1896
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2730 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2730] == mem[_2730]
                                else:
                                    if not cd[132]:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1859 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1929 = mem[_1859]
                                        require mem[_1859] == mem[_1859]
                                        mem[mem[64] + 4] = mem[_1859]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1929
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2790 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2790] == mem[_2790]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1860 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1930 = mem[_1860]
                                        require mem[_1860] == mem[_1860]
                                        mem[mem[64] + 4] = mem[_1860]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1930
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2791 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2791] == mem[_2791]
                            else:
                                if cd[132]:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    if mem[96] - 1 != idx:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1861 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1931 = mem[_1861]
                                        require mem[_1861] == mem[_1861]
                                        mem[mem[64] + 4] = mem[_1861]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1931
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2792 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2792] == mem[_2792]
                                    else:
                                        if not cd[132]:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1879 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1967 = mem[_1879]
                                            require mem[_1879] == mem[_1879]
                                            mem[mem[64] + 4] = mem[_1879]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1967
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2874 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2874] == mem[_2874]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1880 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1968 = mem[_1880]
                                            require mem[_1880] == mem[_1880]
                                            mem[mem[64] + 4] = mem[_1880]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1968
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2875 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2875] == mem[_2875]
                        else:
                            if bool(bool(uint8((2 * mem[_1001] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_1001] % 128) - 2) < 32)):
                                if 10^uint8((2 * mem[_1001] % 128) - 2) > -1:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _939 / ext_call.return_data[0] > -(10^uint8((2 * mem[_1001] % 128) - 2) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_939 / ext_call.return_data[0]) + (10^uint8((2 * mem[_1001] % 128) - 2) / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.0xdb006a75 with:
                                     gas gas_remaining wei
                                    args ((_939 / ext_call.return_data[0]) + (10^uint8((2 * _1016 % 128) - 2) / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1272 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1272] == mem[_1272]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    if mem[96] - 1 != idx:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1995 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2140 = mem[_1995]
                                        require mem[_1995] == mem[_1995]
                                        mem[mem[64] + 4] = mem[_1995]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _2140
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3228 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3228] == mem[_3228]
                                    else:
                                        if not cd[132]:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2044 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2172 = mem[_2044]
                                            require mem[_2044] == mem[_2044]
                                            mem[mem[64] + 4] = mem[_2044]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2172
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3306 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3306] == mem[_3306]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2045 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2173 = mem[_2045]
                                            require mem[_2045] == mem[_2045]
                                            mem[mem[64] + 4] = mem[_2045]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2173
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3307 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3307] == mem[_3307]
                                else:
                                    if cd[132]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2046 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2174 = mem[_2046]
                                            require mem[_2046] == mem[_2046]
                                            mem[mem[64] + 4] = mem[_2046]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2174
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3308 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3308] == mem[_3308]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2103 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2218 = mem[_2103]
                                                require mem[_2103] == mem[_2103]
                                                mem[mem[64] + 4] = mem[_2103]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2218
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3393 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3393] == mem[_3393]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2104 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2219 = mem[_2104]
                                                require mem[_2104] == mem[_2104]
                                                mem[mem[64] + 4] = mem[_2104]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2219
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3394 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3394] == mem[_3394]
                            else:
                                t = 10
                                u = 1
                                s = uint8((2 * mem[_1001] % 128) - 2)
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 'NH{q', 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = u * t
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _939 / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_939 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.0xdb006a75 with:
                                     gas gas_remaining wei
                                    args ((_939 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4654] == mem[_4654]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    if mem[96] - 1 != idx:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4744 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4779 = mem[_4744]
                                        require mem[_4744] == mem[_4744]
                                        mem[mem[64] + 4] = mem[_4744]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _4779
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4904 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4904] == mem[_4904]
                                    else:
                                        if not cd[132]:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4756 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4793 = mem[_4756]
                                            require mem[_4756] == mem[_4756]
                                            mem[mem[64] + 4] = mem[_4756]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _4793
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4918 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4918] == mem[_4918]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4757 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4794 = mem[_4757]
                                            require mem[_4757] == mem[_4757]
                                            mem[mem[64] + 4] = mem[_4757]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _4794
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4919 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4919] == mem[_4919]
                                else:
                                    if cd[132]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4758 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4795 = mem[_4758]
                                            require mem[_4758] == mem[_4758]
                                            mem[mem[64] + 4] = mem[_4758]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _4795
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4920 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4920] == mem[_4920]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4770 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4805 = mem[_4770]
                                                require mem[_4770] == mem[_4770]
                                                mem[mem[64] + 4] = mem[_4770]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4805
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4928 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4928] == mem[_4928]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4771 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4806 = mem[_4771]
                                                require mem[_4771] == mem[_4771]
                                                mem[mem[64] + 4] = mem[_4771]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4806
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4929 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4929] == mem[_4929]
                    else:
                        if bool(bool(mem[_958 + 31 len 1] < 78)) or bool(bool(mem[_958 + 31 len 1] < 32)):
                            if 10^mem[_958 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if _939 and 10^mem[_958 + 31 len 1] > -1 / _939:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            require ext_code.size(stor3)
                            staticcall stor3.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1025 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1044 = mem[_1025]
                            require mem[_1025] == mem[_1025 + 31 len 1]
                            if mem[_1025 + 31 len 1] and 2 > 255 / mem[_1025 + 31 len 1]:
                                revert with 'NH{q', 17
                            if 2 * mem[_1025] % 128 < 2:
                                revert with 'NH{q', 17
                            if not uint8((2 * mem[_1025] % 128) - 2):
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _939 * 10^uint8(_962) / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_939 * 10^uint8(_962) / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.0xdb006a75 with:
                                     gas gas_remaining wei
                                    args ((_939 * 10^uint8(_962) / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1271 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1271] == mem[_1271]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    if mem[96] - 1 != idx:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1991 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2134 = mem[_1991]
                                        require mem[_1991] == mem[_1991]
                                        mem[mem[64] + 4] = mem[_1991]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _2134
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3225 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3225] == mem[_3225]
                                    else:
                                        if not cd[132]:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2037 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2166 = mem[_2037]
                                            require mem[_2037] == mem[_2037]
                                            mem[mem[64] + 4] = mem[_2037]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2166
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3303 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3303] == mem[_3303]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2038 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2167 = mem[_2038]
                                            require mem[_2038] == mem[_2038]
                                            mem[mem[64] + 4] = mem[_2038]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2167
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3304 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3304] == mem[_3304]
                                else:
                                    if cd[132]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2039 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2168 = mem[_2039]
                                            require mem[_2039] == mem[_2039]
                                            mem[mem[64] + 4] = mem[_2039]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2168
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3305 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3305] == mem[_3305]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2095 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2213 = mem[_2095]
                                                require mem[_2095] == mem[_2095]
                                                mem[mem[64] + 4] = mem[_2095]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2213
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3389 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3389] == mem[_3389]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2096 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2214 = mem[_2096]
                                                require mem[_2096] == mem[_2096]
                                                mem[mem[64] + 4] = mem[_2096]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2214
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3390 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3390] == mem[_3390]
                            else:
                                if bool(bool(uint8((2 * mem[_1025] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_1025] % 128) - 2) < 32)):
                                    if 10^uint8((2 * mem[_1025] % 128) - 2) > -1:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _939 * 10^uint8(_962) / ext_call.return_data[0] > -(10^uint8((2 * mem[_1025] % 128) - 2) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_939 * 10^uint8(_962) / ext_call.return_data[0]) + (10^uint8((2 * mem[_1025] % 128) - 2) / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_939 * 10^uint8(_962) / ext_call.return_data[0]) + (10^uint8((2 * _1044 % 128) - 2) / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1342 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1342] == mem[_1342]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2253 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2445 = mem[_2253]
                                            require mem[_2253] == mem[_2253]
                                            mem[mem[64] + 4] = mem[_2253]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2445
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3744 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3744] == mem[_3744]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2298 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2505 = mem[_2298]
                                                require mem[_2298] == mem[_2298]
                                                mem[mem[64] + 4] = mem[_2298]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2505
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3820 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3820] == mem[_3820]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2299 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2506 = mem[_2299]
                                                require mem[_2299] == mem[_2299]
                                                mem[mem[64] + 4] = mem[_2299]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2506
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3821 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3821] == mem[_3821]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2300 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2507 = mem[_2300]
                                                require mem[_2300] == mem[_2300]
                                                mem[mem[64] + 4] = mem[_2300]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2507
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3822 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3822] == mem[_3822]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2370 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2579 = mem[_2370]
                                                    require mem[_2370] == mem[_2370]
                                                    mem[mem[64] + 4] = mem[_2370]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2579
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3902 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3902] == mem[_3902]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2371 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2580 = mem[_2371]
                                                    require mem[_2371] == mem[_2371]
                                                    mem[mem[64] + 4] = mem[_2371]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2580
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3903 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3903] == mem[_3903]
                                else:
                                    t = 10
                                    u = 1
                                    s = uint8((2 * mem[_1025] % 128) - 2)
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 'NH{q', 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = u * t
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _939 * 10^uint8(_962) / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_939 * 10^uint8(_962) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_939 * 10^uint8(_962) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4653 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4653] == mem[_4653]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4741 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4778 = mem[_4741]
                                            require mem[_4741] == mem[_4741]
                                            mem[mem[64] + 4] = mem[_4741]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _4778
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4901 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4901] == mem[_4901]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4753 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4790 = mem[_4753]
                                                require mem[_4753] == mem[_4753]
                                                mem[mem[64] + 4] = mem[_4753]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4790
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4915 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4915] == mem[_4915]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4754 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4791 = mem[_4754]
                                                require mem[_4754] == mem[_4754]
                                                mem[mem[64] + 4] = mem[_4754]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4791
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4916 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4916] == mem[_4916]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4755 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4792 = mem[_4755]
                                                require mem[_4755] == mem[_4755]
                                                mem[mem[64] + 4] = mem[_4755]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4792
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4917 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4917] == mem[_4917]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4768 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4803 = mem[_4768]
                                                    require mem[_4768] == mem[_4768]
                                                    mem[mem[64] + 4] = mem[_4768]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4803
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4926 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4926] == mem[_4926]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4769 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4804 = mem[_4769]
                                                    require mem[_4769] == mem[_4769]
                                                    mem[mem[64] + 4] = mem[_4769]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4804
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4927 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4927] == mem[_4927]
                        else:
                            t = 10
                            u = 1
                            s = mem[_958 + 31 len 1]
                            while s > 1:
                                if t > -1 / t:
                                    revert with 'NH{q', 17
                                if not bool(s):
                                    t = t * t
                                    u = u
                                    s = uint255(s) * 0.5
                                    continue 
                                t = t * t
                                u = u * t
                                s = uint255(s) * 0.5
                                continue 
                            if u > -1 / t:
                                revert with 'NH{q', 17
                            if _939 and u * t > -1 / _939:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            require ext_code.size(stor3)
                            staticcall stor3.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4638 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4645 = mem[_4638]
                            require mem[_4638] == mem[_4638 + 31 len 1]
                            if mem[_4638 + 31 len 1] and 2 > 255 / mem[_4638 + 31 len 1]:
                                revert with 'NH{q', 17
                            if 2 * mem[_4638] % 128 < 2:
                                revert with 'NH{q', 17
                            if not uint8((2 * mem[_4638] % 128) - 2):
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _939 * u * t / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_939 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.0xdb006a75 with:
                                     gas gas_remaining wei
                                    args ((_939 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4826 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4826] == mem[_4826]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    if mem[96] - 1 != idx:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5067 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5094 = mem[_5067]
                                        require mem[_5067] == mem[_5067]
                                        mem[mem[64] + 4] = mem[_5067]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _5094
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5356 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5356] == mem[_5356]
                                    else:
                                        if not cd[132]:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5079 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5103 = mem[_5079]
                                            require mem[_5079] == mem[_5079]
                                            mem[mem[64] + 4] = mem[_5079]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5103
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5378 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5378] == mem[_5378]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5080 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5104 = mem[_5080]
                                            require mem[_5080] == mem[_5080]
                                            mem[mem[64] + 4] = mem[_5080]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5104
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5379 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5379] == mem[_5379]
                                else:
                                    if cd[132]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5081 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5105 = mem[_5081]
                                            require mem[_5081] == mem[_5081]
                                            mem[mem[64] + 4] = mem[_5081]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5105
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5380 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5380] == mem[_5380]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5090 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5114 = mem[_5090]
                                                require mem[_5090] == mem[_5090]
                                                mem[mem[64] + 4] = mem[_5090]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5114
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5400 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5400] == mem[_5400]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5091 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5115 = mem[_5091]
                                                require mem[_5091] == mem[_5091]
                                                mem[mem[64] + 4] = mem[_5091]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5115
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5401 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5401] == mem[_5401]
                            else:
                                if bool(bool(uint8((2 * mem[_4638] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_4638] % 128) - 2) < 32)):
                                    if 10^uint8((2 * mem[_4638] % 128) - 2) > -1:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _939 * u * t / ext_call.return_data[0] > -(10^uint8((2 * mem[_4638] % 128) - 2) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_939 * u * t / ext_call.return_data[0]) + (10^uint8((2 * mem[_4638] % 128) - 2) / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_939 * u * t / ext_call.return_data[0]) + (10^uint8((2 * _4645 % 128) - 2) / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4866 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4866] == mem[_4866]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5124 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5187 = mem[_5124]
                                            require mem[_5124] == mem[_5124]
                                            mem[mem[64] + 4] = mem[_5124]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5187
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5458 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5458] == mem[_5458]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5141 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5202 = mem[_5141]
                                                require mem[_5141] == mem[_5141]
                                                mem[mem[64] + 4] = mem[_5141]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5202
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5472 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5472] == mem[_5472]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5142 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5203 = mem[_5142]
                                                require mem[_5142] == mem[_5142]
                                                mem[mem[64] + 4] = mem[_5142]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5203
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5473 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5473] == mem[_5473]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5143 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5204 = mem[_5143]
                                                require mem[_5143] == mem[_5143]
                                                mem[mem[64] + 4] = mem[_5143]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5204
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5474 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5474] == mem[_5474]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5167 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5215 = mem[_5167]
                                                    require mem[_5167] == mem[_5167]
                                                    mem[mem[64] + 4] = mem[_5167]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5215
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5488 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5488] == mem[_5488]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5168 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5216 = mem[_5168]
                                                    require mem[_5168] == mem[_5168]
                                                    mem[mem[64] + 4] = mem[_5168]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5216
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5489 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5489] == mem[_5489]
                                else:
                                    v = 10
                                    w = 1
                                    s = uint8((2 * mem[_4638] % 128) - 2)
                                    while s > 1:
                                        if v > -1 / v:
                                            revert with 'NH{q', 17
                                        if not bool(s):
                                            v = v * v
                                            w = w
                                            s = uint255(s) * 0.5
                                            continue 
                                        v = v * v
                                        w = w * v
                                        s = uint255(s) * 0.5
                                        continue 
                                    if w > -1 / v:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _939 * u * t / ext_call.return_data[0] > -(w * v / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_939 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_939 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6713 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6713] == mem[_6713]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6779 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6806 = mem[_6779]
                                            require mem[_6779] == mem[_6779]
                                            mem[mem[64] + 4] = mem[_6779]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _6806
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6887 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6887] == mem[_6887]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6791 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6816 = mem[_6791]
                                                require mem[_6791] == mem[_6791]
                                                mem[mem[64] + 4] = mem[_6791]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6816
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6900 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6900] == mem[_6900]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6792 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6817 = mem[_6792]
                                                require mem[_6792] == mem[_6792]
                                                mem[mem[64] + 4] = mem[_6792]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6817
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6901 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6901] == mem[_6901]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6793 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6818 = mem[_6793]
                                                require mem[_6793] == mem[_6793]
                                                mem[mem[64] + 4] = mem[_6793]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6818
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6902 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6902] == mem[_6902]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6801 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6825 = mem[_6801]
                                                    require mem[_6801] == mem[_6801]
                                                    mem[mem[64] + 4] = mem[_6801]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6825
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6909 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6909] == mem[_6909]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6802 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6826 = mem[_6802]
                                                    require mem[_6802] == mem[_6802]
                                                    mem[mem[64] + 4] = mem[_6802]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6826
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6910 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6910] == mem[_6910]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _939
            continue 
    else:
        if bool(bool(uint32(uint32(cd[36]) + uint32(cd[100])) < 78)) or bool(bool(uint32(uint32(cd[36]) + uint32(cd[100])) < 32)):
            if 10^uint32(uint32(cd[36]) + uint32(cd[100])) > -1:
                revert with 'NH{q', 17
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                call stor2.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _936 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _938 = mem[_936]
                require mem[_936] == mem[_936]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 128]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _949 = mem[(32 * idx) + 128]
                    if uint32(cd[68]) * ext_call.return_data[0] and mem[(32 * idx) + 128] > -1 / uint32(cd[68]) * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 10^uint32(uint32(cd[36]) + uint32(cd[100])) and 10^18 > -1 / 10^uint32(uint32(cd[36]) + uint32(cd[100])):
                        revert with 'NH{q', 17
                    if 10^18 * 10^uint32(uint32(cd[36]) + uint32(cd[100])) and mem[_936] > -1 / 10^18 * 10^uint32(uint32(cd[36]) + uint32(cd[100])):
                        revert with 'NH{q', 17
                    if not uint32(cd[68]) * ext_call.return_data[0] * mem[(32 * idx) + 128]:
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1013 = mem[_997]
                    require mem[_997] == mem[_997]
                    if mem[_997] < 10^18 * 10^uint32(uint32(cd[36]) + uint32(cd[100])) * _938 / uint32(cd[68]) * ext_call.return_data[0] * _949:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = mem[_997] - (10^18 * 10^uint32(uint32(cd[36]) + uint32(cd[100])) * _938 / uint32(cd[68]) * ext_call.return_data[0] * _949)
                    require ext_code.size(stor2)
                    call stor2.0xdb006a75 with:
                         gas gas_remaining wei
                        args (_1013 - (10^18 * 10^uint32(uint32(cd[36]) + uint32(cd[100])) * _938 / uint32(cd[68]) * ext_call.return_data[0] * _949))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1147 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1147] == mem[_1147]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 != idx:
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = this.address
                        if mem[96] - 1 != idx:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1282 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1330 = mem[_1282]
                            require mem[_1282] == mem[_1282]
                            mem[mem[64] + 4] = mem[_1282]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1330
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1565] == mem[_1565]
                        else:
                            if not cd[132]:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1302 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1332 = mem[_1302]
                                require mem[_1302] == mem[_1302]
                                mem[mem[64] + 4] = mem[_1302]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1332
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1584] == mem[_1584]
                            else:
                                require ext_code.size(stor2)
                                call stor2.borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1303 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1333 = mem[_1303]
                                require mem[_1303] == mem[_1303]
                                mem[mem[64] + 4] = mem[_1303]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1333
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1585] == mem[_1585]
                    else:
                        if cd[132]:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = this.address
                            if mem[96] - 1 != idx:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1304 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1334 = mem[_1304]
                                require mem[_1304] == mem[_1304]
                                mem[mem[64] + 4] = mem[_1304]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1334
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1586 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1586] == mem[_1586]
                            else:
                                if not cd[132]:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1317 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1347 = mem[_1317]
                                    require mem[_1317] == mem[_1317]
                                    mem[mem[64] + 4] = mem[_1317]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1347
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1607 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1607] == mem[_1607]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1318 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1348 = mem[_1318]
                                    require mem[_1318] == mem[_1318]
                                    mem[mem[64] + 4] = mem[_1318]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1348
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1608 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1608] == mem[_1608]
                else:
                    if cd[164] > 0:
                        mem[mem[64] + 4] = cd[164]
                        require ext_code.size(stor2)
                        call stor2.0x852a12e3 with:
                             gas gas_remaining wei
                            args cd[164]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _970 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_970] == mem[_970]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = this.address
                            if mem[96] - 1 != idx:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1051 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1072 = mem[_1051]
                                require mem[_1051] == mem[_1051]
                                mem[mem[64] + 4] = mem[_1051]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1072
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1165 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1165] == mem[_1165]
                            else:
                                if not cd[132]:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1060 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1077 = mem[_1060]
                                    require mem[_1060] == mem[_1060]
                                    mem[mem[64] + 4] = mem[_1060]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1077
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1174 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1174] == mem[_1174]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1061 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1078 = mem[_1061]
                                    require mem[_1061] == mem[_1061]
                                    mem[mem[64] + 4] = mem[_1061]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1078
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1175 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1175] == mem[_1175]
                        else:
                            if cd[132]:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                if mem[96] - 1 != idx:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1062 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1079 = mem[_1062]
                                    require mem[_1062] == mem[_1062]
                                    mem[mem[64] + 4] = mem[_1062]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1079
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1176 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1176] == mem[_1176]
                                else:
                                    if not cd[132]:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1066 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1090 = mem[_1066]
                                        require mem[_1066] == mem[_1066]
                                        mem[mem[64] + 4] = mem[_1066]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1090
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1180 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1180] == mem[_1180]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1067 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1091 = mem[_1067]
                                        require mem[_1067] == mem[_1067]
                                        mem[mem[64] + 4] = mem[_1067]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1091
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1181 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1181] == mem[_1181]
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _957 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _961 = mem[_957]
                        require mem[_957] == mem[_957 + 31 len 1]
                        if not mem[_957 + 31 len 1]:
                            if _938 and 1 > -1 / _938:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            require ext_code.size(stor3)
                            staticcall stor3.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _998 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1014 = mem[_998]
                            require mem[_998] == mem[_998 + 31 len 1]
                            if mem[_998 + 31 len 1] and 2 > 255 / mem[_998 + 31 len 1]:
                                revert with 'NH{q', 17
                            if 2 * mem[_998] % 128 < 2:
                                revert with 'NH{q', 17
                            if not uint8((2 * mem[_998] % 128) - 2):
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _938 / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_938 / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.0xdb006a75 with:
                                     gas gas_remaining wei
                                    args ((_938 / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1244 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1244] == mem[_1244]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    if mem[96] - 1 != idx:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1830 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1890 = mem[_1830]
                                        require mem[_1830] == mem[_1830]
                                        mem[mem[64] + 4] = mem[_1830]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1890
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2708 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2708] == mem[_2708]
                                    else:
                                        if not cd[132]:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1849 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1917 = mem[_1849]
                                            require mem[_1849] == mem[_1849]
                                            mem[mem[64] + 4] = mem[_1849]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1917
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2768 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2768] == mem[_2768]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1850 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1918 = mem[_1850]
                                            require mem[_1850] == mem[_1850]
                                            mem[mem[64] + 4] = mem[_1850]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1918
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2769 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2769] == mem[_2769]
                                else:
                                    if cd[132]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1851 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1919 = mem[_1851]
                                            require mem[_1851] == mem[_1851]
                                            mem[mem[64] + 4] = mem[_1851]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1919
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2770 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2770] == mem[_2770]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1871 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _1955 = mem[_1871]
                                                require mem[_1871] == mem[_1871]
                                                mem[mem[64] + 4] = mem[_1871]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _1955
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2845 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2845] == mem[_2845]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1872 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _1956 = mem[_1872]
                                                require mem[_1872] == mem[_1872]
                                                mem[mem[64] + 4] = mem[_1872]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _1956
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2846 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_2846] == mem[_2846]
                            else:
                                if bool(bool(uint8((2 * mem[_998] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_998] % 128) - 2) < 32)):
                                    if 10^uint8((2 * mem[_998] % 128) - 2) > -1:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _938 / ext_call.return_data[0] > -(10^uint8((2 * mem[_998] % 128) - 2) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_938 / ext_call.return_data[0]) + (10^uint8((2 * mem[_998] % 128) - 2) / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_938 / ext_call.return_data[0]) + (10^uint8((2 * _1014 % 128) - 2) / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1269 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1269] == mem[_1269]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1984 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2126 = mem[_1984]
                                            require mem[_1984] == mem[_1984]
                                            mem[mem[64] + 4] = mem[_1984]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2126
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3197 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3197] == mem[_3197]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2022 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2158 = mem[_2022]
                                                require mem[_2022] == mem[_2022]
                                                mem[mem[64] + 4] = mem[_2022]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2158
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3278 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3278] == mem[_3278]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2023 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2159 = mem[_2023]
                                                require mem[_2023] == mem[_2023]
                                                mem[mem[64] + 4] = mem[_2023]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2159
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3279 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3279] == mem[_3279]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2024 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2160 = mem[_2024]
                                                require mem[_2024] == mem[_2024]
                                                mem[mem[64] + 4] = mem[_2024]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2160
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3280 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3280] == mem[_3280]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2079 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2201 = mem[_2079]
                                                    require mem[_2079] == mem[_2079]
                                                    mem[mem[64] + 4] = mem[_2079]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2201
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3361 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3361] == mem[_3361]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2080 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2202 = mem[_2080]
                                                    require mem[_2080] == mem[_2080]
                                                    mem[mem[64] + 4] = mem[_2080]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2202
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3362 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3362] == mem[_3362]
                                else:
                                    t = 10
                                    u = 1
                                    s = uint8((2 * mem[_998] % 128) - 2)
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 'NH{q', 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = u * t
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _938 / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_938 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_938 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4652 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4652] == mem[_4652]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4738 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4777 = mem[_4738]
                                            require mem[_4738] == mem[_4738]
                                            mem[mem[64] + 4] = mem[_4738]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _4777
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4896 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4896] == mem[_4896]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4750 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4787 = mem[_4750]
                                                require mem[_4750] == mem[_4750]
                                                mem[mem[64] + 4] = mem[_4750]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4787
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4911 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4911] == mem[_4911]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4751 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4788 = mem[_4751]
                                                require mem[_4751] == mem[_4751]
                                                mem[mem[64] + 4] = mem[_4751]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4788
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4912 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4912] == mem[_4912]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4752 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4789 = mem[_4752]
                                                require mem[_4752] == mem[_4752]
                                                mem[mem[64] + 4] = mem[_4752]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4789
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4913 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4913] == mem[_4913]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4765 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4801 = mem[_4765]
                                                    require mem[_4765] == mem[_4765]
                                                    mem[mem[64] + 4] = mem[_4765]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4801
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4924 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4924] == mem[_4924]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4766 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4802 = mem[_4766]
                                                    require mem[_4766] == mem[_4766]
                                                    mem[mem[64] + 4] = mem[_4766]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4802
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4925 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4925] == mem[_4925]
                        else:
                            if bool(bool(mem[_957 + 31 len 1] < 78)) or bool(bool(mem[_957 + 31 len 1] < 32)):
                                if 10^mem[_957 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if _938 and 10^mem[_957 + 31 len 1] > -1 / _938:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                require ext_code.size(stor3)
                                staticcall stor3.0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1024 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1040 = mem[_1024]
                                require mem[_1024] == mem[_1024 + 31 len 1]
                                if mem[_1024 + 31 len 1] and 2 > 255 / mem[_1024 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if 2 * mem[_1024] % 128 < 2:
                                    revert with 'NH{q', 17
                                if not uint8((2 * mem[_1024] % 128) - 2):
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _938 * 10^uint8(_961) / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_938 * 10^uint8(_961) / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_938 * 10^uint8(_961) / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1268 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1268] == mem[_1268]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1980 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2120 = mem[_1980]
                                            require mem[_1980] == mem[_1980]
                                            mem[mem[64] + 4] = mem[_1980]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2120
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3194 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3194] == mem[_3194]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2015 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2152 = mem[_2015]
                                                require mem[_2015] == mem[_2015]
                                                mem[mem[64] + 4] = mem[_2015]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2152
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3275 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3275] == mem[_3275]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2016 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2153 = mem[_2016]
                                                require mem[_2016] == mem[_2016]
                                                mem[mem[64] + 4] = mem[_2016]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2153
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3276 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3276] == mem[_3276]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2017 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2154 = mem[_2017]
                                                require mem[_2017] == mem[_2017]
                                                mem[mem[64] + 4] = mem[_2017]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2154
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3277 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3277] == mem[_3277]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2071 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2196 = mem[_2071]
                                                    require mem[_2071] == mem[_2071]
                                                    mem[mem[64] + 4] = mem[_2071]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2196
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3357 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3357] == mem[_3357]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2072 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2197 = mem[_2072]
                                                    require mem[_2072] == mem[_2072]
                                                    mem[mem[64] + 4] = mem[_2072]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2197
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3358 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3358] == mem[_3358]
                                else:
                                    if bool(bool(uint8((2 * mem[_1024] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_1024] % 128) - 2) < 32)):
                                        if 10^uint8((2 * mem[_1024] % 128) - 2) > -1:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if _938 * 10^uint8(_961) / ext_call.return_data[0] > -(10^uint8((2 * mem[_1024] % 128) - 2) / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = (_938 * 10^uint8(_961) / ext_call.return_data[0]) + (10^uint8((2 * mem[_1024] % 128) - 2) / ext_call.return_data[0])
                                        require ext_code.size(stor2)
                                        call stor2.0xdb006a75 with:
                                             gas gas_remaining wei
                                            args ((_938 * 10^uint8(_961) / ext_call.return_data[0]) + (10^uint8((2 * _1040 % 128) - 2) / ext_call.return_data[0]))
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1336 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1336] == mem[_1336]
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2239 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2419 = mem[_2239]
                                                require mem[_2239] == mem[_2239]
                                                mem[mem[64] + 4] = mem[_2239]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2419
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3721 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3721] == mem[_3721]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2282 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2481 = mem[_2282]
                                                    require mem[_2282] == mem[_2282]
                                                    mem[mem[64] + 4] = mem[_2282]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2481
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3798 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3798] == mem[_3798]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2283 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2482 = mem[_2283]
                                                    require mem[_2283] == mem[_2283]
                                                    mem[mem[64] + 4] = mem[_2283]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2482
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3799 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3799] == mem[_3799]
                                        else:
                                            if cd[132]:
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = this.address
                                                if mem[96] - 1 != idx:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2284 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2483 = mem[_2284]
                                                    require mem[_2284] == mem[_2284]
                                                    mem[mem[64] + 4] = mem[_2284]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2483
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3800 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3800] == mem[_3800]
                                                else:
                                                    if not cd[132]:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2345 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _2548 = mem[_2345]
                                                        require mem[_2345] == mem[_2345]
                                                        mem[mem[64] + 4] = mem[_2345]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _2548
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3874 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_3874] == mem[_3874]
                                                    else:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2346 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _2549 = mem[_2346]
                                                        require mem[_2346] == mem[_2346]
                                                        mem[mem[64] + 4] = mem[_2346]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _2549
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3875 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_3875] == mem[_3875]
                                    else:
                                        t = 10
                                        u = 1
                                        s = uint8((2 * mem[_1024] % 128) - 2)
                                        while s > 1:
                                            if t > -1 / t:
                                                revert with 'NH{q', 17
                                            if not bool(s):
                                                t = t * t
                                                u = u
                                                s = uint255(s) * 0.5
                                                continue 
                                            t = t * t
                                            u = u * t
                                            s = uint255(s) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if _938 * 10^uint8(_961) / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = (_938 * 10^uint8(_961) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                        require ext_code.size(stor2)
                                        call stor2.0xdb006a75 with:
                                             gas gas_remaining wei
                                            args ((_938 * 10^uint8(_961) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4651 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4651] == mem[_4651]
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4735 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4776 = mem[_4735]
                                                require mem[_4735] == mem[_4735]
                                                mem[mem[64] + 4] = mem[_4735]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4776
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4893 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4893] == mem[_4893]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4747 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4784 = mem[_4747]
                                                    require mem[_4747] == mem[_4747]
                                                    mem[mem[64] + 4] = mem[_4747]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4784
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4908 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4908] == mem[_4908]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4748 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4785 = mem[_4748]
                                                    require mem[_4748] == mem[_4748]
                                                    mem[mem[64] + 4] = mem[_4748]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4785
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4909 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4909] == mem[_4909]
                                        else:
                                            if cd[132]:
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = this.address
                                                if mem[96] - 1 != idx:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4749 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4786 = mem[_4749]
                                                    require mem[_4749] == mem[_4749]
                                                    mem[mem[64] + 4] = mem[_4749]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4786
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4910 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4910] == mem[_4910]
                                                else:
                                                    if not cd[132]:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4763 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _4799 = mem[_4763]
                                                        require mem[_4763] == mem[_4763]
                                                        mem[mem[64] + 4] = mem[_4763]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _4799
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4922 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4922] == mem[_4922]
                                                    else:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4764 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _4800 = mem[_4764]
                                                        require mem[_4764] == mem[_4764]
                                                        mem[mem[64] + 4] = mem[_4764]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _4800
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4923 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4923] == mem[_4923]
                            else:
                                t = 10
                                u = 1
                                s = mem[_957 + 31 len 1]
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 'NH{q', 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = u * t
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 'NH{q', 17
                                if _938 and u * t > -1 / _938:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                require ext_code.size(stor3)
                                staticcall stor3.0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4644 = mem[_4637]
                                require mem[_4637] == mem[_4637 + 31 len 1]
                                if mem[_4637 + 31 len 1] and 2 > 255 / mem[_4637 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if 2 * mem[_4637] % 128 < 2:
                                    revert with 'NH{q', 17
                                if not uint8((2 * mem[_4637] % 128) - 2):
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _938 * u * t / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_938 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_938 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4825 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4825] == mem[_4825]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5063 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5093 = mem[_5063]
                                            require mem[_5063] == mem[_5063]
                                            mem[mem[64] + 4] = mem[_5063]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5093
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5348 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5348] == mem[_5348]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5073 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5099 = mem[_5073]
                                                require mem[_5073] == mem[_5073]
                                                mem[mem[64] + 4] = mem[_5073]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5099
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5371 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5371] == mem[_5371]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5074 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5100 = mem[_5074]
                                                require mem[_5074] == mem[_5074]
                                                mem[mem[64] + 4] = mem[_5074]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5100
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5372 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5372] == mem[_5372]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5075 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5101 = mem[_5075]
                                                require mem[_5075] == mem[_5075]
                                                mem[mem[64] + 4] = mem[_5075]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5101
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5373 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5373] == mem[_5373]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5086 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5109 = mem[_5086]
                                                    require mem[_5086] == mem[_5086]
                                                    mem[mem[64] + 4] = mem[_5086]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5109
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5392 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5392] == mem[_5392]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5087 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5110 = mem[_5087]
                                                    require mem[_5087] == mem[_5087]
                                                    mem[mem[64] + 4] = mem[_5087]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5110
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5393 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5393] == mem[_5393]
                                else:
                                    if bool(bool(uint8((2 * mem[_4637] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_4637] % 128) - 2) < 32)):
                                        if 10^uint8((2 * mem[_4637] % 128) - 2) > -1:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if _938 * u * t / ext_call.return_data[0] > -(10^uint8((2 * mem[_4637] % 128) - 2) / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = (_938 * u * t / ext_call.return_data[0]) + (10^uint8((2 * mem[_4637] % 128) - 2) / ext_call.return_data[0])
                                        require ext_code.size(stor2)
                                        call stor2.0xdb006a75 with:
                                             gas gas_remaining wei
                                            args ((_938 * u * t / ext_call.return_data[0]) + (10^uint8((2 * _4644 % 128) - 2) / ext_call.return_data[0]))
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4865 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4865] == mem[_4865]
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5120 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5181 = mem[_5120]
                                                require mem[_5120] == mem[_5120]
                                                mem[mem[64] + 4] = mem[_5120]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5181
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5455 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5455] == mem[_5455]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5134 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5196 = mem[_5134]
                                                    require mem[_5134] == mem[_5134]
                                                    mem[mem[64] + 4] = mem[_5134]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5196
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5469 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5469] == mem[_5469]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5135 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5197 = mem[_5135]
                                                    require mem[_5135] == mem[_5135]
                                                    mem[mem[64] + 4] = mem[_5135]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5197
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5470 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5470] == mem[_5470]
                                        else:
                                            if cd[132]:
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = this.address
                                                if mem[96] - 1 != idx:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5136 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5198 = mem[_5136]
                                                    require mem[_5136] == mem[_5136]
                                                    mem[mem[64] + 4] = mem[_5136]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5198
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5471 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5471] == mem[_5471]
                                                else:
                                                    if not cd[132]:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5159 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5209 = mem[_5159]
                                                        require mem[_5159] == mem[_5159]
                                                        mem[mem[64] + 4] = mem[_5159]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5209
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5484 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5484] == mem[_5484]
                                                    else:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5160 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5210 = mem[_5160]
                                                        require mem[_5160] == mem[_5160]
                                                        mem[mem[64] + 4] = mem[_5160]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5210
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5485 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5485] == mem[_5485]
                                    else:
                                        v = 10
                                        w = 1
                                        s = uint8((2 * mem[_4637] % 128) - 2)
                                        while s > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(s):
                                                v = v * v
                                                w = w
                                                s = uint255(s) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            s = uint255(s) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if _938 * u * t / ext_call.return_data[0] > -(w * v / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = (_938 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0])
                                        require ext_code.size(stor2)
                                        call stor2.0xdb006a75 with:
                                             gas gas_remaining wei
                                            args ((_938 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0]))
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6712 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6712] == mem[_6712]
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6776 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6805 = mem[_6776]
                                                require mem[_6776] == mem[_6776]
                                                mem[mem[64] + 4] = mem[_6776]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6805
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6884 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6884] == mem[_6884]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6788 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6813 = mem[_6788]
                                                    require mem[_6788] == mem[_6788]
                                                    mem[mem[64] + 4] = mem[_6788]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6813
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6897 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6897] == mem[_6897]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6789 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6814 = mem[_6789]
                                                    require mem[_6789] == mem[_6789]
                                                    mem[mem[64] + 4] = mem[_6789]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6814
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6898 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6898] == mem[_6898]
                                        else:
                                            if cd[132]:
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = this.address
                                                if mem[96] - 1 != idx:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6790 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6815 = mem[_6790]
                                                    require mem[_6790] == mem[_6790]
                                                    mem[mem[64] + 4] = mem[_6790]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6815
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6899 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6899] == mem[_6899]
                                                else:
                                                    if not cd[132]:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6799 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6823 = mem[_6799]
                                                        require mem[_6799] == mem[_6799]
                                                        mem[mem[64] + 4] = mem[_6799]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _6823
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6907 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6907] == mem[_6907]
                                                    else:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6800 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6824 = mem[_6800]
                                                        require mem[_6800] == mem[_6800]
                                                        mem[mem[64] + 4] = mem[_6800]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _6824
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6908 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6908] == mem[_6908]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _938
                continue 
        else:
            s = 10
            t = 1
            idx = uint32(uint32(cd[36]) + uint32(cd[100]))
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
            idx = 0
            u = 0
            while idx < ('cd', 4).length:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2)
                call stor2.borrowBalanceCurrent(address arg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4625 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4626 = mem[_4625]
                require mem[_4625] == mem[_4625]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 128]:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _4640 = mem[(32 * idx) + 128]
                    if uint32(cd[68]) * ext_call.return_data[0] and mem[(32 * idx) + 128] > -1 / uint32(cd[68]) * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if t * s and 10^18 > -1 / t * s:
                        revert with 'NH{q', 17
                    if 10^18 * t * s and mem[_4625] > -1 / 10^18 * t * s:
                        revert with 'NH{q', 17
                    if not uint32(cd[68]) * ext_call.return_data[0] * mem[(32 * idx) + 128]:
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4714 = mem[_4706]
                    require mem[_4706] == mem[_4706]
                    if mem[_4706] < 10^18 * t * s * _4626 / uint32(cd[68]) * ext_call.return_data[0] * _4640:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = mem[_4706] - (10^18 * t * s * _4626 / uint32(cd[68]) * ext_call.return_data[0] * _4640)
                    require ext_code.size(stor2)
                    call stor2.0xdb006a75 with:
                         gas gas_remaining wei
                        args (_4714 - (10^18 * t * s * _4626 / uint32(cd[68]) * ext_call.return_data[0] * _4640))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4890] == mem[_4890]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 != idx:
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = this.address
                        if mem[96] - 1 != idx:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5144 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5205 = mem[_5144]
                            require mem[_5144] == mem[_5144]
                            mem[mem[64] + 4] = mem[_5144]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _5205
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5475 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5475] == mem[_5475]
                        else:
                            if not cd[132]:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5169 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5218 = mem[_5169]
                                require mem[_5169] == mem[_5169]
                                mem[mem[64] + 4] = mem[_5169]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _5218
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5490 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5490] == mem[_5490]
                            else:
                                require ext_code.size(stor2)
                                call stor2.borrowBalanceCurrent(address arg1) with:
                                     gas gas_remaining wei
                                    args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5170 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5219 = mem[_5170]
                                require mem[_5170] == mem[_5170]
                                mem[mem[64] + 4] = mem[_5170]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _5219
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5491 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5491] == mem[_5491]
                    else:
                        if cd[132]:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = this.address
                            if mem[96] - 1 != idx:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5171 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5220 = mem[_5171]
                                require mem[_5171] == mem[_5171]
                                mem[mem[64] + 4] = mem[_5171]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _5220
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5492 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5492] == mem[_5492]
                            else:
                                if not cd[132]:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5188 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5234 = mem[_5188]
                                    require mem[_5188] == mem[_5188]
                                    mem[mem[64] + 4] = mem[_5188]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _5234
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5515 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5515] == mem[_5515]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5189 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5235 = mem[_5189]
                                    require mem[_5189] == mem[_5189]
                                    mem[mem[64] + 4] = mem[_5189]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _5235
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5516 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5516] == mem[_5516]
                else:
                    if cd[164] > 0:
                        mem[mem[64] + 4] = cd[164]
                        require ext_code.size(stor2)
                        call stor2.0x852a12e3 with:
                             gas gas_remaining wei
                            args cd[164]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4661 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4661] == mem[_4661]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = this.address
                            if mem[96] - 1 != idx:
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4781 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4810 = mem[_4781]
                                require mem[_4781] == mem[_4781]
                                mem[mem[64] + 4] = mem[_4781]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _4810
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4940 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4940] == mem[_4940]
                            else:
                                if not cd[132]:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4796 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4813 = mem[_4796]
                                    require mem[_4796] == mem[_4796]
                                    mem[mem[64] + 4] = mem[_4796]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _4813
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4957 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4957] == mem[_4957]
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4797 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4814 = mem[_4797]
                                    require mem[_4797] == mem[_4797]
                                    mem[mem[64] + 4] = mem[_4797]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _4814
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4958 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4958] == mem[_4958]
                        else:
                            if cd[132]:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                if mem[96] - 1 != idx:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4798 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _4815 = mem[_4798]
                                    require mem[_4798] == mem[_4798]
                                    mem[mem[64] + 4] = mem[_4798]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _4815
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4959 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4959] == mem[_4959]
                                else:
                                    if not cd[132]:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4807 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4822 = mem[_4807]
                                        require mem[_4807] == mem[_4807]
                                        mem[mem[64] + 4] = mem[_4807]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _4822
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4970 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4970] == mem[_4970]
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4808 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4823 = mem[_4808]
                                        require mem[_4808] == mem[_4808]
                                        mem[mem[64] + 4] = mem[_4808]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _4823
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4971 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4971] == mem[_4971]
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4646 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4655 = mem[_4646]
                        require mem[_4646] == mem[_4646 + 31 len 1]
                        if not mem[_4646 + 31 len 1]:
                            if _4626 and 1 > -1 / _4626:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            require ext_code.size(stor3)
                            staticcall stor3.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4707 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4715 = mem[_4707]
                            require mem[_4707] == mem[_4707 + 31 len 1]
                            if mem[_4707 + 31 len 1] and 2 > 255 / mem[_4707 + 31 len 1]:
                                revert with 'NH{q', 17
                            if 2 * mem[_4707] % 128 < 2:
                                revert with 'NH{q', 17
                            if not uint8((2 * mem[_4707] % 128) - 2):
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _4626 / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_4626 / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.0xdb006a75 with:
                                     gas gas_remaining wei
                                    args ((_4626 / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5061 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5061] == mem[_5061]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    if mem[96] - 1 != idx:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5702 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5742 = mem[_5702]
                                        require mem[_5702] == mem[_5702]
                                        mem[mem[64] + 4] = mem[_5702]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _5742
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6058 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6058] == mem[_6058]
                                    else:
                                        if not cd[132]:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5722 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5752 = mem[_5722]
                                            require mem[_5722] == mem[_5722]
                                            mem[mem[64] + 4] = mem[_5722]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5752
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6080 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6080] == mem[_6080]
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5723 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5753 = mem[_5723]
                                            require mem[_5723] == mem[_5723]
                                            mem[mem[64] + 4] = mem[_5723]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5753
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6081 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6081] == mem[_6081]
                                else:
                                    if cd[132]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5724 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5754 = mem[_5724]
                                            require mem[_5724] == mem[_5724]
                                            mem[mem[64] + 4] = mem[_5724]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5754
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6082 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6082] == mem[_6082]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5735 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5765 = mem[_5735]
                                                require mem[_5735] == mem[_5735]
                                                mem[mem[64] + 4] = mem[_5735]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5765
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6110 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6110] == mem[_6110]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5736 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5766 = mem[_5736]
                                                require mem[_5736] == mem[_5736]
                                                mem[mem[64] + 4] = mem[_5736]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5766
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6111 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6111] == mem[_6111]
                            else:
                                if bool(bool(uint8((2 * mem[_4707] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_4707] % 128) - 2) < 32)):
                                    if 10^uint8((2 * mem[_4707] % 128) - 2) > -1:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _4626 / ext_call.return_data[0] > -(10^uint8((2 * mem[_4707] % 128) - 2) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_4626 / ext_call.return_data[0]) + (10^uint8((2 * mem[_4707] % 128) - 2) / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_4626 / ext_call.return_data[0]) + (10^uint8((2 * _4715 % 128) - 2) / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5118 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5118] == mem[_5118]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5775 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5837 = mem[_5775]
                                            require mem[_5775] == mem[_5775]
                                            mem[mem[64] + 4] = mem[_5775]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5837
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6229 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6229] == mem[_6229]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5797 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5849 = mem[_5797]
                                                require mem[_5797] == mem[_5797]
                                                mem[mem[64] + 4] = mem[_5797]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5849
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6257 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6257] == mem[_6257]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5798 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5850 = mem[_5798]
                                                require mem[_5798] == mem[_5798]
                                                mem[mem[64] + 4] = mem[_5798]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5850
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6258 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6258] == mem[_6258]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5799 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5851 = mem[_5799]
                                                require mem[_5799] == mem[_5799]
                                                mem[mem[64] + 4] = mem[_5799]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5851
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6259 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6259] == mem[_6259]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5822 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5866 = mem[_5822]
                                                    require mem[_5822] == mem[_5822]
                                                    mem[mem[64] + 4] = mem[_5822]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5866
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6290 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6290] == mem[_6290]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5823 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5867 = mem[_5823]
                                                    require mem[_5823] == mem[_5823]
                                                    mem[mem[64] + 4] = mem[_5823]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5867
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6291 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6291] == mem[_6291]
                                else:
                                    t = 10
                                    u = 1
                                    s = uint8((2 * mem[_4707] % 128) - 2)
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 'NH{q', 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = u * t
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _4626 / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_4626 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_4626 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6711 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6711] == mem[_6711]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6773 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6804 = mem[_6773]
                                            require mem[_6773] == mem[_6773]
                                            mem[mem[64] + 4] = mem[_6773]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _6804
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6881 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6881] == mem[_6881]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6785 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6810 = mem[_6785]
                                                require mem[_6785] == mem[_6785]
                                                mem[mem[64] + 4] = mem[_6785]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6810
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6894 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6894] == mem[_6894]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6786 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6811 = mem[_6786]
                                                require mem[_6786] == mem[_6786]
                                                mem[mem[64] + 4] = mem[_6786]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6811
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6895 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6895] == mem[_6895]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6787 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6812 = mem[_6787]
                                                require mem[_6787] == mem[_6787]
                                                mem[mem[64] + 4] = mem[_6787]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6812
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6896 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6896] == mem[_6896]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6797 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6821 = mem[_6797]
                                                    require mem[_6797] == mem[_6797]
                                                    mem[mem[64] + 4] = mem[_6797]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6821
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6905 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6905] == mem[_6905]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6798 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6822 = mem[_6798]
                                                    require mem[_6798] == mem[_6798]
                                                    mem[mem[64] + 4] = mem[_6798]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6822
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6906 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6906] == mem[_6906]
                        else:
                            if bool(bool(mem[_4646 + 31 len 1] < 78)) or bool(bool(mem[_4646 + 31 len 1] < 32)):
                                if 10^mem[_4646 + 31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if _4626 and 10^mem[_4646 + 31 len 1] > -1 / _4626:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                require ext_code.size(stor3)
                                staticcall stor3.0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4734 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _4772 = mem[_4734]
                                require mem[_4734] == mem[_4734 + 31 len 1]
                                if mem[_4734 + 31 len 1] and 2 > 255 / mem[_4734 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if 2 * mem[_4734] % 128 < 2:
                                    revert with 'NH{q', 17
                                if not uint8((2 * mem[_4734] % 128) - 2):
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _4626 * 10^uint8(_4655) / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_4626 * 10^uint8(_4655) / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_4626 * 10^uint8(_4655) / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5117 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5117] == mem[_5117]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5771 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5831 = mem[_5771]
                                            require mem[_5771] == mem[_5771]
                                            mem[mem[64] + 4] = mem[_5771]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5831
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6226 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6226] == mem[_6226]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5790 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5843 = mem[_5790]
                                                require mem[_5790] == mem[_5790]
                                                mem[mem[64] + 4] = mem[_5790]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5843
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6254 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6254] == mem[_6254]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5791 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5844 = mem[_5791]
                                                require mem[_5791] == mem[_5791]
                                                mem[mem[64] + 4] = mem[_5791]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5844
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6255 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6255] == mem[_6255]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5792 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5845 = mem[_5792]
                                                require mem[_5792] == mem[_5792]
                                                mem[mem[64] + 4] = mem[_5792]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5845
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6256 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6256] == mem[_6256]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5814 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5861 = mem[_5814]
                                                    require mem[_5814] == mem[_5814]
                                                    mem[mem[64] + 4] = mem[_5814]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5861
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6286 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6286] == mem[_6286]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5815 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5862 = mem[_5815]
                                                    require mem[_5815] == mem[_5815]
                                                    mem[mem[64] + 4] = mem[_5815]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5862
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6287 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6287] == mem[_6287]
                                else:
                                    if bool(bool(uint8((2 * mem[_4734] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_4734] % 128) - 2) < 32)):
                                        if 10^uint8((2 * mem[_4734] % 128) - 2) > -1:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if _4626 * 10^uint8(_4655) / ext_call.return_data[0] > -(10^uint8((2 * mem[_4734] % 128) - 2) / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = (_4626 * 10^uint8(_4655) / ext_call.return_data[0]) + (10^uint8((2 * mem[_4734] % 128) - 2) / ext_call.return_data[0])
                                        require ext_code.size(stor2)
                                        call stor2.0xdb006a75 with:
                                             gas gas_remaining wei
                                            args ((_4626 * 10^uint8(_4655) / ext_call.return_data[0]) + (10^uint8((2 * _4772 % 128) - 2) / ext_call.return_data[0]))
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5222 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5222] == mem[_5222]
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5875 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5943 = mem[_5875]
                                                require mem[_5875] == mem[_5875]
                                                mem[mem[64] + 4] = mem[_5875]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5943
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6405 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6405] == mem[_6405]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5893 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5965 = mem[_5893]
                                                    require mem[_5893] == mem[_5893]
                                                    mem[mem[64] + 4] = mem[_5893]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5965
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6428 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6428] == mem[_6428]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5894 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5966 = mem[_5894]
                                                    require mem[_5894] == mem[_5894]
                                                    mem[mem[64] + 4] = mem[_5894]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5966
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6429 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6429] == mem[_6429]
                                        else:
                                            if cd[132]:
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = this.address
                                                if mem[96] - 1 != idx:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5895 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5967 = mem[_5895]
                                                    require mem[_5895] == mem[_5895]
                                                    mem[mem[64] + 4] = mem[_5895]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5967
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6430 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6430] == mem[_6430]
                                                else:
                                                    if not cd[132]:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5918 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5994 = mem[_5918]
                                                        require mem[_5918] == mem[_5918]
                                                        mem[mem[64] + 4] = mem[_5918]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5994
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6454 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6454] == mem[_6454]
                                                    else:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5919 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5995 = mem[_5919]
                                                        require mem[_5919] == mem[_5919]
                                                        mem[mem[64] + 4] = mem[_5919]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5995
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6455 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6455] == mem[_6455]
                                    else:
                                        t = 10
                                        u = 1
                                        s = uint8((2 * mem[_4734] % 128) - 2)
                                        while s > 1:
                                            if t > -1 / t:
                                                revert with 'NH{q', 17
                                            if not bool(s):
                                                t = t * t
                                                u = u
                                                s = uint255(s) * 0.5
                                                continue 
                                            t = t * t
                                            u = u * t
                                            s = uint255(s) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if _4626 * 10^uint8(_4655) / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = (_4626 * 10^uint8(_4655) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                        require ext_code.size(stor2)
                                        call stor2.0xdb006a75 with:
                                             gas gas_remaining wei
                                            args ((_4626 * 10^uint8(_4655) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6710 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6710] == mem[_6710]
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6770 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6803 = mem[_6770]
                                                require mem[_6770] == mem[_6770]
                                                mem[mem[64] + 4] = mem[_6770]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6803
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6878 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6878] == mem[_6878]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6782 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6807 = mem[_6782]
                                                    require mem[_6782] == mem[_6782]
                                                    mem[mem[64] + 4] = mem[_6782]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6807
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6891 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6891] == mem[_6891]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6783 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6808 = mem[_6783]
                                                    require mem[_6783] == mem[_6783]
                                                    mem[mem[64] + 4] = mem[_6783]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6808
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6892 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6892] == mem[_6892]
                                        else:
                                            if cd[132]:
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = this.address
                                                if mem[96] - 1 != idx:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6784 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6809 = mem[_6784]
                                                    require mem[_6784] == mem[_6784]
                                                    mem[mem[64] + 4] = mem[_6784]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6809
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6893 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6893] == mem[_6893]
                                                else:
                                                    if not cd[132]:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6795 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6819 = mem[_6795]
                                                        require mem[_6795] == mem[_6795]
                                                        mem[mem[64] + 4] = mem[_6795]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _6819
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6903 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6903] == mem[_6903]
                                                    else:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6796 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _6820 = mem[_6796]
                                                        require mem[_6796] == mem[_6796]
                                                        mem[mem[64] + 4] = mem[_6796]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _6820
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6904 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6904] == mem[_6904]
                            else:
                                t = 10
                                u = 1
                                s = mem[_4646 + 31 len 1]
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 'NH{q', 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = u * t
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 'NH{q', 17
                                if _4626 and u * t > -1 / _4626:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                require ext_code.size(stor3)
                                staticcall stor3.0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _6704 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _6705 = mem[_6704]
                                require mem[_6704] == mem[_6704 + 31 len 1]
                                if mem[_6704 + 31 len 1] and 2 > 255 / mem[_6704 + 31 len 1]:
                                    revert with 'NH{q', 17
                                if 2 * mem[_6704] % 128 < 2:
                                    revert with 'NH{q', 17
                                if not uint8((2 * mem[_6704] % 128) - 2):
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _4626 * u * t / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_4626 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.0xdb006a75 with:
                                         gas gas_remaining wei
                                        args ((_4626 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6829 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_6829] == mem[_6829]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        if mem[96] - 1 != idx:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6974 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _6987 = mem[_6974]
                                            require mem[_6974] == mem[_6974]
                                            mem[mem[64] + 4] = mem[_6974]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _6987
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7082 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7082] == mem[_7082]
                                        else:
                                            if not cd[132]:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6980 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6989 = mem[_6980]
                                                require mem[_6980] == mem[_6980]
                                                mem[mem[64] + 4] = mem[_6980]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6989
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7089 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7089] == mem[_7089]
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6981 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6990 = mem[_6981]
                                                require mem[_6981] == mem[_6981]
                                                mem[mem[64] + 4] = mem[_6981]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6990
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7090 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7090] == mem[_7090]
                                    else:
                                        if cd[132]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6982 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _6991 = mem[_6982]
                                                require mem[_6982] == mem[_6982]
                                                mem[mem[64] + 4] = mem[_6982]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _6991
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7091 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7091] == mem[_7091]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6985 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6995 = mem[_6985]
                                                    require mem[_6985] == mem[_6985]
                                                    mem[mem[64] + 4] = mem[_6985]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6995
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7098 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7098] == mem[_7098]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6986 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _6996 = mem[_6986]
                                                    require mem[_6986] == mem[_6986]
                                                    mem[mem[64] + 4] = mem[_6986]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _6996
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7099 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7099] == mem[_7099]
                                else:
                                    if bool(bool(uint8((2 * mem[_6704] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_6704] % 128) - 2) < 32)):
                                        if 10^uint8((2 * mem[_6704] % 128) - 2) > -1:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if _4626 * u * t / ext_call.return_data[0] > -(10^uint8((2 * mem[_6704] % 128) - 2) / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = (_4626 * u * t / ext_call.return_data[0]) + (10^uint8((2 * mem[_6704] % 128) - 2) / ext_call.return_data[0])
                                        require ext_code.size(stor2)
                                        call stor2.0xdb006a75 with:
                                             gas gas_remaining wei
                                            args ((_4626 * u * t / ext_call.return_data[0]) + (10^uint8((2 * _6705 % 128) - 2) / ext_call.return_data[0]))
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6857 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6857] == mem[_6857]
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6998 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7021 = mem[_6998]
                                                require mem[_6998] == mem[_6998]
                                                mem[mem[64] + 4] = mem[_6998]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _7021
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7117 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7117] == mem[_7117]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7005 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7025 = mem[_7005]
                                                    require mem[_7005] == mem[_7005]
                                                    mem[mem[64] + 4] = mem[_7005]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _7025
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7120 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7120] == mem[_7120]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7006 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7026 = mem[_7006]
                                                    require mem[_7006] == mem[_7006]
                                                    mem[mem[64] + 4] = mem[_7006]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _7026
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7121 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7121] == mem[_7121]
                                        else:
                                            if cd[132]:
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = this.address
                                                if mem[96] - 1 != idx:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7007 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7027 = mem[_7007]
                                                    require mem[_7007] == mem[_7007]
                                                    mem[mem[64] + 4] = mem[_7007]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _7027
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7122 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7122] == mem[_7122]
                                                else:
                                                    if not cd[132]:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7014 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _7031 = mem[_7014]
                                                        require mem[_7014] == mem[_7014]
                                                        mem[mem[64] + 4] = mem[_7014]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _7031
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7125 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7125] == mem[_7125]
                                                    else:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7015 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _7032 = mem[_7015]
                                                        require mem[_7015] == mem[_7015]
                                                        mem[mem[64] + 4] = mem[_7015]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _7032
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7126 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7126] == mem[_7126]
                                    else:
                                        v = 10
                                        w = 1
                                        s = uint8((2 * mem[_6704] % 128) - 2)
                                        while s > 1:
                                            if v > -1 / v:
                                                revert with 'NH{q', 17
                                            if not bool(s):
                                                v = v * v
                                                w = w
                                                s = uint255(s) * 0.5
                                                continue 
                                            v = v * v
                                            w = w * v
                                            s = uint255(s) * 0.5
                                            continue 
                                        if w > -1 / v:
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if _4626 * u * t / ext_call.return_data[0] > -(w * v / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = (_4626 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0])
                                        require ext_code.size(stor2)
                                        call stor2.0xdb006a75 with:
                                             gas gas_remaining wei
                                            args ((_4626 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0]))
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7199 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7199] == mem[_7199]
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = this.address
                                            if mem[96] - 1 != idx:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7214 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7222 = mem[_7214]
                                                require mem[_7214] == mem[_7214]
                                                mem[mem[64] + 4] = mem[_7214]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _7222
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7238 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7238] == mem[_7238]
                                            else:
                                                if not cd[132]:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7217 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7223 = mem[_7217]
                                                    require mem[_7217] == mem[_7217]
                                                    mem[mem[64] + 4] = mem[_7217]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _7223
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7241 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7241] == mem[_7241]
                                                else:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7218 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7224 = mem[_7218]
                                                    require mem[_7218] == mem[_7218]
                                                    mem[mem[64] + 4] = mem[_7218]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _7224
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7242 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7242] == mem[_7242]
                                        else:
                                            if cd[132]:
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = this.address
                                                if mem[96] - 1 != idx:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7219 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7225 = mem[_7219]
                                                    require mem[_7219] == mem[_7219]
                                                    mem[mem[64] + 4] = mem[_7219]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _7225
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7243 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7243] == mem[_7243]
                                                else:
                                                    if not cd[132]:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7220 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _7226 = mem[_7220]
                                                        require mem[_7220] == mem[_7220]
                                                        mem[mem[64] + 4] = mem[_7220]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _7226
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7244 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7244] == mem[_7244]
                                                    else:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7221 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _7227 = mem[_7221]
                                                        require mem[_7221] == mem[_7221]
                                                        mem[mem[64] + 4] = mem[_7221]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _7227
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7245 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7245] == mem[_7245]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                u = _4626
                continue 
}



}
