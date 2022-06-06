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
        call stor2.0xa0712d68 with:
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
        call stor2.0xa0712d68 with:
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
            call stor2.0xa0712d68 with:
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
        call stor2.0xa0712d68 with:
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
            call stor2.0xa0712d68 with:
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
        call stor2.0xa0712d68 with:
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
            _421 = mem[64]
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _408 * uint32(arg1)
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = 2
            idx = 0
            s = 192
            t = mem[64] + 164
            while idx < mem[160]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[_421 + 100] = block.timestamp + 15
            require ext_code.size(stor5)
            call stor5.mem[mem[64] len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _421 + -mem[64] + 224]
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
                _427 = mem[64]
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _415 * uint32(arg1) / 10^uint32(arg2)
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 192
                t = mem[64] + 164
                while idx < mem[160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_427 + 100] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _427 + -mem[64] + 224]
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
                _498 = mem[64]
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _485 * uint32(arg1) / t * s
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 192
                t = mem[64] + 164
                while idx < mem[160]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_498 + 100] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _498 + -mem[64] + 224]
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
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _286 * uint32(arg1) / 10^uint32(arg2), 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _303) + 32]
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
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _468 * uint32(arg1) / t * s
                mem[mem[64] + 68] = 160
                _490 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                idx = 0
                u = ceil32(return_data.size) + 128
                v = mem[64] + 196
                while idx < _490:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _468 * uint32(arg1) / t * s, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _490) + 32]
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
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp + 15
            require ext_code.size(stor5)
            call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], _474 * uint32(arg1), 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _499) + 32]
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
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _481 * uint32(arg1) / 10^uint32(arg2), 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _502) + 32]
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
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _609 * uint32(arg1) / t * s
                mem[mem[64] + 68] = 160
                _638 = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
                idx = 0
                u = ceil32(return_data.size) + 192
                v = mem[64] + 196
                while idx < _638:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor5)
                call stor5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _609 * uint32(arg1) / t * s, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _638) + 32]
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

