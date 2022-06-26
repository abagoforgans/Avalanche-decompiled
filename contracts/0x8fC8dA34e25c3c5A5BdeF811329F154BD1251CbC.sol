contract main {




// =====================  Runtime code  =====================


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

function redeem(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(stor2)
    if arg1:
        if not arg2:
            call stor2.redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
        else:
            call stor2.redeemUnderlying(uint256 arg1) with:
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
        call stor2.redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function repay(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    if arg1:
        require ext_code.size(stor2)
        call stor2.repayBorrow(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
    else:
        if arg2:
            require ext_code.size(stor2)
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
        else:
            if arg1:
                require ext_code.size(stor2)
                call stor2.repayBorrow(uint256 arg1) with:
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
                call stor2.repayBorrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
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

function sub_348f946b(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint32(arg1)
    require arg2 == uint32(arg2)
    require arg3 == bool(arg3)
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    if not arg3:
        if eth.balance(this.address) <= 0:
            revert with 0, 'not enough avax token'
        mem[96] = 2
        mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[160] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        if block.timestamp > -16:
            revert with 'NH{q', 17
        mem[192] = 2
        mem[224 len 64] = call.data[calldata.size len 64]
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = eth.balance(this.address)
        mem[324] = 64
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args eth.balance(this.address), Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _151 = mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
        require mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 319 < return_data.size + 288
        _154 = mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]
        if mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 289
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]
        require _151 + (32 * _154) + 32 <= return_data.size
        idx = 0
        s = _151 + 320
        t = ceil32(return_data.size) + 320
        while idx < _154:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not uint32(arg2):
            if 1 >= _154:
                revert with 'NH{q', 50
            _287 = mem[ceil32(return_data.size) + 352]
            if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _287 * uint32(arg1)
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = 2
            idx = 0
            s = 128
            t = mem[64] + 164
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp + 15
            require ext_code.size(stor5)
            call stor5.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args _287 * uint32(arg1), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _410 = mem[_407]
            require mem[_407] <= test266151307()
            require _407 + mem[_407] + 31 < _407 + return_data.size
            _412 = mem[_407 + mem[_407]]
            if mem[_407 + mem[_407]] > test266151307():
                revert with 'NH{q', 65
            if _407 + ceil32(return_data.size) + floor32(mem[_407 + mem[_407]]) + 1 > test266151307() or floor32(mem[_407 + mem[_407]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _407 + ceil32(return_data.size) + floor32(mem[_407 + mem[_407]]) + 1
            mem[_407 + ceil32(return_data.size)] = _412
            require _410 + (32 * _412) + 32 <= return_data.size
            idx = 0
            s = _407 + _410 + 32
            t = _407 + ceil32(return_data.size) + 32
            while idx < _412:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if bool(bool(uint32(arg2) < 78)) or bool(bool(uint32(arg2) < 32)):
                if 10^uint32(arg2) > -1:
                    revert with 'NH{q', 17
                if 1 >= _154:
                    revert with 'NH{q', 50
                _290 = mem[ceil32(return_data.size) + 352]
                if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                    revert with 'NH{q', 17
                if not 10^uint32(arg2):
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _290 * uint32(arg1) / 10^uint32(arg2)
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args _290 * uint32(arg1) / 10^uint32(arg2), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _406 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _409 = mem[_406]
                require mem[_406] <= test266151307()
                require _406 + mem[_406] + 31 < _406 + return_data.size
                _411 = mem[_406 + mem[_406]]
                if mem[_406 + mem[_406]] > test266151307():
                    revert with 'NH{q', 65
                if _406 + ceil32(return_data.size) + floor32(mem[_406 + mem[_406]]) + 1 > test266151307() or floor32(mem[_406 + mem[_406]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _406 + ceil32(return_data.size) + floor32(mem[_406 + mem[_406]]) + 1
                mem[_406 + ceil32(return_data.size)] = _411
                require _409 + (32 * _411) + 32 <= return_data.size
                idx = 0
                s = _406 + _409 + 32
                t = _406 + ceil32(return_data.size) + 32
                while idx < _411:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                s = 10
                t = 1
                idx = uint32(arg2)
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
                if 1 >= _154:
                    revert with 'NH{q', 50
                _402 = mem[ceil32(return_data.size) + 352]
                if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _402 * uint32(arg1) / t * s
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                u = 128
                v = mem[64] + 164
                while idx < 2:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args _402 * uint32(arg1) / t * s, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _489 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _492 = mem[_489]
                require mem[_489] <= test266151307()
                require _489 + mem[_489] + 31 < _489 + return_data.size
                _495 = mem[_489 + mem[_489]]
                if mem[_489 + mem[_489]] > test266151307():
                    revert with 'NH{q', 65
                if _489 + ceil32(return_data.size) + floor32(mem[_489 + mem[_489]]) + 1 > test266151307() or floor32(mem[_489 + mem[_489]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _489 + ceil32(return_data.size) + floor32(mem[_489 + mem[_489]]) + 1
                mem[_489 + ceil32(return_data.size)] = _495
                require _492 + (32 * _495) + 32 <= return_data.size
                idx = 0
                s = _489 + _492 + 32
                t = _489 + ceil32(return_data.size) + 32
                while idx < _495:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        mem[96] = 1
        mem[128] = stor2
        mem[160] = 0x744532ae00000000000000000000000000000000000000000000000000000000
        mem[164] = 1
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
            args 1, address(this.address), Array(len=1, data=mem[292])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) <= 0:
            revert with 0, 'not enough avax token'
        mem[160] = 2
        mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[224] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        if block.timestamp > -16:
            revert with 'NH{q', 17
        mem[256] = 2
        mem[288 len 64] = call.data[calldata.size len 64]
        mem[352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[356] = eth.balance(this.address)
        mem[388] = 64
        mem[420] = 2
        idx = 0
        s = 192
        t = 452
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor5)
        staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args eth.balance(this.address), Array(len=2, data=mem[452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 32
        _284 = mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
        require mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 383 < return_data.size + 352
        _285 = mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]
        if mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 353
        mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]
        require _284 + (32 * _285) + 32 <= return_data.size
        idx = 0
        s = _284 + 384
        t = ceil32(return_data.size) + 384
        while idx < _285:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not uint32(arg2):
            if 1 >= _285:
                revert with 'NH{q', 50
            _408 = mem[ceil32(return_data.size) + 416]
            if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _408 * uint32(arg1)
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = 2
            idx = 0
            s = 192
            t = mem[64] + 164
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = block.timestamp + 15
            require ext_code.size(stor5)
            call stor5.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args _408 * uint32(arg1), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _494 = mem[_491]
            require mem[_491] <= test266151307()
            require _491 + mem[_491] + 31 < _491 + return_data.size
            _497 = mem[_491 + mem[_491]]
            if mem[_491 + mem[_491]] > test266151307():
                revert with 'NH{q', 65
            if _491 + ceil32(return_data.size) + floor32(mem[_491 + mem[_491]]) + 1 > test266151307() or floor32(mem[_491 + mem[_491]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _491 + ceil32(return_data.size) + floor32(mem[_491 + mem[_491]]) + 1
            mem[_491 + ceil32(return_data.size)] = _497
            require _494 + (32 * _497) + 32 <= return_data.size
            idx = 0
            s = _491 + _494 + 32
            t = _491 + ceil32(return_data.size) + 32
            while idx < _497:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if bool(bool(uint32(arg2) < 78)) or bool(bool(uint32(arg2) < 32)):
                if 10^uint32(arg2) > -1:
                    revert with 'NH{q', 17
                if 1 >= _285:
                    revert with 'NH{q', 50
                _415 = mem[ceil32(return_data.size) + 416]
                if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 17
                if not 10^uint32(arg2):
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _415 * uint32(arg1) / 10^uint32(arg2)
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 192
                t = mem[64] + 164
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args _415 * uint32(arg1) / 10^uint32(arg2), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _493 = mem[_490]
                require mem[_490] <= test266151307()
                require _490 + mem[_490] + 31 < _490 + return_data.size
                _496 = mem[_490 + mem[_490]]
                if mem[_490 + mem[_490]] > test266151307():
                    revert with 'NH{q', 65
                if _490 + ceil32(return_data.size) + floor32(mem[_490 + mem[_490]]) + 1 > test266151307() or floor32(mem[_490 + mem[_490]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _490 + ceil32(return_data.size) + floor32(mem[_490 + mem[_490]]) + 1
                mem[_490 + ceil32(return_data.size)] = _496
                require _493 + (32 * _496) + 32 <= return_data.size
                idx = 0
                s = _490 + _493 + 32
                t = _490 + ceil32(return_data.size) + 32
                while idx < _496:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                s = 10
                t = 1
                idx = uint32(arg2)
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
                if 1 >= _285:
                    revert with 'NH{q', 50
                _485 = mem[ceil32(return_data.size) + 416]
                if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _485 * uint32(arg1) / t * s
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                u = 192
                v = mem[64] + 164
                while idx < 2:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args _485 * uint32(arg1) / t * s, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _518 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _519 = mem[_518]
                require mem[_518] <= test266151307()
                require _518 + mem[_518] + 31 < _518 + return_data.size
                _520 = mem[_518 + mem[_518]]
                if mem[_518 + mem[_518]] > test266151307():
                    revert with 'NH{q', 65
                if _518 + ceil32(return_data.size) + floor32(mem[_518 + mem[_518]]) + 1 > test266151307() or floor32(mem[_518 + mem[_518]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _518 + ceil32(return_data.size) + floor32(mem[_518 + mem[_518]]) + 1
                mem[_518 + ceil32(return_data.size)] = _520
                require _519 + (32 * _520) + 32 <= return_data.size
                idx = 0
                s = _518 + _519 + 32
                t = _518 + ceil32(return_data.size) + 32
                while idx < _520:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
}

function sub_d19b8a4e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint32(arg1)
    require arg2 == uint32(arg2)
    require arg3 == bool(arg3)
    require arg4 == address(arg4)
    if stor0 != msg.sender:
        revert with 0, 'not owner'
    if not arg3:
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
        mem[ceil32(return_data.size) + 160] = address(arg4)
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
        _102 = mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
        _103 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 353
        mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require _102 + (32 * _103) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _102 + 384
        t = (4 * ceil32(return_data.size)) + 384
        while idx < _103:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not uint32(arg2):
            if 2 >= _103:
                revert with 'NH{q', 50
            _283 = mem[(4 * ceil32(return_data.size)) + 448]
            if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                revert with 'NH{q', 17
            _290 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = _283 * uint32(arg1)
            mem[mem[64] + 68] = 160
            _298 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < _298:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_290 + 100] = this.address
            mem[_290 + 132] = block.timestamp + 15
            require ext_code.size(stor5)
            call stor5.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _290 + (32 * _298) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _473 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _476 = mem[_473]
            require mem[_473] <= test266151307()
            require _473 + mem[_473] + 31 < _473 + return_data.size
            _478 = mem[_473 + mem[_473]]
            if mem[_473 + mem[_473]] > test266151307():
                revert with 'NH{q', 65
            if _473 + ceil32(return_data.size) + floor32(mem[_473 + mem[_473]]) + 1 > test266151307() or floor32(mem[_473 + mem[_473]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _473 + ceil32(return_data.size) + floor32(mem[_473 + mem[_473]]) + 1
            mem[_473 + ceil32(return_data.size)] = _478
            require _476 + (32 * _478) + 32 <= return_data.size
            idx = 0
            s = _473 + _476 + 32
            t = _473 + ceil32(return_data.size) + 32
            while idx < _478:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if bool(bool(uint32(arg2) < 78)) or bool(bool(uint32(arg2) < 32)):
                if 10^uint32(arg2) > -1:
                    revert with 'NH{q', 17
                if 2 >= _103:
                    revert with 'NH{q', 50
                _286 = mem[(4 * ceil32(return_data.size)) + 448]
                if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                    revert with 'NH{q', 17
                if not 10^uint32(arg2):
                    revert with 'NH{q', 18
                _295 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _286 * uint32(arg1) / 10^uint32(arg2)
                mem[mem[64] + 68] = 160
                _303 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 196
                while idx < _303:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_295 + 100] = this.address
                mem[_295 + 132] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _295 + (32 * _303) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _475 = mem[_472]
                require mem[_472] <= test266151307()
                require _472 + mem[_472] + 31 < _472 + return_data.size
                _477 = mem[_472 + mem[_472]]
                if mem[_472 + mem[_472]] > test266151307():
                    revert with 'NH{q', 65
                if _472 + ceil32(return_data.size) + floor32(mem[_472 + mem[_472]]) + 1 > test266151307() or floor32(mem[_472 + mem[_472]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _472 + ceil32(return_data.size) + floor32(mem[_472 + mem[_472]]) + 1
                mem[_472 + ceil32(return_data.size)] = _477
                require _475 + (32 * _477) + 32 <= return_data.size
                idx = 0
                s = _472 + _475 + 32
                t = _472 + ceil32(return_data.size) + 32
                while idx < _477:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                s = 10
                t = 1
                idx = uint32(arg2)
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
                if 2 >= _103:
                    revert with 'NH{q', 50
                _468 = mem[(4 * ceil32(return_data.size)) + 448]
                if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                _480 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _468 * uint32(arg1) / t * s
                mem[mem[64] + 68] = 160
                _490 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 196
                while idx < _490:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_480 + 100] = this.address
                mem[_480 + 132] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _480 + (32 * _490) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _617 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _624 = mem[_617]
                require mem[_617] <= test266151307()
                require _617 + mem[_617] + 31 < _617 + return_data.size
                _627 = mem[_617 + mem[_617]]
                if mem[_617 + mem[_617]] > test266151307():
                    revert with 'NH{q', 65
                if _617 + ceil32(return_data.size) + floor32(mem[_617 + mem[_617]]) + 1 > test266151307() or floor32(mem[_617 + mem[_617]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _617 + ceil32(return_data.size) + floor32(mem[_617 + mem[_617]]) + 1
                mem[_617 + ceil32(return_data.size)] = _627
                require _624 + (32 * _627) + 32 <= return_data.size
                idx = 0
                s = _617 + _624 + 32
                t = _617 + ceil32(return_data.size) + 32
                while idx < _627:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
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
        mem[ceil32(return_data.size) + 224] = address(arg4)
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
        _280 = mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 447 < (2 * ceil32(return_data.size)) + return_data.size + 416
        _281 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 417 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 417
        mem[(4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]
        require _280 + (32 * _281) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _280 + 448
        t = (4 * ceil32(return_data.size)) + 448
        while idx < _281:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not uint32(arg2):
            if 2 >= _281:
                revert with 'NH{q', 50
            _474 = mem[(4 * ceil32(return_data.size)) + 512]
            if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                revert with 'NH{q', 17
            _486 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = _474 * uint32(arg1)
            mem[mem[64] + 68] = 160
            _499 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
            idx = 0
            s = ceil32(return_data.size) + 192
            t = mem[64] + 196
            while idx < _499:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_486 + 100] = this.address
            mem[_486 + 132] = block.timestamp + 15
            require ext_code.size(stor5)
            call stor5.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _486 + (32 * _499) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _623 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _626 = mem[_623]
            require mem[_623] <= test266151307()
            require _623 + mem[_623] + 31 < _623 + return_data.size
            _629 = mem[_623 + mem[_623]]
            if mem[_623 + mem[_623]] > test266151307():
                revert with 'NH{q', 65
            if _623 + ceil32(return_data.size) + floor32(mem[_623 + mem[_623]]) + 1 > test266151307() or floor32(mem[_623 + mem[_623]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _623 + ceil32(return_data.size) + floor32(mem[_623 + mem[_623]]) + 1
            mem[_623 + ceil32(return_data.size)] = _629
            require _626 + (32 * _629) + 32 <= return_data.size
            idx = 0
            s = _623 + _626 + 32
            t = _623 + ceil32(return_data.size) + 32
            while idx < _629:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if bool(bool(uint32(arg2) < 78)) or bool(bool(uint32(arg2) < 32)):
                if 10^uint32(arg2) > -1:
                    revert with 'NH{q', 17
                if 2 >= _281:
                    revert with 'NH{q', 50
                _481 = mem[(4 * ceil32(return_data.size)) + 512]
                if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                    revert with 'NH{q', 17
                if not 10^uint32(arg2):
                    revert with 'NH{q', 18
                _492 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _481 * uint32(arg1) / 10^uint32(arg2)
                mem[mem[64] + 68] = 160
                _502 = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
                idx = 0
                s = ceil32(return_data.size) + 192
                t = mem[64] + 196
                while idx < _502:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_492 + 100] = this.address
                mem[_492 + 132] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _492 + (32 * _502) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _622 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _625 = mem[_622]
                require mem[_622] <= test266151307()
                require _622 + mem[_622] + 31 < _622 + return_data.size
                _628 = mem[_622 + mem[_622]]
                if mem[_622 + mem[_622]] > test266151307():
                    revert with 'NH{q', 65
                if _622 + ceil32(return_data.size) + floor32(mem[_622 + mem[_622]]) + 1 > test266151307() or floor32(mem[_622 + mem[_622]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _622 + ceil32(return_data.size) + floor32(mem[_622 + mem[_622]]) + 1
                mem[_622 + ceil32(return_data.size)] = _628
                require _625 + (32 * _628) + 32 <= return_data.size
                idx = 0
                s = _622 + _625 + 32
                t = _622 + ceil32(return_data.size) + 32
                while idx < _628:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                s = 10
                t = 1
                idx = uint32(arg2)
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
                if 2 >= _281:
                    revert with 'NH{q', 50
                _609 = mem[(4 * ceil32(return_data.size)) + 512]
                if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                _630 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _609 * uint32(arg1) / t * s
                mem[mem[64] + 68] = 160
                _638 = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
                idx = 0
                s = ceil32(return_data.size) + 192
                t = mem[64] + 196
                while idx < _638:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_630 + 100] = this.address
                mem[_630 + 132] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _630 + (32 * _638) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _693 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _698 = mem[_693]
                require mem[_693] <= test266151307()
                require _693 + mem[_693] + 31 < _693 + return_data.size
                _699 = mem[_693 + mem[_693]]
                if mem[_693 + mem[_693]] > test266151307():
                    revert with 'NH{q', 65
                if _693 + ceil32(return_data.size) + floor32(mem[_693 + mem[_693]]) + 1 > test266151307() or floor32(mem[_693 + mem[_693]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _693 + ceil32(return_data.size) + floor32(mem[_693 + mem[_693]]) + 1
                mem[_693 + ceil32(return_data.size)] = _699
                require _698 + (32 * _699) + 32 <= return_data.size
                idx = 0
                s = _693 + _698 + 32
                t = _693 + ceil32(return_data.size) + 32
                while idx < _699:
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

function sub_6a7fc6ad(?) {
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == uint32(cd[36])
    require cd[68] == bool(cd[68])
    require cd[100] == cd[100]
    require cd[132] == bool(cd[132])
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ExchangeRate == 0 or colateral == 0'
    if not cd[132]:
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
            _968 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _970 = mem[_968]
            require mem[_968] == mem[_968]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _978 = mem[(32 * idx) + 128]
                if ext_call.return_data[0] and mem[(32 * idx) + 128] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 18 > -uint32(cd[36]) + test266151307():
                    revert with 'NH{q', 17
                if not uint32(uint32(cd[36]) + 18):
                    if mem[_968] > -1:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1055 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1076 = mem[_1055]
                    require mem[_1055] == mem[_1055]
                    if mem[_1055] < _970 / ext_call.return_data[0] * _978:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = mem[_1055] - (_970 / ext_call.return_data[0] * _978)
                    require ext_code.size(stor2)
                    call stor2.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args (_1076 - (_970 / ext_call.return_data[0] * _978))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1184] == mem[_1184]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 != idx:
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1448 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1512 = mem[_1448]
                            require mem[_1448] == mem[_1448]
                            if mem[_1448] < 0:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[_1448]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1512
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2158 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2158] == mem[_2158]
                        else:
                            if not cd[68]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1472 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1533 = mem[_1472]
                                require mem[_1472] == mem[_1472]
                                if mem[_1472] < 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1472]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1533
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2200 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2200] == mem[_2200]
                            else:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = this.address
                                if not mem[(32 * idx) + 128]:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1514 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1569 = mem[_1514]
                                    require mem[_1514] == mem[_1514]
                                    mem[mem[64] + 4] = mem[_1514]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1569
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2015 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2015] == mem[_2015]
                                else:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1513 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1568 = mem[_1513]
                                    require mem[_1513] == mem[_1513]
                                    if mem[_1513] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1513]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1568
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2274 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2274] == mem[_2274]
                    else:
                        if cd[68]:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1475 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1534 = mem[_1475]
                                require mem[_1475] == mem[_1475]
                                if mem[_1475] < 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1475]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1534
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2202 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2202] == mem[_2202]
                            else:
                                if not cd[68]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1496 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1552 = mem[_1496]
                                    require mem[_1496] == mem[_1496]
                                    if mem[_1496] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1496]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1552
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2227 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2227] == mem[_2227]
                                else:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = this.address
                                    if not mem[(32 * idx) + 128]:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1536 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1599 = mem[_1536]
                                        require mem[_1536] == mem[_1536]
                                        mem[mem[64] + 4] = mem[_1536]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1599
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2048 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2048] == mem[_2048]
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1535 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1598 = mem[_1535]
                                        require mem[_1535] == mem[_1535]
                                        if mem[_1535] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_1535]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1598
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2354 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2354] == mem[_2354]
                else:
                    if bool(bool(uint32(uint32(cd[36]) + 18) < 78)) or bool(bool(uint32(uint32(cd[36]) + 18) < 32)):
                        if 10^uint32(uint32(cd[36]) + 18) > -1:
                            revert with 'NH{q', 17
                        if 10^uint32(uint32(cd[36]) + 18) and mem[_968] > -1 / 10^uint32(uint32(cd[36]) + 18):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1132 = mem[_1111]
                        require mem[_1111] == mem[_1111]
                        if mem[_1111] < 10^uint32(uint32(cd[36]) + 18) * _970 / ext_call.return_data[0] * _978:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = mem[_1111] - (10^uint32(uint32(cd[36]) + 18) * _970 / ext_call.return_data[0] * _978)
                        require ext_code.size(stor2)
                        call stor2.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args (_1132 - (10^uint32(uint32(cd[36]) + 18) * _970 / ext_call.return_data[0] * _978))
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1220 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1220] == mem[_1220]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1566 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1656 = mem[_1566]
                                require mem[_1566] == mem[_1566]
                                if mem[_1566] < 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1566]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1656
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2477 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2477] == mem[_2477]
                            else:
                                if not cd[68]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1594 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1686 = mem[_1594]
                                    require mem[_1594] == mem[_1594]
                                    if mem[_1594] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1594]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1686
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2543 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2543] == mem[_2543]
                                else:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = this.address
                                    if not mem[(32 * idx) + 128]:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1658 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1732 = mem[_1658]
                                        require mem[_1658] == mem[_1658]
                                        mem[mem[64] + 4] = mem[_1658]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1732
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2225 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2225] == mem[_2225]
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1657 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1731 = mem[_1657]
                                        require mem[_1657] == mem[_1657]
                                        if mem[_1657] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_1657]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1731
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2645 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2645] == mem[_2645]
                        else:
                            if cd[68]:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1597 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1687 = mem[_1597]
                                    require mem[_1597] == mem[_1597]
                                    if mem[_1597] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1597]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1687
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2545 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2545] == mem[_2545]
                                else:
                                    if not cd[68]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1629 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1714 = mem[_1629]
                                        require mem[_1629] == mem[_1629]
                                        if mem[_1629] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_1629]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1714
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2594 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2594] == mem[_2594]
                                    else:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[64] + 4] = this.address
                                        if not mem[(32 * idx) + 128]:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1689 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1754 = mem[_1689]
                                            require mem[_1689] == mem[_1689]
                                            mem[mem[64] + 4] = mem[_1689]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1754
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2272 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2272] == mem[_2272]
                                        else:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1688 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1753 = mem[_1688]
                                            require mem[_1688] == mem[_1688]
                                            if mem[_1688] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_1688]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1753
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2725 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2725] == mem[_2725]
                    else:
                        t = 10
                        u = 1
                        s = uint32(uint32(cd[36]) + 18)
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
                        if u * t and mem[_968] > -1 / u * t:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4700 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4706 = mem[_4700]
                        require mem[_4700] == mem[_4700]
                        if mem[_4700] < u * t * _970 / ext_call.return_data[0] * _978:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = mem[_4700] - (u * t * _970 / ext_call.return_data[0] * _978)
                        require ext_code.size(stor2)
                        call stor2.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args (_4706 - (u * t * _970 / ext_call.return_data[0] * _978))
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4724 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4724] == mem[_4724]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5008 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5064 = mem[_5008]
                                require mem[_5008] == mem[_5008]
                                if mem[_5008] < 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_5008]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _5064
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5258 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5258] == mem[_5258]
                            else:
                                if not cd[68]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5026 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5080 = mem[_5026]
                                    require mem[_5026] == mem[_5026]
                                    if mem[_5026] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_5026]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _5080
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5274 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5274] == mem[_5274]
                                else:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = this.address
                                    if not mem[(32 * idx) + 128]:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5066 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5113 = mem[_5066]
                                        require mem[_5066] == mem[_5066]
                                        mem[mem[64] + 4] = mem[_5066]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _5113
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5200 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5200] == mem[_5200]
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5065 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5112 = mem[_5065]
                                        require mem[_5065] == mem[_5065]
                                        if mem[_5065] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_5065]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _5112
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5309 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5309] == mem[_5309]
                        else:
                            if cd[68]:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5029 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5081 = mem[_5029]
                                    require mem[_5029] == mem[_5029]
                                    if mem[_5029] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_5029]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _5081
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5276 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5276] == mem[_5276]
                                else:
                                    if not cd[68]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5048 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5102 = mem[_5048]
                                        require mem[_5048] == mem[_5048]
                                        if mem[_5048] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_5048]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _5102
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5290 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5290] == mem[_5290]
                                    else:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[64] + 4] = this.address
                                        if not mem[(32 * idx) + 128]:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5083 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5121 = mem[_5083]
                                            require mem[_5083] == mem[_5083]
                                            mem[mem[64] + 4] = mem[_5083]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5121
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5212 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5212] == mem[_5212]
                                        else:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5082 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5120 = mem[_5082]
                                            require mem[_5082] == mem[_5082]
                                            if mem[_5082] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5082]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5120
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5320 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5320] == mem[_5320]
            else:
                if cd[100] > 0:
                    mem[mem[64] + 4] = cd[100]
                    require ext_code.size(stor2)
                    call stor2.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[100]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _992 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_992] == mem[_992]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 != idx:
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1064 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1089 = mem[_1064]
                            require mem[_1064] == mem[_1064]
                            if mem[_1064] < 0:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[_1064]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args _1089
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1195 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1195] == mem[_1195]
                        else:
                            if not cd[68]:
                                mem[mem[64] + 4] = this.address
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
                                _1100 = mem[_1068]
                                require mem[_1068] == mem[_1068]
                                if mem[_1068] < 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1068]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1203 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1203] == mem[_1203]
                            else:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = this.address
                                if not mem[(32 * idx) + 128]:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1091 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1121 = mem[_1091]
                                    require mem[_1091] == mem[_1091]
                                    mem[mem[64] + 4] = mem[_1091]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1121
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1176 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1176] == mem[_1176]
                                else:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1090 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1120 = mem[_1090]
                                    require mem[_1090] == mem[_1090]
                                    if mem[_1090] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1090]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1120
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1217 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1217] == mem[_1217]
                    else:
                        if cd[68]:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1071 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1101 = mem[_1071]
                                require mem[_1071] == mem[_1071]
                                if mem[_1071] < 0:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1071]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args _1101
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1205 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1205] == mem[_1205]
                            else:
                                if not cd[68]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1078 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1113 = mem[_1078]
                                    require mem[_1078] == mem[_1078]
                                    if mem[_1078] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1078]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1113
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1211 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1211] == mem[_1211]
                                else:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = this.address
                                    if not mem[(32 * idx) + 128]:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1103 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1128 = mem[_1103]
                                        require mem[_1103] == mem[_1103]
                                        mem[mem[64] + 4] = mem[_1103]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1128
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1182 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1182] == mem[_1182]
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1102 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1127 = mem[_1102]
                                        require mem[_1102] == mem[_1102]
                                        if mem[_1102] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_1102]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1127
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1223 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1223] == mem[_1223]
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _986 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _988 = mem[_986]
                    require mem[_986] == mem[_986 + 31 len 1]
                    if not mem[_986 + 31 len 1]:
                        if _970 and 1 > -1 / _970:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        require ext_code.size(stor3)
                        staticcall stor3.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1007 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1022 = mem[_1007]
                        require mem[_1007] == mem[_1007 + 31 len 1]
                        if mem[_1007 + 31 len 1] and 2 > 255 / mem[_1007 + 31 len 1]:
                            revert with 'NH{q', 17
                        if 2 * mem[_1007] % 128 < 2:
                            revert with 'NH{q', 17
                        if not uint8((2 * mem[_1007] % 128) - 2):
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if _970 / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = (_970 / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                            require ext_code.size(stor2)
                            call stor2.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((_970 / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1274 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1274] == mem[_1274]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2026 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2131 = mem[_2026]
                                    require mem[_2026] == mem[_2026]
                                    if mem[_2026] < 0:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_2026]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _2131
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3715 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3715] == mem[_3715]
                                else:
                                    if not cd[68]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2058 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2173 = mem[_2058]
                                        require mem[_2058] == mem[_2058]
                                        if mem[_2058] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_2058]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _2173
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3797 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3797] == mem[_3797]
                                    else:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[64] + 4] = this.address
                                        if not mem[(32 * idx) + 128]:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2133 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2246 = mem[_2133]
                                            require mem[_2133] == mem[_2133]
                                            mem[mem[64] + 4] = mem[_2133]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2246
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3388 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3388] == mem[_3388]
                                        else:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2132 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2245 = mem[_2132]
                                            require mem[_2132] == mem[_2132]
                                            if mem[_2132] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2132]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2245
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3929 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3929] == mem[_3929]
                            else:
                                if cd[68]:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2061 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2174 = mem[_2061]
                                        require mem[_2061] == mem[_2061]
                                        if mem[_2061] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_2061]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _2174
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3799 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3799] == mem[_3799]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2093 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2210 = mem[_2093]
                                            require mem[_2093] == mem[_2093]
                                            if mem[_2093] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2093]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2210
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3869 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3869] == mem[_3869]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2176 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2308 = mem[_2176]
                                                require mem[_2176] == mem[_2176]
                                                mem[mem[64] + 4] = mem[_2176]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2308
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3459 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3459] == mem[_3459]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2175 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2307 = mem[_2175]
                                                require mem[_2175] == mem[_2175]
                                                if mem[_2175] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2175]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2307
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3990 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3990] == mem[_3990]
                        else:
                            if bool(bool(uint8((2 * mem[_1007] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_1007] % 128) - 2) < 32)):
                                if 10^uint8((2 * mem[_1007] % 128) - 2) > -1:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _970 / ext_call.return_data[0] > -(10^uint8((2 * mem[_1007] % 128) - 2) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_970 / ext_call.return_data[0]) + (10^uint8((2 * mem[_1007] % 128) - 2) / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((_970 / ext_call.return_data[0]) + (10^uint8((2 * _1022 % 128) - 2) / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1295 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1295] == mem[_1295]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2243 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2441 = mem[_2243]
                                        require mem[_2243] == mem[_2243]
                                        if mem[_2243] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_2243]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _2441
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4114 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4114] == mem[_4114]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2303 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2504 = mem[_2303]
                                            require mem[_2303] == mem[_2303]
                                            if mem[_2303] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2303]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2504
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4171 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4171] == mem[_4171]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2443 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2614 = mem[_2443]
                                                require mem[_2443] == mem[_2443]
                                                mem[mem[64] + 4] = mem[_2443]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2614
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3867 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3867] == mem[_3867]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2442 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2613 = mem[_2442]
                                                require mem[_2442] == mem[_2442]
                                                if mem[_2442] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2442]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2613
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4298 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4298] == mem[_4298]
                                else:
                                    if cd[68]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2306 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2505 = mem[_2306]
                                            require mem[_2306] == mem[_2306]
                                            if mem[_2306] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2306]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2505
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4173 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4173] == mem[_4173]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2378 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2566 = mem[_2378]
                                                require mem[_2378] == mem[_2378]
                                                if mem[_2378] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2378]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2566
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4232 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4232] == mem[_4232]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2507 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2676 = mem[_2507]
                                                    require mem[_2507] == mem[_2507]
                                                    mem[mem[64] + 4] = mem[_2507]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2676
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3927 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3927] == mem[_3927]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2506 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2675 = mem[_2506]
                                                    require mem[_2506] == mem[_2506]
                                                    if mem[_2506] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_2506]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2675
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4373 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4373] == mem[_4373]
                            else:
                                t = 10
                                u = 1
                                s = uint8((2 * mem[_1007] % 128) - 2)
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
                                if _970 / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_970 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((_970 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4696 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4696] == mem[_4696]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4792 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _4831 = mem[_4792]
                                        require mem[_4792] == mem[_4792]
                                        if mem[_4792] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_4792]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _4831
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5014 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5014] == mem[_5014]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4803 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4844 = mem[_4803]
                                            require mem[_4803] == mem[_4803]
                                            if mem[_4803] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_4803]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _4844
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5034 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5034] == mem[_5034]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4833 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4864 = mem[_4833]
                                                require mem[_4833] == mem[_4833]
                                                mem[mem[64] + 4] = mem[_4833]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4864
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4969 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4969] == mem[_4969]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4832 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4863 = mem[_4832]
                                                require mem[_4832] == mem[_4832]
                                                if mem[_4832] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_4832]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4863
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5071 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5071] == mem[_5071]
                                else:
                                    if cd[68]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4806 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4845 = mem[_4806]
                                            require mem[_4806] == mem[_4806]
                                            if mem[_4806] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_4806]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _4845
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5036 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5036] == mem[_5036]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4819 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4857 = mem[_4819]
                                                require mem[_4819] == mem[_4819]
                                                if mem[_4819] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_4819]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4857
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5054 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5054] == mem[_5054]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4847 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4876 = mem[_4847]
                                                    require mem[_4847] == mem[_4847]
                                                    mem[mem[64] + 4] = mem[_4847]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4876
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4978 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4978] == mem[_4978]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4846 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4875 = mem[_4846]
                                                    require mem[_4846] == mem[_4846]
                                                    if mem[_4846] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_4846]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4875
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5090 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5090] == mem[_5090]
                    else:
                        if bool(bool(mem[_986 + 31 len 1] < 78)) or bool(bool(mem[_986 + 31 len 1] < 32)):
                            if 10^mem[_986 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if _970 and 10^mem[_986 + 31 len 1] > -1 / _970:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            require ext_code.size(stor3)
                            staticcall stor3.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1041 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1050 = mem[_1041]
                            require mem[_1041] == mem[_1041 + 31 len 1]
                            if mem[_1041 + 31 len 1] and 2 > 255 / mem[_1041 + 31 len 1]:
                                revert with 'NH{q', 17
                            if 2 * mem[_1041] % 128 < 2:
                                revert with 'NH{q', 17
                            if not uint8((2 * mem[_1041] % 128) - 2):
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _970 * 10^uint8(_988) / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_970 * 10^uint8(_988) / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((_970 * 10^uint8(_988) / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1294] == mem[_1294]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
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
                                        _2432 = mem[_2239]
                                        require mem[_2239] == mem[_2239]
                                        if mem[_2239] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_2239]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _2432
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4108 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4108] == mem[_4108]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2293 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2494 = mem[_2293]
                                            require mem[_2293] == mem[_2293]
                                            if mem[_2293] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2293]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2494
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4167 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4167] == mem[_4167]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2434 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2609 = mem[_2434]
                                                require mem[_2434] == mem[_2434]
                                                mem[mem[64] + 4] = mem[_2434]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2609
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3864 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3864] == mem[_3864]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2433 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2608 = mem[_2433]
                                                require mem[_2433] == mem[_2433]
                                                if mem[_2433] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2433]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2608
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4290 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4290] == mem[_4290]
                                else:
                                    if cd[68]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2296 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2495 = mem[_2296]
                                            require mem[_2296] == mem[_2296]
                                            if mem[_2296] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2296]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2495
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4169 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4169] == mem[_4169]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2368 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2559 = mem[_2368]
                                                require mem[_2368] == mem[_2368]
                                                if mem[_2368] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2368]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2559
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4228 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4228] == mem[_4228]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2497 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2671 = mem[_2497]
                                                    require mem[_2497] == mem[_2497]
                                                    mem[mem[64] + 4] = mem[_2497]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2671
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3924 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3924] == mem[_3924]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2496 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2670 = mem[_2496]
                                                    require mem[_2496] == mem[_2496]
                                                    if mem[_2496] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_2496]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2670
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4363 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4363] == mem[_4363]
                            else:
                                if bool(bool(uint8((2 * mem[_1041] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_1041] % 128) - 2) < 32)):
                                    if 10^uint8((2 * mem[_1041] % 128) - 2) > -1:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _970 * 10^uint8(_988) / ext_call.return_data[0] > -(10^uint8((2 * mem[_1041] % 128) - 2) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_970 * 10^uint8(_988) / ext_call.return_data[0]) + (10^uint8((2 * mem[_1041] % 128) - 2) / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.redeem(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((_970 * 10^uint8(_988) / ext_call.return_data[0]) + (10^uint8((2 * _1050 % 128) - 2) / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1351 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1351] == mem[_1351]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2606 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2827 = mem[_2606]
                                            require mem[_2606] == mem[_2606]
                                            if mem[_2606] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2606]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2827
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4513 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4513] == mem[_4513]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2666 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2897 = mem[_2666]
                                                require mem[_2666] == mem[_2666]
                                                if mem[_2666] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2666]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2897
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4572 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4572] == mem[_4572]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2829 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3072 = mem[_2829]
                                                    require mem[_2829] == mem[_2829]
                                                    mem[mem[64] + 4] = mem[_2829]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _3072
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4226 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4226] == mem[_4226]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2828 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3071 = mem[_2828]
                                                    require mem[_2828] == mem[_2828]
                                                    if mem[_2828] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_2828]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _3071
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4661 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4661] == mem[_4661]
                                    else:
                                        if cd[68]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            if mem[96] - 1 != idx:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2669 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2898 = mem[_2669]
                                                require mem[_2669] == mem[_2669]
                                                if mem[_2669] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2669]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2898
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4574 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4574] == mem[_4574]
                                            else:
                                                if not cd[68]:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2750 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2984 = mem[_2750]
                                                    require mem[_2750] == mem[_2750]
                                                    if mem[_2750] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_2750]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2984
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4627 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4627] == mem[_4627]
                                                else:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[mem[64] + 4] = this.address
                                                    if not mem[(32 * idx) + 128]:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2900 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _3150 = mem[_2900]
                                                        require mem[_2900] == mem[_2900]
                                                        mem[mem[64] + 4] = mem[_2900]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _3150
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4288 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4288] == mem[_4288]
                                                    else:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2899 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _3149 = mem[_2899]
                                                        require mem[_2899] == mem[_2899]
                                                        if mem[_2899] < 0:
                                                            revert with 'NH{q', 17
                                                        mem[mem[64] + 4] = mem[_2899]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _3149
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4666 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4666] == mem[_4666]
                                else:
                                    t = 10
                                    u = 1
                                    s = uint8((2 * mem[_1041] % 128) - 2)
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
                                    if _970 * 10^uint8(_988) / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_970 * 10^uint8(_988) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.redeem(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((_970 * 10^uint8(_988) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4695 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4695] == mem[_4695]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4790 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4828 = mem[_4790]
                                            require mem[_4790] == mem[_4790]
                                            if mem[_4790] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_4790]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _4828
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5011 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5011] == mem[_5011]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4799 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4840 = mem[_4799]
                                                require mem[_4799] == mem[_4799]
                                                if mem[_4799] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_4799]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4840
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5031 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5031] == mem[_5031]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4830 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4862 = mem[_4830]
                                                    require mem[_4830] == mem[_4830]
                                                    mem[mem[64] + 4] = mem[_4830]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4862
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4967 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4967] == mem[_4967]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4829 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4861 = mem[_4829]
                                                    require mem[_4829] == mem[_4829]
                                                    if mem[_4829] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_4829]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4861
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5069 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5069] == mem[_5069]
                                    else:
                                        if cd[68]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            if mem[96] - 1 != idx:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4802 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4841 = mem[_4802]
                                                require mem[_4802] == mem[_4802]
                                                if mem[_4802] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_4802]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4841
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5033 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5033] == mem[_5033]
                                            else:
                                                if not cd[68]:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4816 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4856 = mem[_4816]
                                                    require mem[_4816] == mem[_4816]
                                                    if mem[_4816] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_4816]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4856
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5052 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5052] == mem[_5052]
                                                else:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[mem[64] + 4] = this.address
                                                    if not mem[(32 * idx) + 128]:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4843 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _4874 = mem[_4843]
                                                        require mem[_4843] == mem[_4843]
                                                        mem[mem[64] + 4] = mem[_4843]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _4874
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4977 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4977] == mem[_4977]
                                                    else:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4842 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _4873 = mem[_4842]
                                                        require mem[_4842] == mem[_4842]
                                                        if mem[_4842] < 0:
                                                            revert with 'NH{q', 17
                                                        mem[mem[64] + 4] = mem[_4842]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _4873
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5087 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5087] == mem[_5087]
                        else:
                            t = 10
                            u = 1
                            s = mem[_986 + 31 len 1]
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
                            if _970 and u * t > -1 / _970:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            require ext_code.size(stor3)
                            staticcall stor3.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4686 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4688 = mem[_4686]
                            require mem[_4686] == mem[_4686 + 31 len 1]
                            if mem[_4686 + 31 len 1] and 2 > 255 / mem[_4686 + 31 len 1]:
                                revert with 'NH{q', 17
                            if 2 * mem[_4686] % 128 < 2:
                                revert with 'NH{q', 17
                            if not uint8((2 * mem[_4686] % 128) - 2):
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _970 * u * t / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_970 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((_970 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4884 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4884] == mem[_4884]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5227 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5279 = mem[_5227]
                                        require mem[_5227] == mem[_5227]
                                        if mem[_5227] < 0:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_5227]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _5279
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5620 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5620] == mem[_5620]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5243 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5295 = mem[_5243]
                                            require mem[_5243] == mem[_5243]
                                            if mem[_5243] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5243]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5295
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5630 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5630] == mem[_5630]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5281 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5326 = mem[_5281]
                                                require mem[_5281] == mem[_5281]
                                                mem[mem[64] + 4] = mem[_5281]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5326
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5579 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5579] == mem[_5579]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5280 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5325 = mem[_5280]
                                                require mem[_5280] == mem[_5280]
                                                if mem[_5280] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5280]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5325
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5652 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5652] == mem[_5652]
                                else:
                                    if cd[68]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5246 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5296 = mem[_5246]
                                            require mem[_5246] == mem[_5246]
                                            if mem[_5246] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5246]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5296
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5632 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5632] == mem[_5632]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5263 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5312 = mem[_5263]
                                                require mem[_5263] == mem[_5263]
                                                if mem[_5263] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5263]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5312
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5641 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5641] == mem[_5641]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5298 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5348 = mem[_5298]
                                                    require mem[_5298] == mem[_5298]
                                                    mem[mem[64] + 4] = mem[_5298]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5348
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5590 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5590] == mem[_5590]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5297 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5347 = mem[_5297]
                                                    require mem[_5297] == mem[_5297]
                                                    if mem[_5297] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5297]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5347
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5664 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5664] == mem[_5664]
                            else:
                                if bool(bool(uint8((2 * mem[_4686] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_4686] % 128) - 2) < 32)):
                                    if 10^uint8((2 * mem[_4686] % 128) - 2) > -1:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _970 * u * t / ext_call.return_data[0] > -(10^uint8((2 * mem[_4686] % 128) - 2) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_970 * u * t / ext_call.return_data[0]) + (10^uint8((2 * mem[_4686] % 128) - 2) / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.redeem(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((_970 * u * t / ext_call.return_data[0]) + (10^uint8((2 * _4688 % 128) - 2) / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4896 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4896] == mem[_4896]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5323 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5391 = mem[_5323]
                                            require mem[_5323] == mem[_5323]
                                            if mem[_5323] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5323]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5391
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5691 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5691] == mem[_5691]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5343 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5410 = mem[_5343]
                                                require mem[_5343] == mem[_5343]
                                                if mem[_5343] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5343]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5410
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5703 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5703] == mem[_5703]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5393 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5442 = mem[_5393]
                                                    require mem[_5393] == mem[_5393]
                                                    mem[mem[64] + 4] = mem[_5393]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5442
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5639 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5639] == mem[_5639]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5392 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5441 = mem[_5392]
                                                    require mem[_5392] == mem[_5392]
                                                    if mem[_5392] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5392]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5441
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5727 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5727] == mem[_5727]
                                    else:
                                        if cd[68]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            if mem[96] - 1 != idx:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5346 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5411 = mem[_5346]
                                                require mem[_5346] == mem[_5346]
                                                if mem[_5346] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5346]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5411
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5705 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5705] == mem[_5705]
                                            else:
                                                if not cd[68]:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5370 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5430 = mem[_5370]
                                                    require mem[_5370] == mem[_5370]
                                                    if mem[_5370] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5370]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5430
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5714 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5714] == mem[_5714]
                                                else:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[mem[64] + 4] = this.address
                                                    if not mem[(32 * idx) + 128]:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5413 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5452 = mem[_5413]
                                                        require mem[_5413] == mem[_5413]
                                                        mem[mem[64] + 4] = mem[_5413]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5452
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5650 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5650] == mem[_5650]
                                                    else:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5412 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5451 = mem[_5412]
                                                        require mem[_5412] == mem[_5412]
                                                        if mem[_5412] < 0:
                                                            revert with 'NH{q', 17
                                                        mem[mem[64] + 4] = mem[_5412]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5451
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5745 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5745] == mem[_5745]
                                else:
                                    v = 10
                                    w = 1
                                    s = uint8((2 * mem[_4686] % 128) - 2)
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
                                    if _970 * u * t / ext_call.return_data[0] > -(w * v / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_970 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.redeem(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((_970 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5896 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5896] == mem[_5896]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5936 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5954 = mem[_5936]
                                            require mem[_5936] == mem[_5936]
                                            if mem[_5936] < 0:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5936]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5954
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6010 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6010] == mem[_6010]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5940 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5960 = mem[_5940]
                                                require mem[_5940] == mem[_5940]
                                                if mem[_5940] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5940]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5960
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6016 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6016] == mem[_6016]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5956 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5971 = mem[_5956]
                                                    require mem[_5956] == mem[_5956]
                                                    mem[mem[64] + 4] = mem[_5956]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5971
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5996 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5996] == mem[_5996]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5955 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5970 = mem[_5955]
                                                    require mem[_5955] == mem[_5955]
                                                    if mem[_5955] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5955]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5970
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6027 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6027] == mem[_6027]
                                    else:
                                        if cd[68]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            if mem[96] - 1 != idx:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5943 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5961 = mem[_5943]
                                                require mem[_5943] == mem[_5943]
                                                if mem[_5943] < 0:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5943]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5961
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6018 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6018] == mem[_6018]
                                            else:
                                                if not cd[68]:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5948 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5968 = mem[_5948]
                                                    require mem[_5948] == mem[_5948]
                                                    if mem[_5948] < 0:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5948]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5968
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6022 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6022] == mem[_6022]
                                                else:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[mem[64] + 4] = this.address
                                                    if not mem[(32 * idx) + 128]:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5963 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5975 = mem[_5963]
                                                        require mem[_5963] == mem[_5963]
                                                        mem[mem[64] + 4] = mem[_5963]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5975
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6000 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6000] == mem[_6000]
                                                    else:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5962 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5974 = mem[_5962]
                                                        require mem[_5962] == mem[_5962]
                                                        if mem[_5962] < 0:
                                                            revert with 'NH{q', 17
                                                        mem[mem[64] + 4] = mem[_5962]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5974
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6032 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6032] == mem[_6032]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _970
            continue 
    else:
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 101] = this.address
        require ext_code.size(stor3)
        staticcall stor3.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
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
            _969 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _971 = mem[_969]
            require mem[_969] == mem[_969]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _982 = mem[(32 * idx) + 128]
                if ext_call.return_data[0] and mem[(32 * idx) + 128] > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 18 > -uint32(cd[36]) + test266151307():
                    revert with 'NH{q', 17
                if not uint32(uint32(cd[36]) + 18):
                    if mem[_969] > -1:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1060 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1081 = mem[_1060]
                    require mem[_1060] == mem[_1060]
                    if mem[_1060] < _971 / ext_call.return_data[0] * _982:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = mem[_1060] - (_971 / ext_call.return_data[0] * _982)
                    require ext_code.size(stor2)
                    call stor2.redeem(uint256 arg1) with:
                         gas gas_remaining wei
                        args (_1081 - (_971 / ext_call.return_data[0] * _982))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1186 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1186] == mem[_1186]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 != idx:
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1460 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1522 = mem[_1460]
                            require mem[_1460] == mem[_1460]
                            if mem[_1460] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[_1460] - ext_call.return_data[0]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (_1522 - ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2179 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2179] == mem[_2179]
                        else:
                            if not cd[68]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1485 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1543 = mem[_1485]
                                require mem[_1485] == mem[_1485]
                                if mem[_1485] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1485] - ext_call.return_data[0]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_1543 - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2213 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2213] == mem[_2213]
                            else:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = this.address
                                if not mem[(32 * idx) + 128]:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1524 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1581 = mem[_1524]
                                    require mem[_1524] == mem[_1524]
                                    mem[mem[64] + 4] = mem[_1524]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1581
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2031 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2031] == mem[_2031]
                                else:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1523 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1580 = mem[_1523]
                                    require mem[_1523] == mem[_1523]
                                    if mem[_1523] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1523] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_1580 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2313 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2313] == mem[_2313]
                    else:
                        if cd[68]:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1488 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1544 = mem[_1488]
                                require mem[_1488] == mem[_1488]
                                if mem[_1488] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1488] - ext_call.return_data[0]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_1544 - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2215 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2215] == mem[_2215]
                            else:
                                if not cd[68]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1504 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1559 = mem[_1504]
                                    require mem[_1504] == mem[_1504]
                                    if mem[_1504] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1504] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_1559 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2250 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2250] == mem[_2250]
                                else:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = this.address
                                    if not mem[(32 * idx) + 128]:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1546 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1616 = mem[_1546]
                                        require mem[_1546] == mem[_1546]
                                        mem[mem[64] + 4] = mem[_1546]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1616
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2066 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2066] == mem[_2066]
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1545 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1615 = mem[_1545]
                                        require mem[_1545] == mem[_1545]
                                        if mem[_1545] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_1545] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_1615 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2387 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2387] == mem[_2387]
                else:
                    if bool(bool(uint32(uint32(cd[36]) + 18) < 78)) or bool(bool(uint32(uint32(cd[36]) + 18) < 32)):
                        if 10^uint32(uint32(cd[36]) + 18) > -1:
                            revert with 'NH{q', 17
                        if 10^uint32(uint32(cd[36]) + 18) and mem[_969] > -1 / 10^uint32(uint32(cd[36]) + 18):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1115 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1134 = mem[_1115]
                        require mem[_1115] == mem[_1115]
                        if mem[_1115] < 10^uint32(uint32(cd[36]) + 18) * _971 / ext_call.return_data[0] * _982:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = mem[_1115] - (10^uint32(uint32(cd[36]) + 18) * _971 / ext_call.return_data[0] * _982)
                        require ext_code.size(stor2)
                        call stor2.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args (_1134 - (10^uint32(uint32(cd[36]) + 18) * _971 / ext_call.return_data[0] * _982))
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1224 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1224] == mem[_1224]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1578 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1671 = mem[_1578]
                                require mem[_1578] == mem[_1578]
                                if mem[_1578] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1578] - ext_call.return_data[0]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_1671 - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2511 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2511] == mem[_2511]
                            else:
                                if not cd[68]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1611 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1700 = mem[_1611]
                                    require mem[_1611] == mem[_1611]
                                    if mem[_1611] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1611] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_1700 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2568 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2568] == mem[_2568]
                                else:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = this.address
                                    if not mem[(32 * idx) + 128]:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1673 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1743 = mem[_1673]
                                        require mem[_1673] == mem[_1673]
                                        mem[mem[64] + 4] = mem[_1673]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1743
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2248 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2248] == mem[_2248]
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1672 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1742 = mem[_1672]
                                        require mem[_1672] == mem[_1672]
                                        if mem[_1672] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_1672] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_1742 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2684 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2684] == mem[_2684]
                        else:
                            if cd[68]:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1614 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1701 = mem[_1614]
                                    require mem[_1614] == mem[_1614]
                                    if mem[_1614] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1614] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_1701 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2570 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2570] == mem[_2570]
                                else:
                                    if not cd[68]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1643 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1724 = mem[_1643]
                                        require mem[_1643] == mem[_1643]
                                        if mem[_1643] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_1643] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_1724 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2617 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_2617] == mem[_2617]
                                    else:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[64] + 4] = this.address
                                        if not mem[(32 * idx) + 128]:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1703 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1768 = mem[_1703]
                                            require mem[_1703] == mem[_1703]
                                            mem[mem[64] + 4] = mem[_1703]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _1768
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2311 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2311] == mem[_2311]
                                        else:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1702 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1767 = mem[_1702]
                                            require mem[_1702] == mem[_1702]
                                            if mem[_1702] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_1702] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_1767 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2768 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2768] == mem[_2768]
                    else:
                        t = 10
                        u = 1
                        s = uint32(uint32(cd[36]) + 18)
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
                        if u * t and mem[_969] > -1 / u * t:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2)
                        staticcall stor2.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4707 = mem[_4701]
                        require mem[_4701] == mem[_4701]
                        if mem[_4701] < u * t * _971 / ext_call.return_data[0] * _982:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = mem[_4701] - (u * t * _971 / ext_call.return_data[0] * _982)
                        require ext_code.size(stor2)
                        call stor2.redeem(uint256 arg1) with:
                             gas gas_remaining wei
                            args (_4707 - (u * t * _971 / ext_call.return_data[0] * _982))
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4725 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4725] == mem[_4725]
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5017 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5072 = mem[_5017]
                                require mem[_5017] == mem[_5017]
                                if mem[_5017] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_5017] - ext_call.return_data[0]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_5072 - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5266 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5266] == mem[_5266]
                            else:
                                if not cd[68]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5037 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5091 = mem[_5037]
                                    require mem[_5037] == mem[_5037]
                                    if mem[_5037] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_5037] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_5091 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5282 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5282] == mem[_5282]
                                else:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = this.address
                                    if not mem[(32 * idx) + 128]:
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
                                        _5117 = mem[_5074]
                                        require mem[_5074] == mem[_5074]
                                        mem[mem[64] + 4] = mem[_5074]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _5117
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5206 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5206] == mem[_5206]
                                    else:
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
                                        _5116 = mem[_5073]
                                        require mem[_5073] == mem[_5073]
                                        if mem[_5073] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_5073] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_5116 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5314 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5314] == mem[_5314]
                        else:
                            if cd[68]:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5040 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5092 = mem[_5040]
                                    require mem[_5040] == mem[_5040]
                                    if mem[_5040] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_5040] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_5092 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5284 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5284] == mem[_5284]
                                else:
                                    if not cd[68]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5056 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5107 = mem[_5056]
                                        require mem[_5056] == mem[_5056]
                                        if mem[_5056] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_5056] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_5107 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5299 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5299] == mem[_5299]
                                    else:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[64] + 4] = this.address
                                        if not mem[(32 * idx) + 128]:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5094 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5125 = mem[_5094]
                                            require mem[_5094] == mem[_5094]
                                            mem[mem[64] + 4] = mem[_5094]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _5125
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5217 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5217] == mem[_5217]
                                        else:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5093 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5124 = mem[_5093]
                                            require mem[_5093] == mem[_5093]
                                            if mem[_5093] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5093] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_5124 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5329 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5329] == mem[_5329]
            else:
                if cd[100] > 0:
                    mem[mem[64] + 4] = cd[100]
                    require ext_code.size(stor2)
                    call stor2.redeemUnderlying(uint256 arg1) with:
                         gas gas_remaining wei
                        args cd[100]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _993 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_993] == mem[_993]
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if mem[96] - 1 != idx:
                        if mem[96] < 1:
                            revert with 'NH{q', 17
                        if mem[96] - 1 != idx:
                            mem[mem[64] + 4] = this.address
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
                            _1095 = mem[_1066]
                            require mem[_1066] == mem[_1066]
                            if mem[_1066] < ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = mem[_1066] - ext_call.return_data[0]
                            require ext_code.size(stor2)
                            call stor2.repayBorrow(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (_1095 - ext_call.return_data[0])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1199 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1199] == mem[_1199]
                        else:
                            if not cd[68]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1072 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1106 = mem[_1072]
                                require mem[_1072] == mem[_1072]
                                if mem[_1072] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1072] - ext_call.return_data[0]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_1106 - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1207 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1207] == mem[_1207]
                            else:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[mem[64] + 4] = this.address
                                if not mem[(32 * idx) + 128]:
                                    require ext_code.size(stor2)
                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                         gas gas_remaining wei
                                        args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1097 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1125 = mem[_1097]
                                    require mem[_1097] == mem[_1097]
                                    mem[mem[64] + 4] = mem[_1097]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args _1125
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1180 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1180] == mem[_1180]
                                else:
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1096 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1124 = mem[_1096]
                                    require mem[_1096] == mem[_1096]
                                    if mem[_1096] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1096] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_1124 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1219 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1219] == mem[_1219]
                    else:
                        if cd[68]:
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1075 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1107 = mem[_1075]
                                require mem[_1075] == mem[_1075]
                                if mem[_1075] < ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = mem[_1075] - ext_call.return_data[0]
                                require ext_code.size(stor2)
                                call stor2.repayBorrow(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args (_1107 - ext_call.return_data[0])
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1209 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1209] == mem[_1209]
                            else:
                                if not cd[68]:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1083 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1117 = mem[_1083]
                                    require mem[_1083] == mem[_1083]
                                    if mem[_1083] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_1083] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_1117 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1214 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1214] == mem[_1214]
                                else:
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    mem[mem[64] + 4] = this.address
                                    if not mem[(32 * idx) + 128]:
                                        require ext_code.size(stor2)
                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                             gas gas_remaining wei
                                            args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1109 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1131 = mem[_1109]
                                        require mem[_1109] == mem[_1109]
                                        mem[mem[64] + 4] = mem[_1109]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args _1131
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1183 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1183] == mem[_1183]
                                    else:
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1108 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1130 = mem[_1108]
                                        require mem[_1108] == mem[_1108]
                                        if mem[_1108] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_1108] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_1130 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1227 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1227] == mem[_1227]
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _987 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _989 = mem[_987]
                    require mem[_987] == mem[_987 + 31 len 1]
                    if not mem[_987 + 31 len 1]:
                        if _971 and 1 > -1 / _971:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        require ext_code.size(stor3)
                        staticcall stor3.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1009 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1025 = mem[_1009]
                        require mem[_1009] == mem[_1009 + 31 len 1]
                        if mem[_1009 + 31 len 1] and 2 > 255 / mem[_1009 + 31 len 1]:
                            revert with 'NH{q', 17
                        if 2 * mem[_1009] % 128 < 2:
                            revert with 'NH{q', 17
                        if not uint8((2 * mem[_1009] % 128) - 2):
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if _971 / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = (_971 / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                            require ext_code.size(stor2)
                            call stor2.redeem(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ((_971 / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1277] == mem[_1277]
                            if mem[96] < 1:
                                revert with 'NH{q', 17
                            if mem[96] - 1 != idx:
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2042 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2153 = mem[_2042]
                                    require mem[_2042] == mem[_2042]
                                    if mem[_2042] < ext_call.return_data[0]:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = mem[_2042] - ext_call.return_data[0]
                                    require ext_code.size(stor2)
                                    call stor2.repayBorrow(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args (_2153 - ext_call.return_data[0])
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3757 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3757] == mem[_3757]
                                else:
                                    if not cd[68]:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2076 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2194 = mem[_2076]
                                        require mem[_2076] == mem[_2076]
                                        if mem[_2076] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_2076] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_2194 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3837 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3837] == mem[_3837]
                                    else:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[64] + 4] = this.address
                                        if not mem[(32 * idx) + 128]:
                                            require ext_code.size(stor2)
                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                 gas gas_remaining wei
                                                args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2155 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2269 = mem[_2155]
                                            require mem[_2155] == mem[_2155]
                                            mem[mem[64] + 4] = mem[_2155]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args _2269
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3418 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3418] == mem[_3418]
                                        else:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2154 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2268 = mem[_2154]
                                            require mem[_2154] == mem[_2154]
                                            if mem[_2154] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2154] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_2268 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3957 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3957] == mem[_3957]
                            else:
                                if cd[68]:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
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
                                        _2195 = mem[_2079]
                                        require mem[_2079] == mem[_2079]
                                        if mem[_2079] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_2079] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_2195 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3839 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3839] == mem[_3839]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2109 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2223 = mem[_2109]
                                            require mem[_2109] == mem[_2109]
                                            if mem[_2109] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2109] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_2223 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3900 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3900] == mem[_3900]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2197 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2347 = mem[_2197]
                                                require mem[_2197] == mem[_2197]
                                                mem[mem[64] + 4] = mem[_2197]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2347
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3499 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3499] == mem[_3499]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2196 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2346 = mem[_2196]
                                                require mem[_2196] == mem[_2196]
                                                if mem[_2196] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2196] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_2346 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4023 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4023] == mem[_4023]
                        else:
                            if bool(bool(uint8((2 * mem[_1009] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_1009] % 128) - 2) < 32)):
                                if 10^uint8((2 * mem[_1009] % 128) - 2) > -1:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _971 / ext_call.return_data[0] > -(10^uint8((2 * mem[_1009] % 128) - 2) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_971 / ext_call.return_data[0]) + (10^uint8((2 * mem[_1009] % 128) - 2) / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((_971 / ext_call.return_data[0]) + (10^uint8((2 * _1025 % 128) - 2) / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1299 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1299] == mem[_1299]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2266 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2471 = mem[_2266]
                                        require mem[_2266] == mem[_2266]
                                        if mem[_2266] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_2266] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_2471 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4142 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4142] == mem[_4142]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2342 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2538 = mem[_2342]
                                            require mem[_2342] == mem[_2342]
                                            if mem[_2342] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2342] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_2538 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4200 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4200] == mem[_4200]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2473 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2637 = mem[_2473]
                                                require mem[_2473] == mem[_2473]
                                                mem[mem[64] + 4] = mem[_2473]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2637
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3898 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3898] == mem[_3898]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2472 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2636 = mem[_2472]
                                                require mem[_2472] == mem[_2472]
                                                if mem[_2472] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2472] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_2636 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4333 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4333] == mem[_4333]
                                else:
                                    if cd[68]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
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
                                            _2539 = mem[_2345]
                                            require mem[_2345] == mem[_2345]
                                            if mem[_2345] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2345] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_2539 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4202 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4202] == mem[_4202]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2411 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2591 = mem[_2411]
                                                require mem[_2411] == mem[_2411]
                                                if mem[_2411] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2411] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_2591 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4262 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4262] == mem[_4262]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2541 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2715 = mem[_2541]
                                                    require mem[_2541] == mem[_2541]
                                                    mem[mem[64] + 4] = mem[_2541]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2715
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3955 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3955] == mem[_3955]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2540 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2714 = mem[_2540]
                                                    require mem[_2540] == mem[_2540]
                                                    if mem[_2540] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_2540] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_2714 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4413 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4413] == mem[_4413]
                            else:
                                t = 10
                                u = 1
                                s = uint8((2 * mem[_1009] % 128) - 2)
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
                                if _971 / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_971 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((_971 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4699] == mem[_4699]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
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
                                        _4837 = mem[_4796]
                                        require mem[_4796] == mem[_4796]
                                        if mem[_4796] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_4796] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_4837 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5023 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5023] == mem[_5023]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4812 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4852 = mem[_4812]
                                            require mem[_4812] == mem[_4812]
                                            if mem[_4812] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_4812] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_4852 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5045 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5045] == mem[_5045]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4839 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4869 = mem[_4839]
                                                require mem[_4839] == mem[_4839]
                                                mem[mem[64] + 4] = mem[_4839]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _4869
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4974 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4974] == mem[_4974]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4838 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4868 = mem[_4838]
                                                require mem[_4838] == mem[_4838]
                                                if mem[_4838] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_4838] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_4868 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5079 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5079] == mem[_5079]
                                else:
                                    if cd[68]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4815 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4853 = mem[_4815]
                                            require mem[_4815] == mem[_4815]
                                            if mem[_4815] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_4815] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_4853 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5047 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5047] == mem[_5047]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4825 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4859 = mem[_4825]
                                                require mem[_4825] == mem[_4825]
                                                if mem[_4825] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_4825] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_4859 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5062 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5062] == mem[_5062]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4855 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4883 = mem[_4855]
                                                    require mem[_4855] == mem[_4855]
                                                    mem[mem[64] + 4] = mem[_4855]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4883
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4981 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4981] == mem[_4981]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4854 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4882 = mem[_4854]
                                                    require mem[_4854] == mem[_4854]
                                                    if mem[_4854] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_4854] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_4882 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5101 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5101] == mem[_5101]
                    else:
                        if bool(bool(mem[_987 + 31 len 1] < 78)) or bool(bool(mem[_987 + 31 len 1] < 32)):
                            if 10^mem[_987 + 31 len 1] > -1:
                                revert with 'NH{q', 17
                            if _971 and 10^mem[_987 + 31 len 1] > -1 / _971:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            require ext_code.size(stor3)
                            staticcall stor3.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1043 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1052 = mem[_1043]
                            require mem[_1043] == mem[_1043 + 31 len 1]
                            if mem[_1043 + 31 len 1] and 2 > 255 / mem[_1043 + 31 len 1]:
                                revert with 'NH{q', 17
                            if 2 * mem[_1043] % 128 < 2:
                                revert with 'NH{q', 17
                            if not uint8((2 * mem[_1043] % 128) - 2):
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _971 * 10^uint8(_989) / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_971 * 10^uint8(_989) / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((_971 * 10^uint8(_989) / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1298 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1298] == mem[_1298]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2262 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2462 = mem[_2262]
                                        require mem[_2262] == mem[_2262]
                                        if mem[_2262] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_2262] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_2462 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4136 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4136] == mem[_4136]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2332 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2528 = mem[_2332]
                                            require mem[_2332] == mem[_2332]
                                            if mem[_2332] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2332] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_2528 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4196 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4196] == mem[_4196]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2464 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2632 = mem[_2464]
                                                require mem[_2464] == mem[_2464]
                                                mem[mem[64] + 4] = mem[_2464]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _2632
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3895 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_3895] == mem[_3895]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2463 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2631 = mem[_2463]
                                                require mem[_2463] == mem[_2463]
                                                if mem[_2463] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2463] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_2631 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4325 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4325] == mem[_4325]
                                else:
                                    if cd[68]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2335 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2529 = mem[_2335]
                                            require mem[_2335] == mem[_2335]
                                            if mem[_2335] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2335] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_2529 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4198 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4198] == mem[_4198]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2401 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2584 = mem[_2401]
                                                require mem[_2401] == mem[_2401]
                                                if mem[_2401] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2401] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_2584 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4258 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4258] == mem[_4258]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2531 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2710 = mem[_2531]
                                                    require mem[_2531] == mem[_2531]
                                                    mem[mem[64] + 4] = mem[_2531]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _2710
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3952 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_3952] == mem[_3952]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2530 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _2709 = mem[_2530]
                                                    require mem[_2530] == mem[_2530]
                                                    if mem[_2530] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_2530] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_2709 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4403 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4403] == mem[_4403]
                            else:
                                if bool(bool(uint8((2 * mem[_1043] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_1043] % 128) - 2) < 32)):
                                    if 10^uint8((2 * mem[_1043] % 128) - 2) > -1:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _971 * 10^uint8(_989) / ext_call.return_data[0] > -(10^uint8((2 * mem[_1043] % 128) - 2) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_971 * 10^uint8(_989) / ext_call.return_data[0]) + (10^uint8((2 * mem[_1043] % 128) - 2) / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.redeem(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((_971 * 10^uint8(_989) / ext_call.return_data[0]) + (10^uint8((2 * _1052 % 128) - 2) / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1356 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1356] == mem[_1356]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2629 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2860 = mem[_2629]
                                            require mem[_2629] == mem[_2629]
                                            if mem[_2629] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_2629] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_2860 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4545 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_4545] == mem[_4545]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2705 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2936 = mem[_2705]
                                                require mem[_2705] == mem[_2705]
                                                if mem[_2705] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2705] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_2936 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4598 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4598] == mem[_4598]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2862 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3113 = mem[_2862]
                                                    require mem[_2862] == mem[_2862]
                                                    mem[mem[64] + 4] = mem[_2862]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _3113
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4256 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4256] == mem[_4256]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2861 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3112 = mem[_2861]
                                                    require mem[_2861] == mem[_2861]
                                                    if mem[_2861] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_2861] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_3112 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4663 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4663] == mem[_4663]
                                    else:
                                        if cd[68]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            if mem[96] - 1 != idx:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _2708 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _2937 = mem[_2708]
                                                require mem[_2708] == mem[_2708]
                                                if mem[_2708] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_2708] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_2937 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4600 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_4600] == mem[_4600]
                                            else:
                                                if not cd[68]:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _2793 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _3031 = mem[_2793]
                                                    require mem[_2793] == mem[_2793]
                                                    if mem[_2793] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_2793] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_3031 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4653 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4653] == mem[_4653]
                                                else:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[mem[64] + 4] = this.address
                                                    if not mem[(32 * idx) + 128]:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2939 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _3187 = mem[_2939]
                                                        require mem[_2939] == mem[_2939]
                                                        mem[mem[64] + 4] = mem[_2939]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _3187
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4323 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4323] == mem[_4323]
                                                    else:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2938 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _3186 = mem[_2938]
                                                        require mem[_2938] == mem[_2938]
                                                        if mem[_2938] < ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        mem[mem[64] + 4] = mem[_2938] - ext_call.return_data[0]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args (_3186 - ext_call.return_data[0])
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4669 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4669] == mem[_4669]
                                else:
                                    t = 10
                                    u = 1
                                    s = uint8((2 * mem[_1043] % 128) - 2)
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
                                    if _971 * 10^uint8(_989) / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_971 * 10^uint8(_989) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.redeem(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((_971 * 10^uint8(_989) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4698 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4698] == mem[_4698]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _4794 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _4834 = mem[_4794]
                                            require mem[_4794] == mem[_4794]
                                            if mem[_4794] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_4794] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_4834 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5020 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5020] == mem[_5020]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4808 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4848 = mem[_4808]
                                                require mem[_4808] == mem[_4808]
                                                if mem[_4808] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_4808] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_4848 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5042 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5042] == mem[_5042]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4836 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4867 = mem[_4836]
                                                    require mem[_4836] == mem[_4836]
                                                    mem[mem[64] + 4] = mem[_4836]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _4867
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4972 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_4972] == mem[_4972]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4835 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4866 = mem[_4835]
                                                    require mem[_4835] == mem[_4835]
                                                    if mem[_4835] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_4835] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_4866 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5077 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5077] == mem[_5077]
                                    else:
                                        if cd[68]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            if mem[96] - 1 != idx:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _4811 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _4849 = mem[_4811]
                                                require mem[_4811] == mem[_4811]
                                                if mem[_4811] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_4811] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_4849 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5044 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5044] == mem[_5044]
                                            else:
                                                if not cd[68]:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _4822 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _4858 = mem[_4822]
                                                    require mem[_4822] == mem[_4822]
                                                    if mem[_4822] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_4822] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_4858 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5060 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5060] == mem[_5060]
                                                else:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[mem[64] + 4] = this.address
                                                    if not mem[(32 * idx) + 128]:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4851 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _4881 = mem[_4851]
                                                        require mem[_4851] == mem[_4851]
                                                        mem[mem[64] + 4] = mem[_4851]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _4881
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4980 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_4980] == mem[_4980]
                                                    else:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _4850 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _4880 = mem[_4850]
                                                        require mem[_4850] == mem[_4850]
                                                        if mem[_4850] < ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        mem[mem[64] + 4] = mem[_4850] - ext_call.return_data[0]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args (_4880 - ext_call.return_data[0])
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5098 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5098] == mem[_5098]
                        else:
                            t = 10
                            u = 1
                            s = mem[_987 + 31 len 1]
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
                            if _971 and u * t > -1 / _971:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            require ext_code.size(stor3)
                            staticcall stor3.0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4687 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4689 = mem[_4687]
                            require mem[_4687] == mem[_4687 + 31 len 1]
                            if mem[_4687 + 31 len 1] and 2 > 255 / mem[_4687 + 31 len 1]:
                                revert with 'NH{q', 17
                            if 2 * mem[_4687] % 128 < 2:
                                revert with 'NH{q', 17
                            if not uint8((2 * mem[_4687] % 128) - 2):
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if _971 * u * t / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = (_971 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                require ext_code.size(stor2)
                                call stor2.redeem(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ((_971 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4885 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4885] == mem[_4885]
                                if mem[96] < 1:
                                    revert with 'NH{q', 17
                                if mem[96] - 1 != idx:
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5234 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _5287 = mem[_5234]
                                        require mem[_5234] == mem[_5234]
                                        if mem[_5234] < ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = mem[_5234] - ext_call.return_data[0]
                                        require ext_code.size(stor2)
                                        call stor2.repayBorrow(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args (_5287 - ext_call.return_data[0])
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _5625 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5625] == mem[_5625]
                                    else:
                                        if not cd[68]:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5254 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5304 = mem[_5254]
                                            require mem[_5254] == mem[_5254]
                                            if mem[_5254] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5254] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_5304 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5635 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5635] == mem[_5635]
                                        else:
                                            if idx >= mem[96]:
                                                revert with 'NH{q', 50
                                            mem[mem[64] + 4] = this.address
                                            if not mem[(32 * idx) + 128]:
                                                require ext_code.size(stor2)
                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                     gas gas_remaining wei
                                                    args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5289 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5335 = mem[_5289]
                                                require mem[_5289] == mem[_5289]
                                                mem[mem[64] + 4] = mem[_5289]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args _5335
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5584 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5584] == mem[_5584]
                                            else:
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5288 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5334 = mem[_5288]
                                                require mem[_5288] == mem[_5288]
                                                if mem[_5288] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5288] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_5334 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5657 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5657] == mem[_5657]
                                else:
                                    if cd[68]:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5257 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5305 = mem[_5257]
                                            require mem[_5257] == mem[_5257]
                                            if mem[_5257] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5257] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_5305 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5637 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5637] == mem[_5637]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5271 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5317 = mem[_5271]
                                                require mem[_5271] == mem[_5271]
                                                if mem[_5271] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5271] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_5317 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5646 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5646] == mem[_5646]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5307 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5361 = mem[_5307]
                                                    require mem[_5307] == mem[_5307]
                                                    mem[mem[64] + 4] = mem[_5307]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5361
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5595 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5595] == mem[_5595]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5306 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5360 = mem[_5306]
                                                    require mem[_5306] == mem[_5306]
                                                    if mem[_5306] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5306] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_5360 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5671 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5671] == mem[_5671]
                            else:
                                if bool(bool(uint8((2 * mem[_4687] % 128) - 2) < 78)) or bool(bool(uint8((2 * mem[_4687] % 128) - 2) < 32)):
                                    if 10^uint8((2 * mem[_4687] % 128) - 2) > -1:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if _971 * u * t / ext_call.return_data[0] > -(10^uint8((2 * mem[_4687] % 128) - 2) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_971 * u * t / ext_call.return_data[0]) + (10^uint8((2 * mem[_4687] % 128) - 2) / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.redeem(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((_971 * u * t / ext_call.return_data[0]) + (10^uint8((2 * _4689 % 128) - 2) / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4899 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4899] == mem[_4899]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5332 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5401 = mem[_5332]
                                            require mem[_5332] == mem[_5332]
                                            if mem[_5332] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5332] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_5401 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5698 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_5698] == mem[_5698]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5356 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5420 = mem[_5356]
                                                require mem[_5356] == mem[_5356]
                                                if mem[_5356] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5356] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_5420 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5708 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5708] == mem[_5708]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5403 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5447 = mem[_5403]
                                                    require mem[_5403] == mem[_5403]
                                                    mem[mem[64] + 4] = mem[_5403]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5447
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5644 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5644] == mem[_5644]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5402 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5446 = mem[_5402]
                                                    require mem[_5402] == mem[_5402]
                                                    if mem[_5402] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5402] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_5446 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5735 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5735] == mem[_5735]
                                    else:
                                        if cd[68]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            if mem[96] - 1 != idx:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5359 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5421 = mem[_5359]
                                                require mem[_5359] == mem[_5359]
                                                if mem[_5359] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5359] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_5421 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5710 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5710] == mem[_5710]
                                            else:
                                                if not cd[68]:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5381 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5437 = mem[_5381]
                                                    require mem[_5381] == mem[_5381]
                                                    if mem[_5381] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5381] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_5437 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5718 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5718] == mem[_5718]
                                                else:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[mem[64] + 4] = this.address
                                                    if not mem[(32 * idx) + 128]:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5423 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5457 = mem[_5423]
                                                        require mem[_5423] == mem[_5423]
                                                        mem[mem[64] + 4] = mem[_5423]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5457
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5655 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5655] == mem[_5655]
                                                    else:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5422 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5456 = mem[_5422]
                                                        require mem[_5422] == mem[_5422]
                                                        if mem[_5422] < ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        mem[mem[64] + 4] = mem[_5422] - ext_call.return_data[0]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args (_5456 - ext_call.return_data[0])
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5755 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5755] == mem[_5755]
                                else:
                                    v = 10
                                    w = 1
                                    s = uint8((2 * mem[_4687] % 128) - 2)
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
                                    if _971 * u * t / ext_call.return_data[0] > -(w * v / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = (_971 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0])
                                    require ext_code.size(stor2)
                                    call stor2.redeem(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ((_971 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0]))
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5897 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5897] == mem[_5897]
                                    if mem[96] < 1:
                                        revert with 'NH{q', 17
                                    if mem[96] - 1 != idx:
                                        if mem[96] < 1:
                                            revert with 'NH{q', 17
                                        if mem[96] - 1 != idx:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5938 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _5957 = mem[_5938]
                                            require mem[_5938] == mem[_5938]
                                            if mem[_5938] < ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            mem[mem[64] + 4] = mem[_5938] - ext_call.return_data[0]
                                            require ext_code.size(stor2)
                                            call stor2.repayBorrow(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args (_5957 - ext_call.return_data[0])
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6013 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_6013] == mem[_6013]
                                        else:
                                            if not cd[68]:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5944 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5964 = mem[_5944]
                                                require mem[_5944] == mem[_5944]
                                                if mem[_5944] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5944] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_5964 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6019 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6019] == mem[_6019]
                                            else:
                                                if idx >= mem[96]:
                                                    revert with 'NH{q', 50
                                                mem[mem[64] + 4] = this.address
                                                if not mem[(32 * idx) + 128]:
                                                    require ext_code.size(stor2)
                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                         gas gas_remaining wei
                                                        args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5959 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5973 = mem[_5959]
                                                    require mem[_5959] == mem[_5959]
                                                    mem[mem[64] + 4] = mem[_5959]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args _5973
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5998 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5998] == mem[_5998]
                                                else:
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5958 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5972 = mem[_5958]
                                                    require mem[_5958] == mem[_5958]
                                                    if mem[_5958] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5958] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_5972 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6029 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6029] == mem[_6029]
                                    else:
                                        if cd[68]:
                                            if mem[96] < 1:
                                                revert with 'NH{q', 17
                                            if mem[96] - 1 != idx:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(stor3)
                                                staticcall stor3.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _5947 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _5965 = mem[_5947]
                                                require mem[_5947] == mem[_5947]
                                                if mem[_5947] < ext_call.return_data[0]:
                                                    revert with 'NH{q', 17
                                                mem[mem[64] + 4] = mem[_5947] - ext_call.return_data[0]
                                                require ext_code.size(stor2)
                                                call stor2.repayBorrow(uint256 arg1) with:
                                                     gas gas_remaining wei
                                                    args (_5965 - ext_call.return_data[0])
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6021 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6021] == mem[_6021]
                                            else:
                                                if not cd[68]:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(stor3)
                                                    staticcall stor3.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _5951 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _5969 = mem[_5951]
                                                    require mem[_5951] == mem[_5951]
                                                    if mem[_5951] < ext_call.return_data[0]:
                                                        revert with 'NH{q', 17
                                                    mem[mem[64] + 4] = mem[_5951] - ext_call.return_data[0]
                                                    require ext_code.size(stor2)
                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                         gas gas_remaining wei
                                                        args (_5969 - ext_call.return_data[0])
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6024 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6024] == mem[_6024]
                                                else:
                                                    if idx >= mem[96]:
                                                        revert with 'NH{q', 50
                                                    mem[mem[64] + 4] = this.address
                                                    if not mem[(32 * idx) + 128]:
                                                        require ext_code.size(stor2)
                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                             gas gas_remaining wei
                                                            args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5967 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5977 = mem[_5967]
                                                        require mem[_5967] == mem[_5967]
                                                        mem[mem[64] + 4] = mem[_5967]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args _5977
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6001 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6001] == mem[_6001]
                                                    else:
                                                        require ext_code.size(stor3)
                                                        staticcall stor3.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _5966 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _5976 = mem[_5966]
                                                        require mem[_5966] == mem[_5966]
                                                        if mem[_5966] < ext_call.return_data[0]:
                                                            revert with 'NH{q', 17
                                                        mem[mem[64] + 4] = mem[_5966] - ext_call.return_data[0]
                                                        require ext_code.size(stor2)
                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                             gas gas_remaining wei
                                                            args (_5976 - ext_call.return_data[0])
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _6035 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6035] == mem[_6035]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _971
            continue 
}



}