function sub_2e83c8b7(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    else:
        if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
            revert with 'NH{q', 65
        else:
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
            if stor0 != msg.sender:
                revert with 0, 'not owner'
            else:
                require ext_code.size(stor2)
                call stor2.exchangeRateCurrent() with:
                     gas gas_remaining wei
                mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'ExchangeRate == 0 or colateral == 0'
                    else:
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
                            else:
                                _817 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _818 = mem[_817]
                                require mem[_817] == mem[_817]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                else:
                                    if mem[(32 * idx) + 128]:
                                        if idx >= mem[96]:
                                            revert with 'NH{q', 50
                                        else:
                                            _822 = mem[(32 * idx) + 128]
                                            if ext_call.return_data[0] and mem[(32 * idx) + 128] > -1 / ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            else:
                                                if 18 > -uint32(cd[36]) + test266151307():
                                                    revert with 'NH{q', 17
                                                else:
                                                    if uint32(uint32(cd[36]) + 18):
                                                        if not bool(uint32(uint32(cd[36]) + 18) < 78) and not bool(uint32(uint32(cd[36]) + 18) < 32):
                                                            t = 10
                                                            u = 1
                                                            s = uint32(uint32(cd[36]) + 18)
                                                            while s > 1:
                                                                if t > -1 / t:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if not bool(s):
                                                                        t = t * t
                                                                        u = u
                                                                        s = uint255(s) * 0.5
                                                                        continue 
                                                                    else:
                                                                        t = t * t
                                                                        u = u * t
                                                                        s = uint255(s) * 0.5
                                                                        continue 
                                                            if u > -1 / t:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if u * t and mem[_817] > -1 / u * t:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                                                                        revert with 'NH{q', 18
                                                                    else:
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor2)
                                                                        staticcall stor2.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(this.address)
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _2837 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _2840 = mem[_2837]
                                                                            require mem[_2837] == mem[_2837]
                                                                            if mem[_2837] < u * t * _818 / ext_call.return_data[0] * _822:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                mem[mem[64] + 4] = mem[_2837] - (u * t * _818 / ext_call.return_data[0] * _822)
                                                                                require ext_code.size(stor2)
                                                                                call stor2.redeem(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args (_2840 - (u * t * _818 / ext_call.return_data[0] * _822))
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _2849 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_2849] == mem[_2849]
                                                                                    if mem[96] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if mem[96] - 1 != idx:
                                                                                            if mem[96] < 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if mem[96] - 1 != idx:
                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                    require ext_code.size(stor3)
                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(this.address)
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _3019 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _3035 = mem[_3019]
                                                                                                        require mem[_3019] == mem[_3019]
                                                                                                        mem[mem[64] + 4] = mem[_3019]
                                                                                                        require ext_code.size(stor2)
                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args _3035
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3080 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_3080] == mem[_3080]
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                s = _818
                                                                                                                continue 
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
                                                                                                        else:
                                                                                                            _3026 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _3039 = mem[_3026]
                                                                                                            require mem[_3026] == mem[_3026]
                                                                                                            mem[mem[64] + 4] = mem[_3026]
                                                                                                            require ext_code.size(stor2)
                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _3039
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _3082 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_3082] == mem[_3082]
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    s = _818
                                                                                                                    continue 
                                                                                                    else:
                                                                                                        if idx >= mem[96]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            if mem[(32 * idx) + 128]:
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(stor3)
                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(this.address)
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _3036 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _3047 = mem[_3036]
                                                                                                                    require mem[_3036] == mem[_3036]
                                                                                                                    mem[mem[64] + 4] = mem[_3036]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _3047
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3099 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3099] == mem[_3099]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
                                                                                                            else:
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(stor2)
                                                                                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args address(this.address)
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _3037 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _3048 = mem[_3037]
                                                                                                                    require mem[_3037] == mem[_3037]
                                                                                                                    mem[mem[64] + 4] = mem[_3037]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _3048
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3100 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3100] == mem[_3100]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
                                                                                        else:
                                                                                            if cd[68]:
                                                                                                if mem[96] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if mem[96] - 1 != idx:
                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                        require ext_code.size(stor3)
                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(this.address)
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _3029 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _3040 = mem[_3029]
                                                                                                            require mem[_3029] == mem[_3029]
                                                                                                            mem[mem[64] + 4] = mem[_3029]
                                                                                                            require ext_code.size(stor2)
                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _3040
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _3085 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_3085] == mem[_3085]
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    s = _818
                                                                                                                    continue 
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
                                                                                                            else:
                                                                                                                _3031 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _3044 = mem[_3031]
                                                                                                                require mem[_3031] == mem[_3031]
                                                                                                                mem[mem[64] + 4] = mem[_3031]
                                                                                                                require ext_code.size(stor2)
                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args _3044
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _3089 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_3089] == mem[_3089]
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                                        else:
                                                                                                            if idx >= mem[96]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                if mem[(32 * idx) + 128]:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor3)
                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3041 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _3049 = mem[_3041]
                                                                                                                        require mem[_3041] == mem[_3041]
                                                                                                                        mem[mem[64] + 4] = mem[_3041]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _3049
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _3107 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_3107] == mem[_3107]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3042 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _3050 = mem[_3042]
                                                                                                                        require mem[_3042] == mem[_3042]
                                                                                                                        mem[mem[64] + 4] = mem[_3042]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _3050
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _3108 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_3108] == mem[_3108]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                            else:
                                                                                                if idx == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    idx = idx + 1
                                                                                                    s = _818
                                                                                                    continue 
                                                        else:
                                                            if 10^uint32(uint32(cd[36]) + 18) > -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if 10^uint32(uint32(cd[36]) + 18) and mem[_817] > -1 / 10^uint32(uint32(cd[36]) + 18):
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                                                                        revert with 'NH{q', 18
                                                                    else:
                                                                        mem[mem[64] + 4] = this.address
                                                                        require ext_code.size(stor2)
                                                                        staticcall stor2.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args address(this.address)
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _889 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _899 = mem[_889]
                                                                            require mem[_889] == mem[_889]
                                                                            if mem[_889] < 10^uint32(uint32(cd[36]) + 18) * _818 / ext_call.return_data[0] * _822:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                mem[mem[64] + 4] = mem[_889] - (10^uint32(uint32(cd[36]) + 18) * _818 / ext_call.return_data[0] * _822)
                                                                                require ext_code.size(stor2)
                                                                                call stor2.redeem(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args (_899 - (10^uint32(uint32(cd[36]) + 18) * _818 / ext_call.return_data[0] * _822))
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _949 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_949] == mem[_949]
                                                                                    if mem[96] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if mem[96] - 1 != idx:
                                                                                            if mem[96] < 1:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if mem[96] - 1 != idx:
                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                    require ext_code.size(stor3)
                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(this.address)
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1117 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1164 = mem[_1117]
                                                                                                        require mem[_1117] == mem[_1117]
                                                                                                        mem[mem[64] + 4] = mem[_1117]
                                                                                                        require ext_code.size(stor2)
                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args _1164
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1419 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_1419] == mem[_1419]
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                s = _818
                                                                                                                continue 
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
                                                                                                        else:
                                                                                                            _1133 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _1179 = mem[_1133]
                                                                                                            require mem[_1133] == mem[_1133]
                                                                                                            mem[mem[64] + 4] = mem[_1133]
                                                                                                            require ext_code.size(stor2)
                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _1179
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1439 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1439] == mem[_1439]
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    s = _818
                                                                                                                    continue 
                                                                                                    else:
                                                                                                        if idx >= mem[96]:
                                                                                                            revert with 'NH{q', 50
                                                                                                        else:
                                                                                                            if mem[(32 * idx) + 128]:
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(stor3)
                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(this.address)
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1165 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _1201 = mem[_1165]
                                                                                                                    require mem[_1165] == mem[_1165]
                                                                                                                    mem[mem[64] + 4] = mem[_1165]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _1201
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1480 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_1480] == mem[_1480]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
                                                                                                            else:
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(stor2)
                                                                                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args address(this.address)
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1166 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _1202 = mem[_1166]
                                                                                                                    require mem[_1166] == mem[_1166]
                                                                                                                    mem[mem[64] + 4] = mem[_1166]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _1202
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1481 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_1481] == mem[_1481]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
                                                                                        else:
                                                                                            if cd[68]:
                                                                                                if mem[96] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if mem[96] - 1 != idx:
                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                        require ext_code.size(stor3)
                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(this.address)
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1136 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _1180 = mem[_1136]
                                                                                                            require mem[_1136] == mem[_1136]
                                                                                                            mem[mem[64] + 4] = mem[_1136]
                                                                                                            require ext_code.size(stor2)
                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _1180
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1442 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1442] == mem[_1442]
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    s = _818
                                                                                                                    continue 
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
                                                                                                            else:
                                                                                                                _1151 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1193 = mem[_1151]
                                                                                                                require mem[_1151] == mem[_1151]
                                                                                                                mem[mem[64] + 4] = mem[_1151]
                                                                                                                require ext_code.size(stor2)
                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args _1193
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1463 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_1463] == mem[_1463]
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                                        else:
                                                                                                            if idx >= mem[96]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                if mem[(32 * idx) + 128]:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor3)
                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1181 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1214 = mem[_1181]
                                                                                                                        require mem[_1181] == mem[_1181]
                                                                                                                        mem[mem[64] + 4] = mem[_1181]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1214
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1507 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_1507] == mem[_1507]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1182 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1215 = mem[_1182]
                                                                                                                        require mem[_1182] == mem[_1182]
                                                                                                                        mem[mem[64] + 4] = mem[_1182]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1215
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1508 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_1508] == mem[_1508]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                            else:
                                                                                                if idx == -1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    idx = idx + 1
                                                                                                    s = _818
                                                                                                    continue 
                                                    else:
                                                        if mem[_817] > -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if not ext_call.return_data[0] * mem[(32 * idx) + 128]:
                                                                revert with 'NH{q', 18
                                                            else:
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor2)
                                                                staticcall stor2.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(this.address)
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _861 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _871 = mem[_861]
                                                                    require mem[_861] == mem[_861]
                                                                    if mem[_861] < _818 / ext_call.return_data[0] * _822:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        mem[mem[64] + 4] = mem[_861] - (_818 / ext_call.return_data[0] * _822)
                                                                        require ext_code.size(stor2)
                                                                        call stor2.redeem(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args (_871 - (_818 / ext_call.return_data[0] * _822))
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _940 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_940] == mem[_940]
                                                                            if mem[96] < 1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if mem[96] - 1 != idx:
                                                                                    if mem[96] < 1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if mem[96] - 1 != idx:
                                                                                            mem[mem[64] + 4] = this.address
                                                                                            require ext_code.size(stor3)
                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(this.address)
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _1059 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                _1090 = mem[_1059]
                                                                                                require mem[_1059] == mem[_1059]
                                                                                                mem[mem[64] + 4] = mem[_1059]
                                                                                                require ext_code.size(stor2)
                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args _1090
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1300 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    require mem[_1300] == mem[_1300]
                                                                                                    if idx == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        idx = idx + 1
                                                                                                        s = _818
                                                                                                        continue 
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
                                                                                                else:
                                                                                                    _1071 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _1101 = mem[_1071]
                                                                                                    require mem[_1071] == mem[_1071]
                                                                                                    mem[mem[64] + 4] = mem[_1071]
                                                                                                    require ext_code.size(stor2)
                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args _1101
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1327 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_1327] == mem[_1327]
                                                                                                        if idx == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            idx = idx + 1
                                                                                                            s = _818
                                                                                                            continue 
                                                                                            else:
                                                                                                if idx >= mem[96]:
                                                                                                    revert with 'NH{q', 50
                                                                                                else:
                                                                                                    if mem[(32 * idx) + 128]:
                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                        require ext_code.size(stor3)
                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(this.address)
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1091 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _1119 = mem[_1091]
                                                                                                            require mem[_1091] == mem[_1091]
                                                                                                            mem[mem[64] + 4] = mem[_1091]
                                                                                                            require ext_code.size(stor2)
                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _1119
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1363 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1363] == mem[_1363]
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    s = _818
                                                                                                                    continue 
                                                                                                    else:
                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                        require ext_code.size(stor2)
                                                                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args address(this.address)
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1092 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _1120 = mem[_1092]
                                                                                                            require mem[_1092] == mem[_1092]
                                                                                                            mem[mem[64] + 4] = mem[_1092]
                                                                                                            require ext_code.size(stor2)
                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _1120
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1364 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1364] == mem[_1364]
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    s = _818
                                                                                                                    continue 
                                                                                else:
                                                                                    if cd[68]:
                                                                                        if mem[96] < 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if mem[96] - 1 != idx:
                                                                                                mem[mem[64] + 4] = this.address
                                                                                                require ext_code.size(stor3)
                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(this.address)
                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    _1074 = mem[64]
                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                    require return_data.size >= 32
                                                                                                    _1102 = mem[_1074]
                                                                                                    require mem[_1074] == mem[_1074]
                                                                                                    mem[mem[64] + 4] = mem[_1074]
                                                                                                    require ext_code.size(stor2)
                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args _1102
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1330 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_1330] == mem[_1330]
                                                                                                        if idx == -1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            idx = idx + 1
                                                                                                            s = _818
                                                                                                            continue 
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
                                                                                                    else:
                                                                                                        _1082 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        _1110 = mem[_1082]
                                                                                                        require mem[_1082] == mem[_1082]
                                                                                                        mem[mem[64] + 4] = mem[_1082]
                                                                                                        require ext_code.size(stor2)
                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args _1110
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1348 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            require mem[_1348] == mem[_1348]
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                s = _818
                                                                                                                continue 
                                                                                                else:
                                                                                                    if idx >= mem[96]:
                                                                                                        revert with 'NH{q', 50
                                                                                                    else:
                                                                                                        if mem[(32 * idx) + 128]:
                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                            require ext_code.size(stor3)
                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(this.address)
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1103 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1137 = mem[_1103]
                                                                                                                require mem[_1103] == mem[_1103]
                                                                                                                mem[mem[64] + 4] = mem[_1103]
                                                                                                                require ext_code.size(stor2)
                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args _1137
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1384 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_1384] == mem[_1384]
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                                        else:
                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                            require ext_code.size(stor2)
                                                                                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(this.address)
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1104 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1138 = mem[_1104]
                                                                                                                require mem[_1104] == mem[_1104]
                                                                                                                mem[mem[64] + 4] = mem[_1104]
                                                                                                                require ext_code.size(stor2)
                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args _1138
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1385 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_1385] == mem[_1385]
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                    else:
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            s = _818
                                                                                            continue 
                                    else:
                                        if cd[100] <= 0:
                                            require ext_code.size(stor3)
                                            staticcall stor3.0x313ce567 with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _826 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _827 = mem[_826]
                                                require mem[_826] == mem[_826 + 31 len 1]
                                                if mem[_826 + 31 len 1]:
                                                    if not bool(mem[_826 + 31 len 1] < 78) and not bool(mem[_826 + 31 len 1] < 32):
                                                        t = 10
                                                        u = 1
                                                        s = mem[_826 + 31 len 1]
                                                        while s > 1:
                                                            if t > -1 / t:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if not bool(s):
                                                                    t = t * t
                                                                    u = u
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                                else:
                                                                    t = t * t
                                                                    u = u * t
                                                                    s = uint255(s) * 0.5
                                                                    continue 
                                                        if u > -1 / t:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if _818 and u * t > -1 / _818:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                else:
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x313ce567 with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _2830 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _2831 = mem[_2830]
                                                                        require mem[_2830] == mem[_2830 + 31 len 1]
                                                                        if mem[_2830 + 31 len 1] and 2 > 255 / mem[_2830 + 31 len 1]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 2 * mem[_2830] % 128 < 2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if uint8((2 * mem[_2830] % 128) - 2):
                                                                                    if not bool(uint8((2 * mem[_2830] % 128) - 2) < 78) and not bool(uint8((2 * mem[_2830] % 128) - 2) < 32):
                                                                                        v = 10
                                                                                        w = 1
                                                                                        s = uint8((2 * mem[_2830] % 128) - 2)
                                                                                        while s > 1:
                                                                                            if v > -1 / v:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if not bool(s):
                                                                                                    v = v * v
                                                                                                    w = w
                                                                                                    s = uint255(s) * 0.5
                                                                                                    continue 
                                                                                                else:
                                                                                                    v = v * v
                                                                                                    w = w * v
                                                                                                    s = uint255(s) * 0.5
                                                                                                    continue 
                                                                                        if w > -1 / v:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if not ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 18
                                                                                            else:
                                                                                                if _818 * u * t / ext_call.return_data[0] > -(w * v / ext_call.return_data[0]) - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    mem[mem[64] + 4] = (_818 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0])
                                                                                                    require ext_code.size(stor2)
                                                                                                    call stor2.redeem(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args ((_818 * u * t / ext_call.return_data[0]) + (w * v / ext_call.return_data[0]))
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _3435 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_3435] == mem[_3435]
                                                                                                        if mem[96] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if mem[96] - 1 != idx:
                                                                                                                if mem[96] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[96] - 1 != idx:
                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args address(this.address)
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _3455 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _3464 = mem[_3455]
                                                                                                                            require mem[_3455] == mem[_3455]
                                                                                                                            mem[mem[64] + 4] = mem[_3455]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _3464
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _3487 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_3487] == mem[_3487]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
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
                                                                                                                            else:
                                                                                                                                _3457 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _3467 = mem[_3457]
                                                                                                                                require mem[_3457] == mem[_3457]
                                                                                                                                mem[mem[64] + 4] = mem[_3457]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _3467
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _3489 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_3489] == mem[_3489]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                                        else:
                                                                                                                            if idx >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if mem[(32 * idx) + 128]:
                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args address(this.address)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3465 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _3472 = mem[_3465]
                                                                                                                                        require mem[_3465] == mem[_3465]
                                                                                                                                        mem[mem[64] + 4] = mem[_3465]
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args _3472
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _3497 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_3497] == mem[_3497]
                                                                                                                                            if idx == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = _818
                                                                                                                                                continue 
                                                                                                                                else:
                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(this.address)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3466 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _3473 = mem[_3466]
                                                                                                                                        require mem[_3466] == mem[_3466]
                                                                                                                                        mem[mem[64] + 4] = mem[_3466]
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args _3473
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _3498 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_3498] == mem[_3498]
                                                                                                                                            if idx == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = _818
                                                                                                                                                continue 
                                                                                                            else:
                                                                                                                if cd[68]:
                                                                                                                    if mem[96] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if mem[96] - 1 != idx:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor3)
                                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _3460 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _3468 = mem[_3460]
                                                                                                                                require mem[_3460] == mem[_3460]
                                                                                                                                mem[mem[64] + 4] = mem[_3460]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _3468
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _3492 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_3492] == mem[_3492]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
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
                                                                                                                                else:
                                                                                                                                    _3461 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _3471 = mem[_3461]
                                                                                                                                    require mem[_3461] == mem[_3461]
                                                                                                                                    mem[mem[64] + 4] = mem[_3461]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _3471
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3493 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_3493] == mem[_3493]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                                            else:
                                                                                                                                if idx >= mem[96]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * idx) + 128]:
                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args address(this.address)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _3469 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            _3474 = mem[_3469]
                                                                                                                                            require mem[_3469] == mem[_3469]
                                                                                                                                            mem[mem[64] + 4] = mem[_3469]
                                                                                                                                            require ext_code.size(stor2)
                                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args _3474
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _3501 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_3501] == mem[_3501]
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = _818
                                                                                                                                                    continue 
                                                                                                                                    else:
                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args address(this.address)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _3470 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            _3475 = mem[_3470]
                                                                                                                                            require mem[_3470] == mem[_3470]
                                                                                                                                            mem[mem[64] + 4] = mem[_3470]
                                                                                                                                            require ext_code.size(stor2)
                                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args _3475
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _3502 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_3502] == mem[_3502]
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = _818
                                                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                    else:
                                                                                        if 10^uint8((2 * mem[_2830] % 128) - 2) > -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if not ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 18
                                                                                            else:
                                                                                                if _818 * u * t / ext_call.return_data[0] > -(10^uint8((2 * mem[_2830] % 128) - 2) / ext_call.return_data[0]) - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    mem[mem[64] + 4] = (_818 * u * t / ext_call.return_data[0]) + (10^uint8((2 * mem[_2830] % 128) - 2) / ext_call.return_data[0])
                                                                                                    require ext_code.size(stor2)
                                                                                                    call stor2.redeem(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args ((_818 * u * t / ext_call.return_data[0]) + (10^uint8((2 * _2831 % 128) - 2) / ext_call.return_data[0]))
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2945 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2945] == mem[_2945]
                                                                                                        if mem[96] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if mem[96] - 1 != idx:
                                                                                                                if mem[96] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[96] - 1 != idx:
                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args address(this.address)
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _3154 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _3186 = mem[_3154]
                                                                                                                            require mem[_3154] == mem[_3154]
                                                                                                                            mem[mem[64] + 4] = mem[_3154]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _3186
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _3320 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_3320] == mem[_3320]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
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
                                                                                                                            else:
                                                                                                                                _3164 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _3195 = mem[_3164]
                                                                                                                                require mem[_3164] == mem[_3164]
                                                                                                                                mem[mem[64] + 4] = mem[_3164]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _3195
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _3324 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_3324] == mem[_3324]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                                        else:
                                                                                                                            if idx >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if mem[(32 * idx) + 128]:
                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args address(this.address)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3187 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _3210 = mem[_3187]
                                                                                                                                        require mem[_3187] == mem[_3187]
                                                                                                                                        mem[mem[64] + 4] = mem[_3187]
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args _3210
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _3341 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_3341] == mem[_3341]
                                                                                                                                            if idx == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = _818
                                                                                                                                                continue 
                                                                                                                                else:
                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(this.address)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3188 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _3211 = mem[_3188]
                                                                                                                                        require mem[_3188] == mem[_3188]
                                                                                                                                        mem[mem[64] + 4] = mem[_3188]
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args _3211
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _3342 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_3342] == mem[_3342]
                                                                                                                                            if idx == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = _818
                                                                                                                                                continue 
                                                                                                            else:
                                                                                                                if cd[68]:
                                                                                                                    if mem[96] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if mem[96] - 1 != idx:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor3)
                                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _3167 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _3196 = mem[_3167]
                                                                                                                                require mem[_3167] == mem[_3167]
                                                                                                                                mem[mem[64] + 4] = mem[_3167]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _3196
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _3327 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_3327] == mem[_3327]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
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
                                                                                                                                else:
                                                                                                                                    _3177 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _3205 = mem[_3177]
                                                                                                                                    require mem[_3177] == mem[_3177]
                                                                                                                                    mem[mem[64] + 4] = mem[_3177]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _3205
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3332 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_3332] == mem[_3332]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                                            else:
                                                                                                                                if idx >= mem[96]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * idx) + 128]:
                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args address(this.address)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _3197 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            _3217 = mem[_3197]
                                                                                                                                            require mem[_3197] == mem[_3197]
                                                                                                                                            mem[mem[64] + 4] = mem[_3197]
                                                                                                                                            require ext_code.size(stor2)
                                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args _3217
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _3350 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_3350] == mem[_3350]
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = _818
                                                                                                                                                    continue 
                                                                                                                                    else:
                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args address(this.address)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _3198 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            _3218 = mem[_3198]
                                                                                                                                            require mem[_3198] == mem[_3198]
                                                                                                                                            mem[mem[64] + 4] = mem[_3198]
                                                                                                                                            require ext_code.size(stor2)
                                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args _3218
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _3351 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_3351] == mem[_3351]
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = _818
                                                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                else:
                                                                                    if not ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 18
                                                                                    else:
                                                                                        if _818 * u * t / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            mem[mem[64] + 4] = (_818 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                                                                            require ext_code.size(stor2)
                                                                                            call stor2.redeem(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((_818 * u * t / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2929 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_2929] == mem[_2929]
                                                                                                if mem[96] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if mem[96] - 1 != idx:
                                                                                                        if mem[96] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if mem[96] - 1 != idx:
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(stor3)
                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(this.address)
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _3118 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _3139 = mem[_3118]
                                                                                                                    require mem[_3118] == mem[_3118]
                                                                                                                    mem[mem[64] + 4] = mem[_3118]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _3139
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3267 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_3267] == mem[_3267]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
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
                                                                                                                    else:
                                                                                                                        _3126 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _3145 = mem[_3126]
                                                                                                                        require mem[_3126] == mem[_3126]
                                                                                                                        mem[mem[64] + 4] = mem[_3126]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _3145
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _3278 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_3278] == mem[_3278]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                                                else:
                                                                                                                    if idx >= mem[96]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * idx) + 128]:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor3)
                                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _3140 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _3156 = mem[_3140]
                                                                                                                                require mem[_3140] == mem[_3140]
                                                                                                                                mem[mem[64] + 4] = mem[_3140]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _3156
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _3299 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_3299] == mem[_3299]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                                        else:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _3141 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _3157 = mem[_3141]
                                                                                                                                require mem[_3141] == mem[_3141]
                                                                                                                                mem[mem[64] + 4] = mem[_3141]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _3157
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _3300 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_3300] == mem[_3300]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                    else:
                                                                                                        if cd[68]:
                                                                                                            if mem[96] < 1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if mem[96] - 1 != idx:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor3)
                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _3129 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _3146 = mem[_3129]
                                                                                                                        require mem[_3129] == mem[_3129]
                                                                                                                        mem[mem[64] + 4] = mem[_3129]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _3146
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _3281 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_3281] == mem[_3281]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
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
                                                                                                                        else:
                                                                                                                            _3134 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _3151 = mem[_3134]
                                                                                                                            require mem[_3134] == mem[_3134]
                                                                                                                            mem[mem[64] + 4] = mem[_3134]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _3151
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _3290 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_3290] == mem[_3290]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
                                                                                                                    else:
                                                                                                                        if idx >= mem[96]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            if mem[(32 * idx) + 128]:
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(stor3)
                                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args address(this.address)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _3147 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _3168 = mem[_3147]
                                                                                                                                    require mem[_3147] == mem[_3147]
                                                                                                                                    mem[mem[64] + 4] = mem[_3147]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _3168
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3309 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_3309] == mem[_3309]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                                            else:
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args address(this.address)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _3148 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _3169 = mem[_3148]
                                                                                                                                    require mem[_3148] == mem[_3148]
                                                                                                                                    mem[mem[64] + 4] = mem[_3148]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _3169
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3310 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_3310] == mem[_3310]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                        else:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                s = _818
                                                                                                                continue 
                                                    else:
                                                        if 10^mem[_826 + 31 len 1] > -1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if _818 and 10^mem[_826 + 31 len 1] > -1 / _818:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                else:
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x313ce567 with:
                                                                            gas gas_remaining wei
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _854 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _858 = mem[_854]
                                                                        require mem[_854] == mem[_854 + 31 len 1]
                                                                        if mem[_854 + 31 len 1] and 2 > 255 / mem[_854 + 31 len 1]:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            if 2 * mem[_854] % 128 < 2:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                if uint8((2 * mem[_854] % 128) - 2):
                                                                                    if not bool(uint8((2 * mem[_854] % 128) - 2) < 78) and not bool(uint8((2 * mem[_854] % 128) - 2) < 32):
                                                                                        t = 10
                                                                                        u = 1
                                                                                        s = uint8((2 * mem[_854] % 128) - 2)
                                                                                        while s > 1:
                                                                                            if t > -1 / t:
                                                                                                revert with 'NH{q', 17
                                                                                            else:
                                                                                                if not bool(s):
                                                                                                    t = t * t
                                                                                                    u = u
                                                                                                    s = uint255(s) * 0.5
                                                                                                    continue 
                                                                                                else:
                                                                                                    t = t * t
                                                                                                    u = u * t
                                                                                                    s = uint255(s) * 0.5
                                                                                                    continue 
                                                                                        if u > -1 / t:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if not ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 18
                                                                                            else:
                                                                                                if _818 * 10^uint8(_827) / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    mem[mem[64] + 4] = (_818 * 10^uint8(_827) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                                                                                    require ext_code.size(stor2)
                                                                                                    call stor2.redeem(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args ((_818 * 10^uint8(_827) / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _2835 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_2835] == mem[_2835]
                                                                                                        if mem[96] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if mem[96] - 1 != idx:
                                                                                                                if mem[96] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[96] - 1 != idx:
                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args address(this.address)
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2882 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _2901 = mem[_2882]
                                                                                                                            require mem[_2882] == mem[_2882]
                                                                                                                            mem[mem[64] + 4] = mem[_2882]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _2901
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2971 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_2971] == mem[_2971]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
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
                                                                                                                            else:
                                                                                                                                _2887 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _2907 = mem[_2887]
                                                                                                                                require mem[_2887] == mem[_2887]
                                                                                                                                mem[mem[64] + 4] = mem[_2887]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _2907
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2977 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2977] == mem[_2977]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                                        else:
                                                                                                                            if idx >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if mem[(32 * idx) + 128]:
                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args address(this.address)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _2902 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _2918 = mem[_2902]
                                                                                                                                        require mem[_2902] == mem[_2902]
                                                                                                                                        mem[mem[64] + 4] = mem[_2902]
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args _2918
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _2994 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_2994] == mem[_2994]
                                                                                                                                            if idx == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = _818
                                                                                                                                                continue 
                                                                                                                                else:
                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(this.address)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _2903 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _2919 = mem[_2903]
                                                                                                                                        require mem[_2903] == mem[_2903]
                                                                                                                                        mem[mem[64] + 4] = mem[_2903]
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args _2919
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _2995 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_2995] == mem[_2995]
                                                                                                                                            if idx == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = _818
                                                                                                                                                continue 
                                                                                                            else:
                                                                                                                if cd[68]:
                                                                                                                    if mem[96] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if mem[96] - 1 != idx:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor3)
                                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2890 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _2908 = mem[_2890]
                                                                                                                                require mem[_2890] == mem[_2890]
                                                                                                                                mem[mem[64] + 4] = mem[_2890]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _2908
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2980 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2980] == mem[_2980]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
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
                                                                                                                                else:
                                                                                                                                    _2895 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _2915 = mem[_2895]
                                                                                                                                    require mem[_2895] == mem[_2895]
                                                                                                                                    mem[mem[64] + 4] = mem[_2895]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _2915
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _2986 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_2986] == mem[_2986]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                                            else:
                                                                                                                                if idx >= mem[96]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * idx) + 128]:
                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args address(this.address)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _2909 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            _2925 = mem[_2909]
                                                                                                                                            require mem[_2909] == mem[_2909]
                                                                                                                                            mem[mem[64] + 4] = mem[_2909]
                                                                                                                                            require ext_code.size(stor2)
                                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args _2925
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _3002 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_3002] == mem[_3002]
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = _818
                                                                                                                                                    continue 
                                                                                                                                    else:
                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args address(this.address)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _2910 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            _2926 = mem[_2910]
                                                                                                                                            require mem[_2910] == mem[_2910]
                                                                                                                                            mem[mem[64] + 4] = mem[_2910]
                                                                                                                                            require ext_code.size(stor2)
                                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args _2926
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _3003 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_3003] == mem[_3003]
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = _818
                                                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                    else:
                                                                                        if 10^uint8((2 * mem[_854] % 128) - 2) > -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if not ext_call.return_data[0]:
                                                                                                revert with 'NH{q', 18
                                                                                            else:
                                                                                                if _818 * 10^uint8(_827) / ext_call.return_data[0] > -(10^uint8((2 * mem[_854] % 128) - 2) / ext_call.return_data[0]) - 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    mem[mem[64] + 4] = (_818 * 10^uint8(_827) / ext_call.return_data[0]) + (10^uint8((2 * mem[_854] % 128) - 2) / ext_call.return_data[0])
                                                                                                    require ext_code.size(stor2)
                                                                                                    call stor2.redeem(uint256 arg1) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args ((_818 * 10^uint8(_827) / ext_call.return_data[0]) + (10^uint8((2 * _858 % 128) - 2) / ext_call.return_data[0]))
                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        _1010 = mem[64]
                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                        require return_data.size >= 32
                                                                                                        require mem[_1010] == mem[_1010]
                                                                                                        if mem[96] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if mem[96] - 1 != idx:
                                                                                                                if mem[96] < 1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    if mem[96] - 1 != idx:
                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args address(this.address)
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1682 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _1797 = mem[_1682]
                                                                                                                            require mem[_1682] == mem[_1682]
                                                                                                                            mem[mem[64] + 4] = mem[_1682]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _1797
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2460 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_2460] == mem[_2460]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
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
                                                                                                                            else:
                                                                                                                                _1719 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1834 = mem[_1719]
                                                                                                                                require mem[_1719] == mem[_1719]
                                                                                                                                mem[mem[64] + 4] = mem[_1719]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _1834
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2493 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2493] == mem[_2493]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                                        else:
                                                                                                                            if idx >= mem[96]:
                                                                                                                                revert with 'NH{q', 50
                                                                                                                            else:
                                                                                                                                if mem[(32 * idx) + 128]:
                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                    require ext_code.size(stor3)
                                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args address(this.address)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1798 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _1926 = mem[_1798]
                                                                                                                                        require mem[_1798] == mem[_1798]
                                                                                                                                        mem[mem[64] + 4] = mem[_1798]
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args _1926
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _2576 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_2576] == mem[_2576]
                                                                                                                                            if idx == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = _818
                                                                                                                                                continue 
                                                                                                                                else:
                                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args address(this.address)
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _1799 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        _1927 = mem[_1799]
                                                                                                                                        require mem[_1799] == mem[_1799]
                                                                                                                                        mem[mem[64] + 4] = mem[_1799]
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args _1927
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _2577 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            require mem[_2577] == mem[_2577]
                                                                                                                                            if idx == -1:
                                                                                                                                                revert with 'NH{q', 17
                                                                                                                                            else:
                                                                                                                                                idx = idx + 1
                                                                                                                                                s = _818
                                                                                                                                                continue 
                                                                                                            else:
                                                                                                                if cd[68]:
                                                                                                                    if mem[96] < 1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        if mem[96] - 1 != idx:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor3)
                                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1722 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1835 = mem[_1722]
                                                                                                                                require mem[_1722] == mem[_1722]
                                                                                                                                mem[mem[64] + 4] = mem[_1722]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _1835
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2496 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2496] == mem[_2496]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
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
                                                                                                                                else:
                                                                                                                                    _1763 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _1883 = mem[_1763]
                                                                                                                                    require mem[_1763] == mem[_1763]
                                                                                                                                    mem[mem[64] + 4] = mem[_1763]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _1883
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _2534 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_2534] == mem[_2534]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                                            else:
                                                                                                                                if idx >= mem[96]:
                                                                                                                                    revert with 'NH{q', 50
                                                                                                                                else:
                                                                                                                                    if mem[(32 * idx) + 128]:
                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                        require ext_code.size(stor3)
                                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args address(this.address)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1836 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            _1966 = mem[_1836]
                                                                                                                                            require mem[_1836] == mem[_1836]
                                                                                                                                            mem[mem[64] + 4] = mem[_1836]
                                                                                                                                            require ext_code.size(stor2)
                                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args _1966
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _2615 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_2615] == mem[_2615]
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = _818
                                                                                                                                                    continue 
                                                                                                                                    else:
                                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                                        require ext_code.size(stor2)
                                                                                                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args address(this.address)
                                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            _1837 = mem[64]
                                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            _1967 = mem[_1837]
                                                                                                                                            require mem[_1837] == mem[_1837]
                                                                                                                                            mem[mem[64] + 4] = mem[_1837]
                                                                                                                                            require ext_code.size(stor2)
                                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                                 gas gas_remaining wei
                                                                                                                                                args _1967
                                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                _2616 = mem[64]
                                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                require mem[_2616] == mem[_2616]
                                                                                                                                                if idx == -1:
                                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                                else:
                                                                                                                                                    idx = idx + 1
                                                                                                                                                    s = _818
                                                                                                                                                    continue 
                                                                                                                else:
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                else:
                                                                                    if not ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 18
                                                                                    else:
                                                                                        if _818 * 10^uint8(_827) / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            mem[mem[64] + 4] = (_818 * 10^uint8(_827) / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                                                                            require ext_code.size(stor2)
                                                                                            call stor2.redeem(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((_818 * 10^uint8(_827) / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _981 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_981] == mem[_981]
                                                                                                if mem[96] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if mem[96] - 1 != idx:
                                                                                                        if mem[96] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if mem[96] - 1 != idx:
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(stor3)
                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(this.address)
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1492 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _1596 = mem[_1492]
                                                                                                                    require mem[_1492] == mem[_1492]
                                                                                                                    mem[mem[64] + 4] = mem[_1492]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _1596
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _2214 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_2214] == mem[_2214]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
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
                                                                                                                    else:
                                                                                                                        _1527 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1628 = mem[_1527]
                                                                                                                        require mem[_1527] == mem[_1527]
                                                                                                                        mem[mem[64] + 4] = mem[_1527]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1628
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2256 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_2256] == mem[_2256]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                                                else:
                                                                                                                    if idx >= mem[96]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * idx) + 128]:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor3)
                                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1597 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1684 = mem[_1597]
                                                                                                                                require mem[_1597] == mem[_1597]
                                                                                                                                mem[mem[64] + 4] = mem[_1597]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _1684
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2342 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2342] == mem[_2342]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                                        else:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1598 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1685 = mem[_1598]
                                                                                                                                require mem[_1598] == mem[_1598]
                                                                                                                                mem[mem[64] + 4] = mem[_1598]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _1685
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2343 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2343] == mem[_2343]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                    else:
                                                                                                        if cd[68]:
                                                                                                            if mem[96] < 1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if mem[96] - 1 != idx:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor3)
                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1530 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1629 = mem[_1530]
                                                                                                                        require mem[_1530] == mem[_1530]
                                                                                                                        mem[mem[64] + 4] = mem[_1530]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1629
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2259 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_2259] == mem[_2259]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
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
                                                                                                                        else:
                                                                                                                            _1564 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _1659 = mem[_1564]
                                                                                                                            require mem[_1564] == mem[_1564]
                                                                                                                            mem[mem[64] + 4] = mem[_1564]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _1659
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2302 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_2302] == mem[_2302]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
                                                                                                                    else:
                                                                                                                        if idx >= mem[96]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            if mem[(32 * idx) + 128]:
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(stor3)
                                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args address(this.address)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _1630 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _1723 = mem[_1630]
                                                                                                                                    require mem[_1630] == mem[_1630]
                                                                                                                                    mem[mem[64] + 4] = mem[_1630]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _1723
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _2382 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_2382] == mem[_2382]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                                            else:
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args address(this.address)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _1631 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _1724 = mem[_1631]
                                                                                                                                    require mem[_1631] == mem[_1631]
                                                                                                                                    mem[mem[64] + 4] = mem[_1631]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _1724
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _2383 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_2383] == mem[_2383]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                        else:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                s = _818
                                                                                                                continue 
                                                else:
                                                    if _818 and 1 > -1 / _818:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            revert with 'NH{q', 18
                                                        else:
                                                            require ext_code.size(stor3)
                                                            staticcall stor3.0x313ce567 with:
                                                                    gas gas_remaining wei
                                                            mem[mem[64]] = ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                _837 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 32
                                                                _844 = mem[_837]
                                                                require mem[_837] == mem[_837 + 31 len 1]
                                                                if mem[_837 + 31 len 1] and 2 > 255 / mem[_837 + 31 len 1]:
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    if 2 * mem[_837] % 128 < 2:
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        if uint8((2 * mem[_837] % 128) - 2):
                                                                            if not bool(uint8((2 * mem[_837] % 128) - 2) < 78) and not bool(uint8((2 * mem[_837] % 128) - 2) < 32):
                                                                                t = 10
                                                                                u = 1
                                                                                s = uint8((2 * mem[_837] % 128) - 2)
                                                                                while s > 1:
                                                                                    if t > -1 / t:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        if not bool(s):
                                                                                            t = t * t
                                                                                            u = u
                                                                                            s = uint255(s) * 0.5
                                                                                            continue 
                                                                                        else:
                                                                                            t = t * t
                                                                                            u = u * t
                                                                                            s = uint255(s) * 0.5
                                                                                            continue 
                                                                                if u > -1 / t:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if not ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 18
                                                                                    else:
                                                                                        if _818 / ext_call.return_data[0] > -(u * t / ext_call.return_data[0]) - 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            mem[mem[64] + 4] = (_818 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0])
                                                                                            require ext_code.size(stor2)
                                                                                            call stor2.redeem(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((_818 / ext_call.return_data[0]) + (u * t / ext_call.return_data[0]))
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _2836 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_2836] == mem[_2836]
                                                                                                if mem[96] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if mem[96] - 1 != idx:
                                                                                                        if mem[96] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if mem[96] - 1 != idx:
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(stor3)
                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(this.address)
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2884 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _2904 = mem[_2884]
                                                                                                                    require mem[_2884] == mem[_2884]
                                                                                                                    mem[mem[64] + 4] = mem[_2884]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _2904
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _2973 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_2973] == mem[_2973]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
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
                                                                                                                    else:
                                                                                                                        _2891 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _2911 = mem[_2891]
                                                                                                                        require mem[_2891] == mem[_2891]
                                                                                                                        mem[mem[64] + 4] = mem[_2891]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _2911
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2981 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_2981] == mem[_2981]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                                                else:
                                                                                                                    if idx >= mem[96]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * idx) + 128]:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor3)
                                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2905 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _2920 = mem[_2905]
                                                                                                                                require mem[_2905] == mem[_2905]
                                                                                                                                mem[mem[64] + 4] = mem[_2905]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _2920
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2997 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2997] == mem[_2997]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                                        else:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2906 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _2921 = mem[_2906]
                                                                                                                                require mem[_2906] == mem[_2906]
                                                                                                                                mem[mem[64] + 4] = mem[_2906]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _2921
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2998 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2998] == mem[_2998]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                    else:
                                                                                                        if cd[68]:
                                                                                                            if mem[96] < 1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if mem[96] - 1 != idx:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor3)
                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _2894 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _2912 = mem[_2894]
                                                                                                                        require mem[_2894] == mem[_2894]
                                                                                                                        mem[mem[64] + 4] = mem[_2894]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _2912
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2984 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_2984] == mem[_2984]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
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
                                                                                                                        else:
                                                                                                                            _2898 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _2916 = mem[_2898]
                                                                                                                            require mem[_2898] == mem[_2898]
                                                                                                                            mem[mem[64] + 4] = mem[_2898]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _2916
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2989 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_2989] == mem[_2989]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
                                                                                                                    else:
                                                                                                                        if idx >= mem[96]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            if mem[(32 * idx) + 128]:
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(stor3)
                                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args address(this.address)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2913 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _2927 = mem[_2913]
                                                                                                                                    require mem[_2913] == mem[_2913]
                                                                                                                                    mem[mem[64] + 4] = mem[_2913]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _2927
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3006 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_3006] == mem[_3006]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                                            else:
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args address(this.address)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2914 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _2928 = mem[_2914]
                                                                                                                                    require mem[_2914] == mem[_2914]
                                                                                                                                    mem[mem[64] + 4] = mem[_2914]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _2928
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _3007 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_3007] == mem[_3007]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                        else:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                s = _818
                                                                                                                continue 
                                                                            else:
                                                                                if 10^uint8((2 * mem[_837] % 128) - 2) > -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    if not ext_call.return_data[0]:
                                                                                        revert with 'NH{q', 18
                                                                                    else:
                                                                                        if _818 / ext_call.return_data[0] > -(10^uint8((2 * mem[_837] % 128) - 2) / ext_call.return_data[0]) - 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            mem[mem[64] + 4] = (_818 / ext_call.return_data[0]) + (10^uint8((2 * mem[_837] % 128) - 2) / ext_call.return_data[0])
                                                                                            require ext_code.size(stor2)
                                                                                            call stor2.redeem(uint256 arg1) with:
                                                                                                 gas gas_remaining wei
                                                                                                args ((_818 / ext_call.return_data[0]) + (10^uint8((2 * _844 % 128) - 2) / ext_call.return_data[0]))
                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                _982 = mem[64]
                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                require return_data.size >= 32
                                                                                                require mem[_982] == mem[_982]
                                                                                                if mem[96] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if mem[96] - 1 != idx:
                                                                                                        if mem[96] < 1:
                                                                                                            revert with 'NH{q', 17
                                                                                                        else:
                                                                                                            if mem[96] - 1 != idx:
                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                require ext_code.size(stor3)
                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args address(this.address)
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _1496 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _1605 = mem[_1496]
                                                                                                                    require mem[_1496] == mem[_1496]
                                                                                                                    mem[mem[64] + 4] = mem[_1496]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _1605
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _2218 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_2218] == mem[_2218]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
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
                                                                                                                    else:
                                                                                                                        _1537 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1638 = mem[_1537]
                                                                                                                        require mem[_1537] == mem[_1537]
                                                                                                                        mem[mem[64] + 4] = mem[_1537]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1638
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2260 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_2260] == mem[_2260]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                                                else:
                                                                                                                    if idx >= mem[96]:
                                                                                                                        revert with 'NH{q', 50
                                                                                                                    else:
                                                                                                                        if mem[(32 * idx) + 128]:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor3)
                                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1606 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1689 = mem[_1606]
                                                                                                                                require mem[_1606] == mem[_1606]
                                                                                                                                mem[mem[64] + 4] = mem[_1606]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _1689
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2350 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2350] == mem[_2350]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                                        else:
                                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(this.address)
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _1607 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                _1690 = mem[_1607]
                                                                                                                                require mem[_1607] == mem[_1607]
                                                                                                                                mem[mem[64] + 4] = mem[_1607]
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args _1690
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _2351 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require mem[_2351] == mem[_2351]
                                                                                                                                    if idx == -1:
                                                                                                                                        revert with 'NH{q', 17
                                                                                                                                    else:
                                                                                                                                        idx = idx + 1
                                                                                                                                        s = _818
                                                                                                                                        continue 
                                                                                                    else:
                                                                                                        if cd[68]:
                                                                                                            if mem[96] < 1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                if mem[96] - 1 != idx:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor3)
                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1540 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1639 = mem[_1540]
                                                                                                                        require mem[_1540] == mem[_1540]
                                                                                                                        mem[mem[64] + 4] = mem[_1540]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1639
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2263 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_2263] == mem[_2263]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
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
                                                                                                                        else:
                                                                                                                            _1574 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _1666 = mem[_1574]
                                                                                                                            require mem[_1574] == mem[_1574]
                                                                                                                            mem[mem[64] + 4] = mem[_1574]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _1666
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2307 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_2307] == mem[_2307]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
                                                                                                                    else:
                                                                                                                        if idx >= mem[96]:
                                                                                                                            revert with 'NH{q', 50
                                                                                                                        else:
                                                                                                                            if mem[(32 * idx) + 128]:
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(stor3)
                                                                                                                                staticcall stor3.0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args address(this.address)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _1640 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _1728 = mem[_1640]
                                                                                                                                    require mem[_1640] == mem[_1640]
                                                                                                                                    mem[mem[64] + 4] = mem[_1640]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _1728
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _2391 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_2391] == mem[_2391]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                                            else:
                                                                                                                                mem[mem[64] + 4] = this.address
                                                                                                                                require ext_code.size(stor2)
                                                                                                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args address(this.address)
                                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    _1641 = mem[64]
                                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    _1729 = mem[_1641]
                                                                                                                                    require mem[_1641] == mem[_1641]
                                                                                                                                    mem[mem[64] + 4] = mem[_1641]
                                                                                                                                    require ext_code.size(stor2)
                                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args _1729
                                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        _2392 = mem[64]
                                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require mem[_2392] == mem[_2392]
                                                                                                                                        if idx == -1:
                                                                                                                                            revert with 'NH{q', 17
                                                                                                                                        else:
                                                                                                                                            idx = idx + 1
                                                                                                                                            s = _818
                                                                                                                                            continue 
                                                                                                        else:
                                                                                                            if idx == -1:
                                                                                                                revert with 'NH{q', 17
                                                                                                            else:
                                                                                                                idx = idx + 1
                                                                                                                s = _818
                                                                                                                continue 
                                                                        else:
                                                                            if not ext_call.return_data[0]:
                                                                                revert with 'NH{q', 18
                                                                            else:
                                                                                if _818 / ext_call.return_data[0] > -(1 / ext_call.return_data[0]) - 1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    mem[mem[64] + 4] = (_818 / ext_call.return_data[0]) + (1 / ext_call.return_data[0])
                                                                                    require ext_code.size(stor2)
                                                                                    call stor2.redeem(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args ((_818 / ext_call.return_data[0]) + (1 / ext_call.return_data[0]))
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _971 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_971] == mem[_971]
                                                                                        if mem[96] < 1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            if mem[96] - 1 != idx:
                                                                                                if mem[96] < 1:
                                                                                                    revert with 'NH{q', 17
                                                                                                else:
                                                                                                    if mem[96] - 1 != idx:
                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                        require ext_code.size(stor3)
                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(this.address)
                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            _1374 = mem[64]
                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                            require return_data.size >= 32
                                                                                                            _1436 = mem[_1374]
                                                                                                            require mem[_1374] == mem[_1374]
                                                                                                            mem[mem[64] + 4] = mem[_1374]
                                                                                                            require ext_code.size(stor2)
                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args _1436
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1976 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                require mem[_1976] == mem[_1976]
                                                                                                                if idx == -1:
                                                                                                                    revert with 'NH{q', 17
                                                                                                                else:
                                                                                                                    idx = idx + 1
                                                                                                                    s = _818
                                                                                                                    continue 
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
                                                                                                            else:
                                                                                                                _1395 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1457 = mem[_1395]
                                                                                                                require mem[_1395] == mem[_1395]
                                                                                                                mem[mem[64] + 4] = mem[_1395]
                                                                                                                require ext_code.size(stor2)
                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args _1457
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2020 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2020] == mem[_2020]
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
                                                                                                        else:
                                                                                                            if idx >= mem[96]:
                                                                                                                revert with 'NH{q', 50
                                                                                                            else:
                                                                                                                if mem[(32 * idx) + 128]:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor3)
                                                                                                                    staticcall stor3.0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1437 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1498 = mem[_1437]
                                                                                                                        require mem[_1437] == mem[_1437]
                                                                                                                        mem[mem[64] + 4] = mem[_1437]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1498
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2089 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_2089] == mem[_2089]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                                                else:
                                                                                                                    mem[mem[64] + 4] = this.address
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(this.address)
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _1438 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        _1499 = mem[_1438]
                                                                                                                        require mem[_1438] == mem[_1438]
                                                                                                                        mem[mem[64] + 4] = mem[_1438]
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args _1499
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _2090 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            require mem[_2090] == mem[_2090]
                                                                                                                            if idx == -1:
                                                                                                                                revert with 'NH{q', 17
                                                                                                                            else:
                                                                                                                                idx = idx + 1
                                                                                                                                s = _818
                                                                                                                                continue 
                                                                                            else:
                                                                                                if cd[68]:
                                                                                                    if mem[96] < 1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        if mem[96] - 1 != idx:
                                                                                                            mem[mem[64] + 4] = this.address
                                                                                                            require ext_code.size(stor3)
                                                                                                            staticcall stor3.0x70a08231 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args address(this.address)
                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                _1398 = mem[64]
                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                require return_data.size >= 32
                                                                                                                _1458 = mem[_1398]
                                                                                                                require mem[_1398] == mem[_1398]
                                                                                                                mem[mem[64] + 4] = mem[_1398]
                                                                                                                require ext_code.size(stor2)
                                                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args _1458
                                                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    _2023 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    require mem[_2023] == mem[_2023]
                                                                                                                    if idx == -1:
                                                                                                                        revert with 'NH{q', 17
                                                                                                                    else:
                                                                                                                        idx = idx + 1
                                                                                                                        s = _818
                                                                                                                        continue 
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
                                                                                                                else:
                                                                                                                    _1414 = mem[64]
                                                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                    require return_data.size >= 32
                                                                                                                    _1473 = mem[_1414]
                                                                                                                    require mem[_1414] == mem[_1414]
                                                                                                                    mem[mem[64] + 4] = mem[_1414]
                                                                                                                    require ext_code.size(stor2)
                                                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args _1473
                                                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        _2058 = mem[64]
                                                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                        require return_data.size >= 32
                                                                                                                        require mem[_2058] == mem[_2058]
                                                                                                                        if idx == -1:
                                                                                                                            revert with 'NH{q', 17
                                                                                                                        else:
                                                                                                                            idx = idx + 1
                                                                                                                            s = _818
                                                                                                                            continue 
                                                                                                            else:
                                                                                                                if idx >= mem[96]:
                                                                                                                    revert with 'NH{q', 50
                                                                                                                else:
                                                                                                                    if mem[(32 * idx) + 128]:
                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                        require ext_code.size(stor3)
                                                                                                                        staticcall stor3.0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args address(this.address)
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1459 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _1541 = mem[_1459]
                                                                                                                            require mem[_1459] == mem[_1459]
                                                                                                                            mem[mem[64] + 4] = mem[_1459]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _1541
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2133 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_2133] == mem[_2133]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
                                                                                                                    else:
                                                                                                                        mem[mem[64] + 4] = this.address
                                                                                                                        require ext_code.size(stor2)
                                                                                                                        call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(this.address)
                                                                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            _1460 = mem[64]
                                                                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                            require return_data.size >= 32
                                                                                                                            _1542 = mem[_1460]
                                                                                                                            require mem[_1460] == mem[_1460]
                                                                                                                            mem[mem[64] + 4] = mem[_1460]
                                                                                                                            require ext_code.size(stor2)
                                                                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args _1542
                                                                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                _2134 = mem[64]
                                                                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                                                                require return_data.size >= 32
                                                                                                                                require mem[_2134] == mem[_2134]
                                                                                                                                if idx == -1:
                                                                                                                                    revert with 'NH{q', 17
                                                                                                                                else:
                                                                                                                                    idx = idx + 1
                                                                                                                                    s = _818
                                                                                                                                    continue 
                                                                                                else:
                                                                                                    if idx == -1:
                                                                                                        revert with 'NH{q', 17
                                                                                                    else:
                                                                                                        idx = idx + 1
                                                                                                        s = _818
                                                                                                        continue 
                                        else:
                                            mem[mem[64] + 4] = cd[100]
                                            require ext_code.size(stor2)
                                            call stor2.redeemUnderlying(uint256 arg1) with:
                                                 gas gas_remaining wei
                                                args cd[100]
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                _829 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_829] == mem[_829]
                                                if mem[96] < 1:
                                                    revert with 'NH{q', 17
                                                else:
                                                    if mem[96] - 1 != idx:
                                                        if mem[96] < 1:
                                                            revert with 'NH{q', 17
                                                        else:
                                                            if mem[96] - 1 != idx:
                                                                mem[mem[64] + 4] = this.address
                                                                require ext_code.size(stor3)
                                                                staticcall stor3.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args address(this.address)
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    _865 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    _879 = mem[_865]
                                                                    require mem[_865] == mem[_865]
                                                                    mem[mem[64] + 4] = mem[_865]
                                                                    require ext_code.size(stor2)
                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                         gas gas_remaining wei
                                                                        args _879
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _922 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_922] == mem[_922]
                                                                        if idx == -1:
                                                                            revert with 'NH{q', 17
                                                                        else:
                                                                            idx = idx + 1
                                                                            s = _818
                                                                            continue 
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
                                                                    else:
                                                                        _867 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _884 = mem[_867]
                                                                        require mem[_867] == mem[_867]
                                                                        mem[mem[64] + 4] = mem[_867]
                                                                        require ext_code.size(stor2)
                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _884
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _924 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_924] == mem[_924]
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                s = _818
                                                                                continue 
                                                                else:
                                                                    if idx >= mem[96]:
                                                                        revert with 'NH{q', 50
                                                                    else:
                                                                        if mem[(32 * idx) + 128]:
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor3)
                                                                            staticcall stor3.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args address(this.address)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _880 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _894 = mem[_880]
                                                                                require mem[_880] == mem[_880]
                                                                                mem[mem[64] + 4] = mem[_880]
                                                                                require ext_code.size(stor2)
                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _894
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _934 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_934] == mem[_934]
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        s = _818
                                                                                        continue 
                                                                        else:
                                                                            mem[mem[64] + 4] = this.address
                                                                            require ext_code.size(stor2)
                                                                            call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args address(this.address)
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _881 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                _895 = mem[_881]
                                                                                require mem[_881] == mem[_881]
                                                                                mem[mem[64] + 4] = mem[_881]
                                                                                require ext_code.size(stor2)
                                                                                call stor2.repayBorrow(uint256 arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args _895
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _935 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    require mem[_935] == mem[_935]
                                                                                    if idx == -1:
                                                                                        revert with 'NH{q', 17
                                                                                    else:
                                                                                        idx = idx + 1
                                                                                        s = _818
                                                                                        continue 
                                                    else:
                                                        if cd[68]:
                                                            if mem[96] < 1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                if mem[96] - 1 != idx:
                                                                    mem[mem[64] + 4] = this.address
                                                                    require ext_code.size(stor3)
                                                                    staticcall stor3.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args address(this.address)
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        _870 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        _885 = mem[_870]
                                                                        require mem[_870] == mem[_870]
                                                                        mem[mem[64] + 4] = mem[_870]
                                                                        require ext_code.size(stor2)
                                                                        call stor2.repayBorrow(uint256 arg1) with:
                                                                             gas gas_remaining wei
                                                                            args _885
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            _927 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_927] == mem[_927]
                                                                            if idx == -1:
                                                                                revert with 'NH{q', 17
                                                                            else:
                                                                                idx = idx + 1
                                                                                s = _818
                                                                                continue 
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
                                                                        else:
                                                                            _873 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            _891 = mem[_873]
                                                                            require mem[_873] == mem[_873]
                                                                            mem[mem[64] + 4] = mem[_873]
                                                                            require ext_code.size(stor2)
                                                                            call stor2.repayBorrow(uint256 arg1) with:
                                                                                 gas gas_remaining wei
                                                                                args _891
                                                                            mem[mem[64]] = ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                _928 = mem[64]
                                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                                require return_data.size >= 32
                                                                                require mem[_928] == mem[_928]
                                                                                if idx == -1:
                                                                                    revert with 'NH{q', 17
                                                                                else:
                                                                                    idx = idx + 1
                                                                                    s = _818
                                                                                    continue 
                                                                    else:
                                                                        if idx >= mem[96]:
                                                                            revert with 'NH{q', 50
                                                                        else:
                                                                            if mem[(32 * idx) + 128]:
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor3)
                                                                                staticcall stor3.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args address(this.address)
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _886 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _897 = mem[_886]
                                                                                    require mem[_886] == mem[_886]
                                                                                    mem[mem[64] + 4] = mem[_886]
                                                                                    require ext_code.size(stor2)
                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _897
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _938 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_938] == mem[_938]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            s = _818
                                                                                            continue 
                                                                            else:
                                                                                mem[mem[64] + 4] = this.address
                                                                                require ext_code.size(stor2)
                                                                                call stor2.borrowBalanceCurrent(address arg1) with:
                                                                                     gas gas_remaining wei
                                                                                    args address(this.address)
                                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    _887 = mem[64]
                                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                                    require return_data.size >= 32
                                                                                    _898 = mem[_887]
                                                                                    require mem[_887] == mem[_887]
                                                                                    mem[mem[64] + 4] = mem[_887]
                                                                                    require ext_code.size(stor2)
                                                                                    call stor2.repayBorrow(uint256 arg1) with:
                                                                                         gas gas_remaining wei
                                                                                        args _898
                                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        _939 = mem[64]
                                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                                        require return_data.size >= 32
                                                                                        require mem[_939] == mem[_939]
                                                                                        if idx == -1:
                                                                                            revert with 'NH{q', 17
                                                                                        else:
                                                                                            idx = idx + 1
                                                                                            s = _818
                                                                                            continue 
                                                        else:
                                                            if idx == -1:
                                                                revert with 'NH{q', 17
                                                            else:
                                                                idx = idx + 1
                                                                s = _818
                                                                continue 
}



}
