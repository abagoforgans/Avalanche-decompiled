contract main {




// =====================  Runtime code  =====================


#
#  - sub_0eb8d896(?)
#  - sub_1aebe7c0(?)
#  - sub_1f911393(?)
#  - supply(uint256 arg1)
#  - sub_6a7fc6ad(?)
#  - sub_6e1e1028(?)
#  - sub_9a6b3e05(?)
#  - repay(uint256 arg1, bool arg2)
#  - borrow(uint256 arg1)
#  - redeem(uint256 arg1, bool arg2)
#  - isExecutor(address arg1)
#
address sub_b53673caAddress;
array of address stor1;
array of struct stor2;
address stor3;
address stor4;
address stor5;
address stor6;

function sub_b53673ca(?) {
    return sub_b53673caAddress
}

function _fallback() payable {
  stop
}

function sub_f31167d0(?) {
    if sub_b53673caAddress != msg.sender:
        return 0
    return 1
}

function sub_eb0a775c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not owner'
    emit 0x747513c0: stor1.length, address(arg1)
    stor1.length = address(arg1)
    return 1
}

function transfer_ownership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not owner'
    emit OwnershipTransferred(sub_b53673caAddress, arg1);
    sub_b53673caAddress = arg1
    return 1
}

function sub_991539fe(?) {
    require ext_code.size(stor4)
    staticcall stor4.getAccountSnapshot(address arg1) with:
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

function sub_ee26468a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
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
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not owner'
    idx = 0
    while uint8(idx) < ('cd', 4).length:
        if uint8(idx) >= ('cd', 4).length:
            revert with 'NH{q', 50
        s = 0
        while uint8(s) < stor2.length:
            mem[0] = 2
            if mem[(32 * uint8(idx)) + 140 len 20] != stor2[uint8(s)].field_0:
                if uint8(s) == 255:
                    revert with 'NH{q', 17
                s = uint8(s) + 1
                continue 
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if uint8(idx) >= ('cd', 4).length:
            revert with 'NH{q', 50
        emit 0x4c7bd962: sub_b53673caAddress, mem[(32 * uint8(idx)) + 140 len 20]
        if uint8(idx) >= ('cd', 4).length:
            revert with 'NH{q', 50
        stor2.length++
        mem[0] = 2
        stor2[stor2.length].field_0 = mem[(32 * uint8(idx)) + 140 len 20]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}

function claim(uint8 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        mem[128] = stor4
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
        require ext_code.size(stor3)
        call stor3.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args arg1 << 248, address(this.address), Array(len=1, data=mem[292])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
    mem[128] = stor4
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
    require ext_code.size(stor3)
    call stor3.claimReward(uint8 arg1, address arg2, address[] arg3) with:
         gas gas_remaining wei
        args arg1 << 248, address(this.address), Array(len=1, data=mem[292])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c60562fe(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        mem[64] = (32 * stor2.length) + 128
        mem[96] = stor2.length
        if not stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = 128
            t = (32 * stor2.length) + 192
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        mem[128] = address(stor2.field_0)
        idx = 128
        s = sha3(2)
        while (32 * stor2.length) + 96 > idx:
            mem[idx + 32] = stor1[s]
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor2.length) + -mem[64] + 192
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    if not stor2.length:
        mem[(32 * stor2.length) + 128] = 32
        mem[(32 * stor2.length) + 160] = stor2.length
        idx = 0
        s = 128
        t = (32 * stor2.length) + 192
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor2.length) + 128
           len (96 * stor2.length) + 64
    mem[128] = address(stor2.field_0)
    idx = 128
    s = 0
    while (32 * stor2.length) + 96 > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2.length) + 128] = 32
    mem[(32 * stor2.length) + 160] = stor2.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor2.length) + -mem[64] + 192
}

function sub_89a23f53(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
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
    idx = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        idx = 0
        while uint8(idx) < ('cd', 4).length:
            s = 0
            while uint8(s) < stor2.length:
                mem[0] = 2
                if uint8(idx) >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[(32 * uint8(idx)) + 140 len 20] != stor2[uint8(s)].field_0:
                    if uint8(s) == 255:
                        revert with 'NH{q', 17
                    s = uint8(s) + 1
                    continue 
                if uint8(s) >= ('cd', 4).length:
                    revert with 'NH{q', 50
                emit 0xb3de56aa: msg.sender, mem[(32 * uint8(s)) + 140 len 20]
                if uint8(s) >= stor2.length:
                    revert with 0, 'position does not exist'
                if stor2.length < 1:
                    revert with 'NH{q', 17
                if stor2.length - 1 != uint8(s):
                    if stor2.length < 1:
                        revert with 'NH{q', 17
                    if stor2.length - 1 >= stor2.length:
                        revert with 'NH{q', 50
                    if uint8(s) >= stor2.length:
                        revert with 'NH{q', 50
                    if stor2.length < 1:
                        revert with 'NH{q', 17
                    if stor2.length - 1 >= stor2.length:
                        revert with 'NH{q', 50
                    stor2[stor2.length].field_0 = stor2[uint8(s)].field_0
                    if uint8(s) >= stor2.length:
                        revert with 'NH{q', 50
                    stor2[uint8(s)].field_0 = stor2[stor2.length].field_0
                if not stor2.length:
                    revert with 'NH{q', 49
                mem[0] = 2
                stor2[stor2.length].field_0 = 0
                stor2.length--
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                continue 
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
    idx = 0
    while uint8(idx) < ('cd', 4).length:
        s = 0
        while uint8(s) < stor2.length:
            mem[0] = 2
            if uint8(idx) >= ('cd', 4).length:
                revert with 'NH{q', 50
            if mem[(32 * uint8(idx)) + 140 len 20] != stor2[uint8(s)].field_0:
                if uint8(s) == 255:
                    revert with 'NH{q', 17
                s = uint8(s) + 1
                continue 
            if uint8(s) >= ('cd', 4).length:
                revert with 'NH{q', 50
            emit 0xb3de56aa: msg.sender, mem[(32 * uint8(s)) + 140 len 20]
            if uint8(s) >= stor2.length:
                revert with 0, 'position does not exist'
            if stor2.length < 1:
                revert with 'NH{q', 17
            if stor2.length - 1 != uint8(s):
                if stor2.length < 1:
                    revert with 'NH{q', 17
                if stor2.length - 1 >= stor2.length:
                    revert with 'NH{q', 50
                if uint8(s) >= stor2.length:
                    revert with 'NH{q', 50
                if stor2.length < 1:
                    revert with 'NH{q', 17
                if stor2.length - 1 >= stor2.length:
                    revert with 'NH{q', 50
                stor2[stor2.length].field_0 = stor2[uint8(s)].field_0
                if uint8(s) >= stor2.length:
                    revert with 'NH{q', 50
                stor2[uint8(s)].field_0 = stor2[stor2.length].field_0
            if not stor2.length:
                revert with 'NH{q', 49
            mem[0] = 2
            stor2[stor2.length].field_0 = 0
            stor2.length--
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
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
    idx = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if cd[4]:
            if cd[4] <= 0:
                revert with 0, 'amount<=0'
            idx = 0
            s = cd[4]
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _577 = mem[(32 * idx) + 128]
                t = 0
                while uint8(t) < stor2.length:
                    mem[0] = 2
                    if stor2[uint8(t)].field_0 != msg.sender:
                        if uint8(t) == 255:
                            revert with 'NH{q', 17
                        t = uint8(t) + 1
                        continue 
                    mem[mem[64] + 4] = s
                    require ext_code.size(stor4)
                    call stor4.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _765 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_765] == mem[_765]
                    if not uint32(cd[68]):
                        if s and _577 > -1 / s:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = s * _577
                        require ext_code.size(stor4)
                        call stor4.0xc5ebeaec with:
                             gas gas_remaining wei
                            args (s * _577)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _805 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_805] == mem[_805]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s * _577
                        continue 
                    if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                        if 10^uint32(cd[68]) > -1:
                            revert with 'NH{q', 17
                        if s and _577 > -1 / s:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[68]):
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = s * _577 / 10^uint32(cd[68])
                        require ext_code.size(stor4)
                        call stor4.0xc5ebeaec with:
                             gas gas_remaining wei
                            args (s * _577 / 10^uint32(cd[68]))
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_837] == mem[_837]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s * _577 / 10^uint32(cd[68])
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
                    if s and _577 > -1 / s:
                        revert with 'NH{q', 17
                    if not v * u:
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = s * _577 / v * u
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _577 / v * u)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_892] == mem[_892]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _577 / v * u
                    continue 
                if sub_b53673caAddress != msg.sender:
                    revert with 0, 'not executor or owner'
                mem[mem[64] + 4] = s
                require ext_code.size(stor4)
                call stor4.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _759 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_759] == mem[_759]
                if not uint32(cd[68]):
                    if s and _577 > -1 / s:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = s * _577
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _577)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_801] == mem[_801]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _577
                    continue 
                if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                    if 10^uint32(cd[68]) > -1:
                        revert with 'NH{q', 17
                    if s and _577 > -1 / s:
                        revert with 'NH{q', 17
                    if not 10^uint32(cd[68]):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = s * _577 / 10^uint32(cd[68])
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _577 / 10^uint32(cd[68]))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_833] == mem[_833]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _577 / 10^uint32(cd[68])
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
                if s and _577 > -1 / s:
                    revert with 'NH{q', 17
                if not v * u:
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = s * _577 / v * u
                require ext_code.size(stor4)
                call stor4.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _577 / v * u)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _891 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_891] == mem[_891]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _577 / v * u
                continue 
            mem[mem[64] + 4] = s
            require ext_code.size(stor4)
            call stor4.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _589 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_589] == mem[_589]
        else:
            mem[floor32(('cd', 36).length) + 101] = this.address
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
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
                _578 = mem[(32 * idx) + 128]
                t = 0
                while uint8(t) < stor2.length:
                    mem[0] = 2
                    if stor2[uint8(t)].field_0 != msg.sender:
                        if uint8(t) == 255:
                            revert with 'NH{q', 17
                        t = uint8(t) + 1
                        continue 
                    mem[mem[64] + 4] = s
                    require ext_code.size(stor4)
                    call stor4.0xa0712d68 with:
                         gas gas_remaining wei
                        args s
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _766 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_766] == mem[_766]
                    if not uint32(cd[68]):
                        if s and _578 > -1 / s:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = s * _578
                        require ext_code.size(stor4)
                        call stor4.0xc5ebeaec with:
                             gas gas_remaining wei
                            args (s * _578)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _806 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_806] == mem[_806]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s * _578
                        continue 
                    if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                        if 10^uint32(cd[68]) > -1:
                            revert with 'NH{q', 17
                        if s and _578 > -1 / s:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[68]):
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = s * _578 / 10^uint32(cd[68])
                        require ext_code.size(stor4)
                        call stor4.0xc5ebeaec with:
                             gas gas_remaining wei
                            args (s * _578 / 10^uint32(cd[68]))
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _838 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_838] == mem[_838]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s * _578 / 10^uint32(cd[68])
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
                    if s and _578 > -1 / s:
                        revert with 'NH{q', 17
                    if not v * u:
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = s * _578 / v * u
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _578 / v * u)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _894 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_894] == mem[_894]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _578 / v * u
                    continue 
                if sub_b53673caAddress != msg.sender:
                    revert with 0, 'not executor or owner'
                mem[mem[64] + 4] = s
                require ext_code.size(stor4)
                call stor4.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _761 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_761] == mem[_761]
                if not uint32(cd[68]):
                    if s and _578 > -1 / s:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = s * _578
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _578)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _802 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_802] == mem[_802]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _578
                    continue 
                if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                    if 10^uint32(cd[68]) > -1:
                        revert with 'NH{q', 17
                    if s and _578 > -1 / s:
                        revert with 'NH{q', 17
                    if not 10^uint32(cd[68]):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = s * _578 / 10^uint32(cd[68])
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _578 / 10^uint32(cd[68]))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _834 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_834] == mem[_834]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _578 / 10^uint32(cd[68])
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
                if s and _578 > -1 / s:
                    revert with 'NH{q', 17
                if not v * u:
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = s * _578 / v * u
                require ext_code.size(stor4)
                call stor4.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _578 / v * u)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _893 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_893] == mem[_893]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _578 / v * u
                continue 
            mem[mem[64] + 4] = s
            require ext_code.size(stor4)
            call stor4.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _590 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_590] == mem[_590]
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
    if cd[4]:
        if cd[4] <= 0:
            revert with 0, 'amount<=0'
        idx = 0
        s = cd[4]
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _575 = mem[(32 * idx) + 128]
            t = 0
            while uint8(t) < stor2.length:
                mem[0] = 2
                if stor2[uint8(t)].field_0 != msg.sender:
                    if uint8(t) == 255:
                        revert with 'NH{q', 17
                    t = uint8(t) + 1
                    continue 
                mem[mem[64] + 4] = s
                require ext_code.size(stor4)
                call stor4.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _763 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_763] == mem[_763]
                if not uint32(cd[68]):
                    if s and _575 > -1 / s:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = s * _575
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _575)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _803 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_803] == mem[_803]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _575
                    continue 
                if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                    if 10^uint32(cd[68]) > -1:
                        revert with 'NH{q', 17
                    if s and _575 > -1 / s:
                        revert with 'NH{q', 17
                    if not 10^uint32(cd[68]):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = s * _575 / 10^uint32(cd[68])
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _575 / 10^uint32(cd[68]))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_835] == mem[_835]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _575 / 10^uint32(cd[68])
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
                if s and _575 > -1 / s:
                    revert with 'NH{q', 17
                if not v * u:
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = s * _575 / v * u
                require ext_code.size(stor4)
                call stor4.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _575 / v * u)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _888 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_888] == mem[_888]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _575 / v * u
                continue 
            if sub_b53673caAddress != msg.sender:
                revert with 0, 'not executor or owner'
            mem[mem[64] + 4] = s
            require ext_code.size(stor4)
            call stor4.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _755 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_755] == mem[_755]
            if not uint32(cd[68]):
                if s and _575 > -1 / s:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = s * _575
                require ext_code.size(stor4)
                call stor4.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _575)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _799 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_799] == mem[_799]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _575
                continue 
            if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                if 10^uint32(cd[68]) > -1:
                    revert with 'NH{q', 17
                if s and _575 > -1 / s:
                    revert with 'NH{q', 17
                if not 10^uint32(cd[68]):
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = s * _575 / 10^uint32(cd[68])
                require ext_code.size(stor4)
                call stor4.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _575 / 10^uint32(cd[68]))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_831] == mem[_831]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _575 / 10^uint32(cd[68])
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
            if s and _575 > -1 / s:
                revert with 'NH{q', 17
            if not v * u:
                revert with 'NH{q', 18
            mem[mem[64] + 4] = s * _575 / v * u
            require ext_code.size(stor4)
            call stor4.0xc5ebeaec with:
                 gas gas_remaining wei
                args (s * _575 / v * u)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _887 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_887] == mem[_887]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s * _575 / v * u
            continue 
        mem[mem[64] + 4] = s
        require ext_code.size(stor4)
        call stor4.0xa0712d68 with:
             gas gas_remaining wei
            args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _587 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_587] == mem[_587]
    else:
        mem[floor32(('cd', 36).length) + 101] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
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
            _576 = mem[(32 * idx) + 128]
            t = 0
            while uint8(t) < stor2.length:
                mem[0] = 2
                if stor2[uint8(t)].field_0 != msg.sender:
                    if uint8(t) == 255:
                        revert with 'NH{q', 17
                    t = uint8(t) + 1
                    continue 
                mem[mem[64] + 4] = s
                require ext_code.size(stor4)
                call stor4.0xa0712d68 with:
                     gas gas_remaining wei
                    args s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _764 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_764] == mem[_764]
                if not uint32(cd[68]):
                    if s and _576 > -1 / s:
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = s * _576
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _576)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _804 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_804] == mem[_804]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _576
                    continue 
                if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                    if 10^uint32(cd[68]) > -1:
                        revert with 'NH{q', 17
                    if s and _576 > -1 / s:
                        revert with 'NH{q', 17
                    if not 10^uint32(cd[68]):
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = s * _576 / 10^uint32(cd[68])
                    require ext_code.size(stor4)
                    call stor4.0xc5ebeaec with:
                         gas gas_remaining wei
                        args (s * _576 / 10^uint32(cd[68]))
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _836 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_836] == mem[_836]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s * _576 / 10^uint32(cd[68])
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
                if s and _576 > -1 / s:
                    revert with 'NH{q', 17
                if not v * u:
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = s * _576 / v * u
                require ext_code.size(stor4)
                call stor4.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _576 / v * u)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _890 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_890] == mem[_890]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _576 / v * u
                continue 
            if sub_b53673caAddress != msg.sender:
                revert with 0, 'not executor or owner'
            mem[mem[64] + 4] = s
            require ext_code.size(stor4)
            call stor4.0xa0712d68 with:
                 gas gas_remaining wei
                args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _757 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_757] == mem[_757]
            if not uint32(cd[68]):
                if s and _576 > -1 / s:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = s * _576
                require ext_code.size(stor4)
                call stor4.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _576)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _800 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_800] == mem[_800]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _576
                continue 
            if bool(bool(uint32(cd[68]) < 78)) or bool(bool(uint32(cd[68]) < 32)):
                if 10^uint32(cd[68]) > -1:
                    revert with 'NH{q', 17
                if s and _576 > -1 / s:
                    revert with 'NH{q', 17
                if not 10^uint32(cd[68]):
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = s * _576 / 10^uint32(cd[68])
                require ext_code.size(stor4)
                call stor4.0xc5ebeaec with:
                     gas gas_remaining wei
                    args (s * _576 / 10^uint32(cd[68]))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _832 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_832] == mem[_832]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s * _576 / 10^uint32(cd[68])
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
            if s and _576 > -1 / s:
                revert with 'NH{q', 17
            if not v * u:
                revert with 'NH{q', 18
            mem[mem[64] + 4] = s * _576 / v * u
            require ext_code.size(stor4)
            call stor4.0xc5ebeaec with:
                 gas gas_remaining wei
                args (s * _576 / v * u)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _889 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_889] == mem[_889]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s * _576 / v * u
            continue 
        mem[mem[64] + 4] = s
        require ext_code.size(stor4)
        call stor4.0xa0712d68 with:
             gas gas_remaining wei
            args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _588 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_588] == mem[_588]
}

function sub_443bd2bd(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] == uint32(cd[4])
    require cd[36] == uint32(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[100] == bool(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if not cd[100]:
            if eth.balance(this.address) <= 0:
                revert with 0, 'not enough avax token'
            if ('cd', 132).length > test266151307():
                revert with 'NH{q', 65
            mem[96] = ('cd', 132).length
            if uint8(cd[68]) != 1:
                if not ('cd', 132).length:
                    mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 132).length) + 132] = eth.balance(this.address)
                    mem[(32 * ('cd', 132).length) + 164] = 64
                    mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (32 * ('cd', 132).length) + 228
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1202 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                    require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
                    _1213 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129
                    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                    require _1202 + (32 * _1213) + 32 <= return_data.size
                    idx = 0
                    s = (32 * ('cd', 132).length) + _1202 + 160
                    t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 160
                    while idx < _1213:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1213 < 1:
                            revert with 'NH{q', 17
                        if _1213 - 1 >= _1213:
                            revert with 'NH{q', 50
                        _1849 = mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1849 * uint32(cd[4])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _1849 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2374 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2390 = mem[_2374]
                        require mem[_2374] <= test266151307()
                        require _2374 + mem[_2374] + 31 < _2374 + return_data.size
                        _2410 = mem[_2374 + mem[_2374]]
                        if mem[_2374 + mem[_2374]] > test266151307():
                            revert with 'NH{q', 65
                        if _2374 + ceil32(return_data.size) + floor32(mem[_2374 + mem[_2374]]) + 1 > test266151307() or floor32(mem[_2374 + mem[_2374]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2374 + ceil32(return_data.size) + floor32(mem[_2374 + mem[_2374]]) + 1
                        mem[_2374 + ceil32(return_data.size)] = _2410
                        require _2390 + (32 * _2410) + 32 <= return_data.size
                        idx = 0
                        s = _2374 + _2390 + 32
                        t = _2374 + ceil32(return_data.size) + 32
                        while idx < _2410:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1213 < 1:
                                revert with 'NH{q', 17
                            if _1213 - 1 >= _1213:
                                revert with 'NH{q', 50
                            _1881 = mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                            if mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1881 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _1881 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2373 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2389 = mem[_2373]
                            require mem[_2373] <= test266151307()
                            require _2373 + mem[_2373] + 31 < _2373 + return_data.size
                            _2409 = mem[_2373 + mem[_2373]]
                            if mem[_2373 + mem[_2373]] > test266151307():
                                revert with 'NH{q', 65
                            if _2373 + ceil32(return_data.size) + floor32(mem[_2373 + mem[_2373]]) + 1 > test266151307() or floor32(mem[_2373 + mem[_2373]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2373 + ceil32(return_data.size) + floor32(mem[_2373 + mem[_2373]]) + 1
                            mem[_2373 + ceil32(return_data.size)] = _2409
                            require _2389 + (32 * _2409) + 32 <= return_data.size
                            idx = 0
                            s = _2373 + _2389 + 32
                            t = _2373 + ceil32(return_data.size) + 32
                            while idx < _2409:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1213 < 1:
                                revert with 'NH{q', 17
                            if _1213 - 1 >= _1213:
                                revert with 'NH{q', 50
                            _2357 = mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                            if mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1213 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2357 * uint32(cd[4]) / t * s
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2357 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2809 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2833 = mem[_2809]
                            require mem[_2809] <= test266151307()
                            require _2809 + mem[_2809] + 31 < _2809 + return_data.size
                            _2857 = mem[_2809 + mem[_2809]]
                            if mem[_2809 + mem[_2809]] > test266151307():
                                revert with 'NH{q', 65
                            if _2809 + ceil32(return_data.size) + floor32(mem[_2809 + mem[_2809]]) + 1 > test266151307() or floor32(mem[_2809 + mem[_2809]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2809 + ceil32(return_data.size) + floor32(mem[_2809 + mem[_2809]]) + 1
                            mem[_2809 + ceil32(return_data.size)] = _2857
                            require _2833 + (32 * _2857) + 32 <= return_data.size
                            idx = 0
                            s = _2809 + _2833 + 32
                            t = _2809 + ceil32(return_data.size) + 32
                            while idx < _2857:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[128 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                    mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 132).length) + 132] = eth.balance(this.address)
                    mem[(32 * ('cd', 132).length) + 164] = 64
                    mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (32 * ('cd', 132).length) + 228
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1203 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                    require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
                    _1214 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129
                    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                    require _1203 + (32 * _1214) + 32 <= return_data.size
                    idx = 0
                    s = (32 * ('cd', 132).length) + _1203 + 160
                    t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 160
                    while idx < _1214:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1214 < 1:
                            revert with 'NH{q', 17
                        if _1214 - 1 >= _1214:
                            revert with 'NH{q', 50
                        _1850 = mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1850 * uint32(cd[4])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _1850 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2376 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2392 = mem[_2376]
                        require mem[_2376] <= test266151307()
                        require _2376 + mem[_2376] + 31 < _2376 + return_data.size
                        _2412 = mem[_2376 + mem[_2376]]
                        if mem[_2376 + mem[_2376]] > test266151307():
                            revert with 'NH{q', 65
                        if _2376 + ceil32(return_data.size) + floor32(mem[_2376 + mem[_2376]]) + 1 > test266151307() or floor32(mem[_2376 + mem[_2376]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2376 + ceil32(return_data.size) + floor32(mem[_2376 + mem[_2376]]) + 1
                        mem[_2376 + ceil32(return_data.size)] = _2412
                        require _2392 + (32 * _2412) + 32 <= return_data.size
                        idx = 0
                        s = _2376 + _2392 + 32
                        t = _2376 + ceil32(return_data.size) + 32
                        while idx < _2412:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1214 < 1:
                                revert with 'NH{q', 17
                            if _1214 - 1 >= _1214:
                                revert with 'NH{q', 50
                            _1882 = mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                            if mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1882 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _1882 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2375 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2391 = mem[_2375]
                            require mem[_2375] <= test266151307()
                            require _2375 + mem[_2375] + 31 < _2375 + return_data.size
                            _2411 = mem[_2375 + mem[_2375]]
                            if mem[_2375 + mem[_2375]] > test266151307():
                                revert with 'NH{q', 65
                            if _2375 + ceil32(return_data.size) + floor32(mem[_2375 + mem[_2375]]) + 1 > test266151307() or floor32(mem[_2375 + mem[_2375]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2375 + ceil32(return_data.size) + floor32(mem[_2375 + mem[_2375]]) + 1
                            mem[_2375 + ceil32(return_data.size)] = _2411
                            require _2391 + (32 * _2411) + 32 <= return_data.size
                            idx = 0
                            s = _2375 + _2391 + 32
                            t = _2375 + ceil32(return_data.size) + 32
                            while idx < _2411:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1214 < 1:
                                revert with 'NH{q', 17
                            if _1214 - 1 >= _1214:
                                revert with 'NH{q', 50
                            _2358 = mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                            if mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1214 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2358 * uint32(cd[4]) / t * s
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2358 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2810 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2834 = mem[_2810]
                            require mem[_2810] <= test266151307()
                            require _2810 + mem[_2810] + 31 < _2810 + return_data.size
                            _2858 = mem[_2810 + mem[_2810]]
                            if mem[_2810 + mem[_2810]] > test266151307():
                                revert with 'NH{q', 65
                            if _2810 + ceil32(return_data.size) + floor32(mem[_2810 + mem[_2810]]) + 1 > test266151307() or floor32(mem[_2810 + mem[_2810]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2810 + ceil32(return_data.size) + floor32(mem[_2810 + mem[_2810]]) + 1
                            mem[_2810 + ceil32(return_data.size)] = _2858
                            require _2834 + (32 * _2858) + 32 <= return_data.size
                            idx = 0
                            s = _2810 + _2834 + 32
                            t = _2810 + ceil32(return_data.size) + 32
                            while idx < _2858:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                if not ('cd', 132).length:
                    mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 132).length) + 132] = eth.balance(this.address)
                    mem[(32 * ('cd', 132).length) + 164] = 64
                    mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (32 * ('cd', 132).length) + 228
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1204 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                    require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
                    _1215 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129
                    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                    require _1204 + (32 * _1215) + 32 <= return_data.size
                    idx = 0
                    s = (32 * ('cd', 132).length) + _1204 + 160
                    t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 160
                    while idx < _1215:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1215 < 1:
                            revert with 'NH{q', 17
                        if _1215 - 1 >= _1215:
                            revert with 'NH{q', 50
                        _1851 = mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1851 * uint32(cd[4])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _1851 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2378 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2394 = mem[_2378]
                        require mem[_2378] <= test266151307()
                        require _2378 + mem[_2378] + 31 < _2378 + return_data.size
                        _2414 = mem[_2378 + mem[_2378]]
                        if mem[_2378 + mem[_2378]] > test266151307():
                            revert with 'NH{q', 65
                        if _2378 + ceil32(return_data.size) + floor32(mem[_2378 + mem[_2378]]) + 1 > test266151307() or floor32(mem[_2378 + mem[_2378]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2378 + ceil32(return_data.size) + floor32(mem[_2378 + mem[_2378]]) + 1
                        mem[_2378 + ceil32(return_data.size)] = _2414
                        require _2394 + (32 * _2414) + 32 <= return_data.size
                        idx = 0
                        s = _2378 + _2394 + 32
                        t = _2378 + ceil32(return_data.size) + 32
                        while idx < _2414:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1215 < 1:
                                revert with 'NH{q', 17
                            if _1215 - 1 >= _1215:
                                revert with 'NH{q', 50
                            _1883 = mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                            if mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1883 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _1883 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2377 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2393 = mem[_2377]
                            require mem[_2377] <= test266151307()
                            require _2377 + mem[_2377] + 31 < _2377 + return_data.size
                            _2413 = mem[_2377 + mem[_2377]]
                            if mem[_2377 + mem[_2377]] > test266151307():
                                revert with 'NH{q', 65
                            if _2377 + ceil32(return_data.size) + floor32(mem[_2377 + mem[_2377]]) + 1 > test266151307() or floor32(mem[_2377 + mem[_2377]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2377 + ceil32(return_data.size) + floor32(mem[_2377 + mem[_2377]]) + 1
                            mem[_2377 + ceil32(return_data.size)] = _2413
                            require _2393 + (32 * _2413) + 32 <= return_data.size
                            idx = 0
                            s = _2377 + _2393 + 32
                            t = _2377 + ceil32(return_data.size) + 32
                            while idx < _2413:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1215 < 1:
                                revert with 'NH{q', 17
                            if _1215 - 1 >= _1215:
                                revert with 'NH{q', 50
                            _2359 = mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                            if mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1215 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2359 * uint32(cd[4]) / t * s
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2359 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2811 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2835 = mem[_2811]
                            require mem[_2811] <= test266151307()
                            require _2811 + mem[_2811] + 31 < _2811 + return_data.size
                            _2859 = mem[_2811 + mem[_2811]]
                            if mem[_2811 + mem[_2811]] > test266151307():
                                revert with 'NH{q', 65
                            if _2811 + ceil32(return_data.size) + floor32(mem[_2811 + mem[_2811]]) + 1 > test266151307() or floor32(mem[_2811 + mem[_2811]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2811 + ceil32(return_data.size) + floor32(mem[_2811 + mem[_2811]]) + 1
                            mem[_2811 + ceil32(return_data.size)] = _2859
                            require _2835 + (32 * _2859) + 32 <= return_data.size
                            idx = 0
                            s = _2811 + _2835 + 32
                            t = _2811 + ceil32(return_data.size) + 32
                            while idx < _2859:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[128 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                    mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 132).length) + 132] = eth.balance(this.address)
                    mem[(32 * ('cd', 132).length) + 164] = 64
                    mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (32 * ('cd', 132).length) + 228
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _1205 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                    require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
                    _1216 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129
                    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                    require _1205 + (32 * _1216) + 32 <= return_data.size
                    idx = 0
                    s = (32 * ('cd', 132).length) + _1205 + 160
                    t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 160
                    while idx < _1216:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1216 < 1:
                            revert with 'NH{q', 17
                        if _1216 - 1 >= _1216:
                            revert with 'NH{q', 50
                        _1852 = mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1852 * uint32(cd[4])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _1852 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2380 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2396 = mem[_2380]
                        require mem[_2380] <= test266151307()
                        require _2380 + mem[_2380] + 31 < _2380 + return_data.size
                        _2416 = mem[_2380 + mem[_2380]]
                        if mem[_2380 + mem[_2380]] > test266151307():
                            revert with 'NH{q', 65
                        if _2380 + ceil32(return_data.size) + floor32(mem[_2380 + mem[_2380]]) + 1 > test266151307() or floor32(mem[_2380 + mem[_2380]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2380 + ceil32(return_data.size) + floor32(mem[_2380 + mem[_2380]]) + 1
                        mem[_2380 + ceil32(return_data.size)] = _2416
                        require _2396 + (32 * _2416) + 32 <= return_data.size
                        idx = 0
                        s = _2380 + _2396 + 32
                        t = _2380 + ceil32(return_data.size) + 32
                        while idx < _2416:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1216 < 1:
                                revert with 'NH{q', 17
                            if _1216 - 1 >= _1216:
                                revert with 'NH{q', 50
                            _1884 = mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                            if mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _1884 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _1884 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2379 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2395 = mem[_2379]
                            require mem[_2379] <= test266151307()
                            require _2379 + mem[_2379] + 31 < _2379 + return_data.size
                            _2415 = mem[_2379 + mem[_2379]]
                            if mem[_2379 + mem[_2379]] > test266151307():
                                revert with 'NH{q', 65
                            if _2379 + ceil32(return_data.size) + floor32(mem[_2379 + mem[_2379]]) + 1 > test266151307() or floor32(mem[_2379 + mem[_2379]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2379 + ceil32(return_data.size) + floor32(mem[_2379 + mem[_2379]]) + 1
                            mem[_2379 + ceil32(return_data.size)] = _2415
                            require _2395 + (32 * _2415) + 32 <= return_data.size
                            idx = 0
                            s = _2379 + _2395 + 32
                            t = _2379 + ceil32(return_data.size) + 32
                            while idx < _2415:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1216 < 1:
                                revert with 'NH{q', 17
                            if _1216 - 1 >= _1216:
                                revert with 'NH{q', 50
                            _2360 = mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                            if mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1216 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2360 * uint32(cd[4]) / t * s
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2360 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2812 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2836 = mem[_2812]
                            require mem[_2812] <= test266151307()
                            require _2812 + mem[_2812] + 31 < _2812 + return_data.size
                            _2860 = mem[_2812 + mem[_2812]]
                            if mem[_2812 + mem[_2812]] > test266151307():
                                revert with 'NH{q', 65
                            if _2812 + ceil32(return_data.size) + floor32(mem[_2812 + mem[_2812]]) + 1 > test266151307() or floor32(mem[_2812 + mem[_2812]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2812 + ceil32(return_data.size) + floor32(mem[_2812 + mem[_2812]]) + 1
                            mem[_2812 + ceil32(return_data.size)] = _2860
                            require _2836 + (32 * _2860) + 32 <= return_data.size
                            idx = 0
                            s = _2812 + _2836 + 32
                            t = _2812 + ceil32(return_data.size) + 32
                            while idx < _2860:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
        else:
            mem[96] = 1
            mem[128] = stor4
            mem[160] = 0x744532ae00000000000000000000000000000000000000000000000000000000
            mem[164] = 1
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
            require ext_code.size(stor3)
            call stor3.claimReward(uint8 arg1, address arg2, address[] arg3) with:
                 gas gas_remaining wei
                args 1, address(this.address), Array(len=1, data=mem[292])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) <= 0:
                revert with 0, 'not enough avax token'
            if ('cd', 132).length > test266151307():
                revert with 'NH{q', 65
            if uint8(cd[68]) != 1:
                if not ('cd', 132).length:
                    mem[(32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 132).length) + 196] = eth.balance(this.address)
                    mem[(32 * ('cd', 132).length) + 228] = 64
                    mem[(32 * ('cd', 132).length) + 260] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (32 * ('cd', 132).length) + 292
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1801 = mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                    require mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < (32 * ('cd', 132).length) + return_data.size + 192
                    _1809 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
                    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 192] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                    require _1801 + (32 * _1809) + 32 <= return_data.size
                    idx = 0
                    s = (32 * ('cd', 132).length) + _1801 + 224
                    t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 224
                    while idx < _1809:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1809 < 1:
                            revert with 'NH{q', 17
                        if _1809 - 1 >= _1809:
                            revert with 'NH{q', 50
                        _2433 = mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2433 * uint32(cd[4])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2433 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2814 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2838 = mem[_2814]
                        require mem[_2814] <= test266151307()
                        require _2814 + mem[_2814] + 31 < _2814 + return_data.size
                        _2862 = mem[_2814 + mem[_2814]]
                        if mem[_2814 + mem[_2814]] > test266151307():
                            revert with 'NH{q', 65
                        if _2814 + ceil32(return_data.size) + floor32(mem[_2814 + mem[_2814]]) + 1 > test266151307() or floor32(mem[_2814 + mem[_2814]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2814 + ceil32(return_data.size) + floor32(mem[_2814 + mem[_2814]]) + 1
                        mem[_2814 + ceil32(return_data.size)] = _2862
                        require _2838 + (32 * _2862) + 32 <= return_data.size
                        idx = 0
                        s = _2814 + _2838 + 32
                        t = _2814 + ceil32(return_data.size) + 32
                        while idx < _2862:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1809 < 1:
                                revert with 'NH{q', 17
                            if _1809 - 1 >= _1809:
                                revert with 'NH{q', 50
                            _2473 = mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                            if mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2473 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2473 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2813 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2837 = mem[_2813]
                            require mem[_2813] <= test266151307()
                            require _2813 + mem[_2813] + 31 < _2813 + return_data.size
                            _2861 = mem[_2813 + mem[_2813]]
                            if mem[_2813 + mem[_2813]] > test266151307():
                                revert with 'NH{q', 65
                            if _2813 + ceil32(return_data.size) + floor32(mem[_2813 + mem[_2813]]) + 1 > test266151307() or floor32(mem[_2813 + mem[_2813]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2813 + ceil32(return_data.size) + floor32(mem[_2813 + mem[_2813]]) + 1
                            mem[_2813 + ceil32(return_data.size)] = _2861
                            require _2837 + (32 * _2861) + 32 <= return_data.size
                            idx = 0
                            s = _2813 + _2837 + 32
                            t = _2813 + ceil32(return_data.size) + 32
                            while idx < _2861:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1809 < 1:
                                revert with 'NH{q', 17
                            if _1809 - 1 >= _1809:
                                revert with 'NH{q', 50
                            _2793 = mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                            if mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1809 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2793 * uint32(cd[4]) / t * s
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2793 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3009 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3017 = mem[_3009]
                            require mem[_3009] <= test266151307()
                            require _3009 + mem[_3009] + 31 < _3009 + return_data.size
                            _3025 = mem[_3009 + mem[_3009]]
                            if mem[_3009 + mem[_3009]] > test266151307():
                                revert with 'NH{q', 65
                            if _3009 + ceil32(return_data.size) + floor32(mem[_3009 + mem[_3009]]) + 1 > test266151307() or floor32(mem[_3009 + mem[_3009]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3009 + ceil32(return_data.size) + floor32(mem[_3009 + mem[_3009]]) + 1
                            mem[_3009 + ceil32(return_data.size)] = _3025
                            require _3017 + (32 * _3025) + 32 <= return_data.size
                            idx = 0
                            s = _3009 + _3017 + 32
                            t = _3009 + ceil32(return_data.size) + 32
                            while idx < _3025:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[192 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                    mem[(32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 132).length) + 196] = eth.balance(this.address)
                    mem[(32 * ('cd', 132).length) + 228] = 64
                    mem[(32 * ('cd', 132).length) + 260] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (32 * ('cd', 132).length) + 292
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1802 = mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                    require mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < (32 * ('cd', 132).length) + return_data.size + 192
                    _1810 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
                    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 192] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                    require _1802 + (32 * _1810) + 32 <= return_data.size
                    idx = 0
                    s = (32 * ('cd', 132).length) + _1802 + 224
                    t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 224
                    while idx < _1810:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1810 < 1:
                            revert with 'NH{q', 17
                        if _1810 - 1 >= _1810:
                            revert with 'NH{q', 50
                        _2434 = mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2434 * uint32(cd[4])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2434 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2816 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2840 = mem[_2816]
                        require mem[_2816] <= test266151307()
                        require _2816 + mem[_2816] + 31 < _2816 + return_data.size
                        _2864 = mem[_2816 + mem[_2816]]
                        if mem[_2816 + mem[_2816]] > test266151307():
                            revert with 'NH{q', 65
                        if _2816 + ceil32(return_data.size) + floor32(mem[_2816 + mem[_2816]]) + 1 > test266151307() or floor32(mem[_2816 + mem[_2816]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2816 + ceil32(return_data.size) + floor32(mem[_2816 + mem[_2816]]) + 1
                        mem[_2816 + ceil32(return_data.size)] = _2864
                        require _2840 + (32 * _2864) + 32 <= return_data.size
                        idx = 0
                        s = _2816 + _2840 + 32
                        t = _2816 + ceil32(return_data.size) + 32
                        while idx < _2864:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1810 < 1:
                                revert with 'NH{q', 17
                            if _1810 - 1 >= _1810:
                                revert with 'NH{q', 50
                            _2474 = mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                            if mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2474 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2474 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2815 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2839 = mem[_2815]
                            require mem[_2815] <= test266151307()
                            require _2815 + mem[_2815] + 31 < _2815 + return_data.size
                            _2863 = mem[_2815 + mem[_2815]]
                            if mem[_2815 + mem[_2815]] > test266151307():
                                revert with 'NH{q', 65
                            if _2815 + ceil32(return_data.size) + floor32(mem[_2815 + mem[_2815]]) + 1 > test266151307() or floor32(mem[_2815 + mem[_2815]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2815 + ceil32(return_data.size) + floor32(mem[_2815 + mem[_2815]]) + 1
                            mem[_2815 + ceil32(return_data.size)] = _2863
                            require _2839 + (32 * _2863) + 32 <= return_data.size
                            idx = 0
                            s = _2815 + _2839 + 32
                            t = _2815 + ceil32(return_data.size) + 32
                            while idx < _2863:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1810 < 1:
                                revert with 'NH{q', 17
                            if _1810 - 1 >= _1810:
                                revert with 'NH{q', 50
                            _2794 = mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                            if mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1810 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2794 * uint32(cd[4]) / t * s
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2794 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3010 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3018 = mem[_3010]
                            require mem[_3010] <= test266151307()
                            require _3010 + mem[_3010] + 31 < _3010 + return_data.size
                            _3026 = mem[_3010 + mem[_3010]]
                            if mem[_3010 + mem[_3010]] > test266151307():
                                revert with 'NH{q', 65
                            if _3010 + ceil32(return_data.size) + floor32(mem[_3010 + mem[_3010]]) + 1 > test266151307() or floor32(mem[_3010 + mem[_3010]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3010 + ceil32(return_data.size) + floor32(mem[_3010 + mem[_3010]]) + 1
                            mem[_3010 + ceil32(return_data.size)] = _3026
                            require _3018 + (32 * _3026) + 32 <= return_data.size
                            idx = 0
                            s = _3010 + _3018 + 32
                            t = _3010 + ceil32(return_data.size) + 32
                            while idx < _3026:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                if not ('cd', 132).length:
                    mem[(32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 132).length) + 196] = eth.balance(this.address)
                    mem[(32 * ('cd', 132).length) + 228] = 64
                    mem[(32 * ('cd', 132).length) + 260] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (32 * ('cd', 132).length) + 292
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1803 = mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                    require mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < (32 * ('cd', 132).length) + return_data.size + 192
                    _1811 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
                    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 192] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                    require _1803 + (32 * _1811) + 32 <= return_data.size
                    idx = 0
                    s = (32 * ('cd', 132).length) + _1803 + 224
                    t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 224
                    while idx < _1811:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1811 < 1:
                            revert with 'NH{q', 17
                        if _1811 - 1 >= _1811:
                            revert with 'NH{q', 50
                        _2435 = mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2435 * uint32(cd[4])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2435 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2818 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2842 = mem[_2818]
                        require mem[_2818] <= test266151307()
                        require _2818 + mem[_2818] + 31 < _2818 + return_data.size
                        _2866 = mem[_2818 + mem[_2818]]
                        if mem[_2818 + mem[_2818]] > test266151307():
                            revert with 'NH{q', 65
                        if _2818 + ceil32(return_data.size) + floor32(mem[_2818 + mem[_2818]]) + 1 > test266151307() or floor32(mem[_2818 + mem[_2818]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2818 + ceil32(return_data.size) + floor32(mem[_2818 + mem[_2818]]) + 1
                        mem[_2818 + ceil32(return_data.size)] = _2866
                        require _2842 + (32 * _2866) + 32 <= return_data.size
                        idx = 0
                        s = _2818 + _2842 + 32
                        t = _2818 + ceil32(return_data.size) + 32
                        while idx < _2866:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1811 < 1:
                                revert with 'NH{q', 17
                            if _1811 - 1 >= _1811:
                                revert with 'NH{q', 50
                            _2475 = mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                            if mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2475 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2475 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2817 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2841 = mem[_2817]
                            require mem[_2817] <= test266151307()
                            require _2817 + mem[_2817] + 31 < _2817 + return_data.size
                            _2865 = mem[_2817 + mem[_2817]]
                            if mem[_2817 + mem[_2817]] > test266151307():
                                revert with 'NH{q', 65
                            if _2817 + ceil32(return_data.size) + floor32(mem[_2817 + mem[_2817]]) + 1 > test266151307() or floor32(mem[_2817 + mem[_2817]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2817 + ceil32(return_data.size) + floor32(mem[_2817 + mem[_2817]]) + 1
                            mem[_2817 + ceil32(return_data.size)] = _2865
                            require _2841 + (32 * _2865) + 32 <= return_data.size
                            idx = 0
                            s = _2817 + _2841 + 32
                            t = _2817 + ceil32(return_data.size) + 32
                            while idx < _2865:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1811 < 1:
                                revert with 'NH{q', 17
                            if _1811 - 1 >= _1811:
                                revert with 'NH{q', 50
                            _2795 = mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                            if mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1811 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2795 * uint32(cd[4]) / t * s
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2795 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3011 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3019 = mem[_3011]
                            require mem[_3011] <= test266151307()
                            require _3011 + mem[_3011] + 31 < _3011 + return_data.size
                            _3027 = mem[_3011 + mem[_3011]]
                            if mem[_3011 + mem[_3011]] > test266151307():
                                revert with 'NH{q', 65
                            if _3011 + ceil32(return_data.size) + floor32(mem[_3011 + mem[_3011]]) + 1 > test266151307() or floor32(mem[_3011 + mem[_3011]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3011 + ceil32(return_data.size) + floor32(mem[_3011 + mem[_3011]]) + 1
                            mem[_3011 + ceil32(return_data.size)] = _3027
                            require _3019 + (32 * _3027) + 32 <= return_data.size
                            idx = 0
                            s = _3011 + _3019 + 32
                            t = _3011 + ceil32(return_data.size) + 32
                            while idx < _3027:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[192 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                    mem[(32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * ('cd', 132).length) + 196] = eth.balance(this.address)
                    mem[(32 * ('cd', 132).length) + 228] = 64
                    mem[(32 * ('cd', 132).length) + 260] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (32 * ('cd', 132).length) + 292
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _1804 = mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                    require mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                    require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < (32 * ('cd', 132).length) + return_data.size + 192
                    _1812 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                    if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
                    mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 192] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                    require _1804 + (32 * _1812) + 32 <= return_data.size
                    idx = 0
                    s = (32 * ('cd', 132).length) + _1804 + 224
                    t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 224
                    while idx < _1812:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1812 < 1:
                            revert with 'NH{q', 17
                        if _1812 - 1 >= _1812:
                            revert with 'NH{q', 50
                        _2436 = mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2436 * uint32(cd[4])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2436 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2820 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2844 = mem[_2820]
                        require mem[_2820] <= test266151307()
                        require _2820 + mem[_2820] + 31 < _2820 + return_data.size
                        _2868 = mem[_2820 + mem[_2820]]
                        if mem[_2820 + mem[_2820]] > test266151307():
                            revert with 'NH{q', 65
                        if _2820 + ceil32(return_data.size) + floor32(mem[_2820 + mem[_2820]]) + 1 > test266151307() or floor32(mem[_2820 + mem[_2820]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2820 + ceil32(return_data.size) + floor32(mem[_2820 + mem[_2820]]) + 1
                        mem[_2820 + ceil32(return_data.size)] = _2868
                        require _2844 + (32 * _2868) + 32 <= return_data.size
                        idx = 0
                        s = _2820 + _2844 + 32
                        t = _2820 + ceil32(return_data.size) + 32
                        while idx < _2868:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1812 < 1:
                                revert with 'NH{q', 17
                            if _1812 - 1 >= _1812:
                                revert with 'NH{q', 50
                            _2476 = mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                            if mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2476 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2476 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2819 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2843 = mem[_2819]
                            require mem[_2819] <= test266151307()
                            require _2819 + mem[_2819] + 31 < _2819 + return_data.size
                            _2867 = mem[_2819 + mem[_2819]]
                            if mem[_2819 + mem[_2819]] > test266151307():
                                revert with 'NH{q', 65
                            if _2819 + ceil32(return_data.size) + floor32(mem[_2819 + mem[_2819]]) + 1 > test266151307() or floor32(mem[_2819 + mem[_2819]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2819 + ceil32(return_data.size) + floor32(mem[_2819 + mem[_2819]]) + 1
                            mem[_2819 + ceil32(return_data.size)] = _2867
                            require _2843 + (32 * _2867) + 32 <= return_data.size
                            idx = 0
                            s = _2819 + _2843 + 32
                            t = _2819 + ceil32(return_data.size) + 32
                            while idx < _2867:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1812 < 1:
                                revert with 'NH{q', 17
                            if _1812 - 1 >= _1812:
                                revert with 'NH{q', 50
                            _2796 = mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                            if mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1812 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            if block.timestamp > -16:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _2796 * uint32(cd[4]) / t * s
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 164
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args _2796 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3012 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3020 = mem[_3012]
                            require mem[_3012] <= test266151307()
                            require _3012 + mem[_3012] + 31 < _3012 + return_data.size
                            _3028 = mem[_3012 + mem[_3012]]
                            if mem[_3012 + mem[_3012]] > test266151307():
                                revert with 'NH{q', 65
                            if _3012 + ceil32(return_data.size) + floor32(mem[_3012 + mem[_3012]]) + 1 > test266151307() or floor32(mem[_3012 + mem[_3012]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3012 + ceil32(return_data.size) + floor32(mem[_3012 + mem[_3012]]) + 1
                            mem[_3012 + ceil32(return_data.size)] = _3028
                            require _3020 + (32 * _3028) + 32 <= return_data.size
                            idx = 0
                            s = _3012 + _3020 + 32
                            t = _3012 + ceil32(return_data.size) + 32
                            while idx < _3028:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
    if not cd[100]:
        if eth.balance(this.address) <= 0:
            revert with 0, 'not enough avax token'
        if ('cd', 132).length > test266151307():
            revert with 'NH{q', 65
        mem[96] = ('cd', 132).length
        if uint8(cd[68]) != 1:
            if not ('cd', 132).length:
                mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 132).length) + 132] = eth.balance(this.address)
                mem[(32 * ('cd', 132).length) + 164] = 64
                mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (32 * ('cd', 132).length) + 228
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1197 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
                _1207 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128] > test266151307():
                    revert with 'NH{q', 65
                if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129
                mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                require _1197 + (32 * _1207) + 32 <= return_data.size
                idx = 0
                s = (32 * ('cd', 132).length) + _1197 + 160
                t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 160
                while idx < _1207:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1207 < 1:
                        revert with 'NH{q', 17
                    if _1207 - 1 >= _1207:
                        revert with 'NH{q', 50
                    _1845 = mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                    if mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 'NH{q', 17
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1845 * uint32(cd[4])
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 164
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp + 15
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _1845 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2366 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2382 = mem[_2366]
                    require mem[_2366] <= test266151307()
                    require _2366 + mem[_2366] + 31 < _2366 + return_data.size
                    _2398 = mem[_2366 + mem[_2366]]
                    if mem[_2366 + mem[_2366]] > test266151307():
                        revert with 'NH{q', 65
                    if _2366 + ceil32(return_data.size) + floor32(mem[_2366 + mem[_2366]]) + 1 > test266151307() or floor32(mem[_2366 + mem[_2366]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2366 + ceil32(return_data.size) + floor32(mem[_2366 + mem[_2366]]) + 1
                    mem[_2366 + ceil32(return_data.size)] = _2398
                    require _2382 + (32 * _2398) + 32 <= return_data.size
                    idx = 0
                    s = _2366 + _2382 + 32
                    t = _2366 + ceil32(return_data.size) + 32
                    while idx < _2398:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1207 < 1:
                            revert with 'NH{q', 17
                        if _1207 - 1 >= _1207:
                            revert with 'NH{q', 50
                        _1877 = mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1877 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _1877 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2365 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2381 = mem[_2365]
                        require mem[_2365] <= test266151307()
                        require _2365 + mem[_2365] + 31 < _2365 + return_data.size
                        _2397 = mem[_2365 + mem[_2365]]
                        if mem[_2365 + mem[_2365]] > test266151307():
                            revert with 'NH{q', 65
                        if _2365 + ceil32(return_data.size) + floor32(mem[_2365 + mem[_2365]]) + 1 > test266151307() or floor32(mem[_2365 + mem[_2365]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2365 + ceil32(return_data.size) + floor32(mem[_2365 + mem[_2365]]) + 1
                        mem[_2365 + ceil32(return_data.size)] = _2397
                        require _2381 + (32 * _2397) + 32 <= return_data.size
                        idx = 0
                        s = _2365 + _2381 + 32
                        t = _2365 + ceil32(return_data.size) + 32
                        while idx < _2397:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1207 < 1:
                            revert with 'NH{q', 17
                        if _1207 - 1 >= _1207:
                            revert with 'NH{q', 50
                        _2349 = mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1207 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2349 * uint32(cd[4]) / t * s
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2349 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2797 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2821 = mem[_2797]
                        require mem[_2797] <= test266151307()
                        require _2797 + mem[_2797] + 31 < _2797 + return_data.size
                        _2845 = mem[_2797 + mem[_2797]]
                        if mem[_2797 + mem[_2797]] > test266151307():
                            revert with 'NH{q', 65
                        if _2797 + ceil32(return_data.size) + floor32(mem[_2797 + mem[_2797]]) + 1 > test266151307() or floor32(mem[_2797 + mem[_2797]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2797 + ceil32(return_data.size) + floor32(mem[_2797 + mem[_2797]]) + 1
                        mem[_2797 + ceil32(return_data.size)] = _2845
                        require _2821 + (32 * _2845) + 32 <= return_data.size
                        idx = 0
                        s = _2797 + _2821 + 32
                        t = _2797 + ceil32(return_data.size) + 32
                        while idx < _2845:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                mem[128 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 132).length) + 132] = eth.balance(this.address)
                mem[(32 * ('cd', 132).length) + 164] = 64
                mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (32 * ('cd', 132).length) + 228
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1198 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
                _1208 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128] > test266151307():
                    revert with 'NH{q', 65
                if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129
                mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                require _1198 + (32 * _1208) + 32 <= return_data.size
                idx = 0
                s = (32 * ('cd', 132).length) + _1198 + 160
                t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 160
                while idx < _1208:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1208 < 1:
                        revert with 'NH{q', 17
                    if _1208 - 1 >= _1208:
                        revert with 'NH{q', 50
                    _1846 = mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                    if mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 'NH{q', 17
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1846 * uint32(cd[4])
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 164
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp + 15
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _1846 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2368 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2384 = mem[_2368]
                    require mem[_2368] <= test266151307()
                    require _2368 + mem[_2368] + 31 < _2368 + return_data.size
                    _2400 = mem[_2368 + mem[_2368]]
                    if mem[_2368 + mem[_2368]] > test266151307():
                        revert with 'NH{q', 65
                    if _2368 + ceil32(return_data.size) + floor32(mem[_2368 + mem[_2368]]) + 1 > test266151307() or floor32(mem[_2368 + mem[_2368]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2368 + ceil32(return_data.size) + floor32(mem[_2368 + mem[_2368]]) + 1
                    mem[_2368 + ceil32(return_data.size)] = _2400
                    require _2384 + (32 * _2400) + 32 <= return_data.size
                    idx = 0
                    s = _2368 + _2384 + 32
                    t = _2368 + ceil32(return_data.size) + 32
                    while idx < _2400:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1208 < 1:
                            revert with 'NH{q', 17
                        if _1208 - 1 >= _1208:
                            revert with 'NH{q', 50
                        _1878 = mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1878 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _1878 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2367 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2383 = mem[_2367]
                        require mem[_2367] <= test266151307()
                        require _2367 + mem[_2367] + 31 < _2367 + return_data.size
                        _2399 = mem[_2367 + mem[_2367]]
                        if mem[_2367 + mem[_2367]] > test266151307():
                            revert with 'NH{q', 65
                        if _2367 + ceil32(return_data.size) + floor32(mem[_2367 + mem[_2367]]) + 1 > test266151307() or floor32(mem[_2367 + mem[_2367]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2367 + ceil32(return_data.size) + floor32(mem[_2367 + mem[_2367]]) + 1
                        mem[_2367 + ceil32(return_data.size)] = _2399
                        require _2383 + (32 * _2399) + 32 <= return_data.size
                        idx = 0
                        s = _2367 + _2383 + 32
                        t = _2367 + ceil32(return_data.size) + 32
                        while idx < _2399:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1208 < 1:
                            revert with 'NH{q', 17
                        if _1208 - 1 >= _1208:
                            revert with 'NH{q', 50
                        _2350 = mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1208 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2350 * uint32(cd[4]) / t * s
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2350 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2798 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2822 = mem[_2798]
                        require mem[_2798] <= test266151307()
                        require _2798 + mem[_2798] + 31 < _2798 + return_data.size
                        _2846 = mem[_2798 + mem[_2798]]
                        if mem[_2798 + mem[_2798]] > test266151307():
                            revert with 'NH{q', 65
                        if _2798 + ceil32(return_data.size) + floor32(mem[_2798 + mem[_2798]]) + 1 > test266151307() or floor32(mem[_2798 + mem[_2798]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2798 + ceil32(return_data.size) + floor32(mem[_2798 + mem[_2798]]) + 1
                        mem[_2798 + ceil32(return_data.size)] = _2846
                        require _2822 + (32 * _2846) + 32 <= return_data.size
                        idx = 0
                        s = _2798 + _2822 + 32
                        t = _2798 + ceil32(return_data.size) + 32
                        while idx < _2846:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            if not ('cd', 132).length:
                mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 132).length) + 132] = eth.balance(this.address)
                mem[(32 * ('cd', 132).length) + 164] = 64
                mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (32 * ('cd', 132).length) + 228
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1199 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
                _1209 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128] > test266151307():
                    revert with 'NH{q', 65
                if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129
                mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                require _1199 + (32 * _1209) + 32 <= return_data.size
                idx = 0
                s = (32 * ('cd', 132).length) + _1199 + 160
                t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 160
                while idx < _1209:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1209 < 1:
                        revert with 'NH{q', 17
                    if _1209 - 1 >= _1209:
                        revert with 'NH{q', 50
                    _1847 = mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                    if mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 'NH{q', 17
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1847 * uint32(cd[4])
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 164
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp + 15
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _1847 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2370 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2386 = mem[_2370]
                    require mem[_2370] <= test266151307()
                    require _2370 + mem[_2370] + 31 < _2370 + return_data.size
                    _2402 = mem[_2370 + mem[_2370]]
                    if mem[_2370 + mem[_2370]] > test266151307():
                        revert with 'NH{q', 65
                    if _2370 + ceil32(return_data.size) + floor32(mem[_2370 + mem[_2370]]) + 1 > test266151307() or floor32(mem[_2370 + mem[_2370]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2370 + ceil32(return_data.size) + floor32(mem[_2370 + mem[_2370]]) + 1
                    mem[_2370 + ceil32(return_data.size)] = _2402
                    require _2386 + (32 * _2402) + 32 <= return_data.size
                    idx = 0
                    s = _2370 + _2386 + 32
                    t = _2370 + ceil32(return_data.size) + 32
                    while idx < _2402:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1209 < 1:
                            revert with 'NH{q', 17
                        if _1209 - 1 >= _1209:
                            revert with 'NH{q', 50
                        _1879 = mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1879 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _1879 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2369 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2385 = mem[_2369]
                        require mem[_2369] <= test266151307()
                        require _2369 + mem[_2369] + 31 < _2369 + return_data.size
                        _2401 = mem[_2369 + mem[_2369]]
                        if mem[_2369 + mem[_2369]] > test266151307():
                            revert with 'NH{q', 65
                        if _2369 + ceil32(return_data.size) + floor32(mem[_2369 + mem[_2369]]) + 1 > test266151307() or floor32(mem[_2369 + mem[_2369]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2369 + ceil32(return_data.size) + floor32(mem[_2369 + mem[_2369]]) + 1
                        mem[_2369 + ceil32(return_data.size)] = _2401
                        require _2385 + (32 * _2401) + 32 <= return_data.size
                        idx = 0
                        s = _2369 + _2385 + 32
                        t = _2369 + ceil32(return_data.size) + 32
                        while idx < _2401:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1209 < 1:
                            revert with 'NH{q', 17
                        if _1209 - 1 >= _1209:
                            revert with 'NH{q', 50
                        _2351 = mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1209 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2351 * uint32(cd[4]) / t * s
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2351 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2799 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2823 = mem[_2799]
                        require mem[_2799] <= test266151307()
                        require _2799 + mem[_2799] + 31 < _2799 + return_data.size
                        _2847 = mem[_2799 + mem[_2799]]
                        if mem[_2799 + mem[_2799]] > test266151307():
                            revert with 'NH{q', 65
                        if _2799 + ceil32(return_data.size) + floor32(mem[_2799 + mem[_2799]]) + 1 > test266151307() or floor32(mem[_2799 + mem[_2799]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2799 + ceil32(return_data.size) + floor32(mem[_2799 + mem[_2799]]) + 1
                        mem[_2799 + ceil32(return_data.size)] = _2847
                        require _2823 + (32 * _2847) + 32 <= return_data.size
                        idx = 0
                        s = _2799 + _2823 + 32
                        t = _2799 + ceil32(return_data.size) + 32
                        while idx < _2847:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                mem[128 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                mem[(32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 132).length) + 132] = eth.balance(this.address)
                mem[(32 * ('cd', 132).length) + 164] = 64
                mem[(32 * ('cd', 132).length) + 196] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (32 * ('cd', 132).length) + 228
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 128
                require return_data.size >= 32
                _1200 = mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                require mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 159 < (32 * ('cd', 132).length) + return_data.size + 128
                _1210 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128] > test266151307():
                    revert with 'NH{q', 65
                if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]) + 129
                mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 128 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 128]
                require _1200 + (32 * _1210) + 32 <= return_data.size
                idx = 0
                s = (32 * ('cd', 132).length) + _1200 + 160
                t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 160
                while idx < _1210:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1210 < 1:
                        revert with 'NH{q', 17
                    if _1210 - 1 >= _1210:
                        revert with 'NH{q', 50
                    _1848 = mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                    if mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                        revert with 'NH{q', 17
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1848 * uint32(cd[4])
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 164
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp + 15
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _1848 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2372 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2388 = mem[_2372]
                    require mem[_2372] <= test266151307()
                    require _2372 + mem[_2372] + 31 < _2372 + return_data.size
                    _2404 = mem[_2372 + mem[_2372]]
                    if mem[_2372 + mem[_2372]] > test266151307():
                        revert with 'NH{q', 65
                    if _2372 + ceil32(return_data.size) + floor32(mem[_2372 + mem[_2372]]) + 1 > test266151307() or floor32(mem[_2372 + mem[_2372]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2372 + ceil32(return_data.size) + floor32(mem[_2372 + mem[_2372]]) + 1
                    mem[_2372 + ceil32(return_data.size)] = _2404
                    require _2388 + (32 * _2404) + 32 <= return_data.size
                    idx = 0
                    s = _2372 + _2388 + 32
                    t = _2372 + ceil32(return_data.size) + 32
                    while idx < _2404:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1210 < 1:
                            revert with 'NH{q', 17
                        if _1210 - 1 >= _1210:
                            revert with 'NH{q', 50
                        _1880 = mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1880 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _1880 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2371 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2387 = mem[_2371]
                        require mem[_2371] <= test266151307()
                        require _2371 + mem[_2371] + 31 < _2371 + return_data.size
                        _2403 = mem[_2371 + mem[_2371]]
                        if mem[_2371 + mem[_2371]] > test266151307():
                            revert with 'NH{q', 65
                        if _2371 + ceil32(return_data.size) + floor32(mem[_2371 + mem[_2371]]) + 1 > test266151307() or floor32(mem[_2371 + mem[_2371]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2371 + ceil32(return_data.size) + floor32(mem[_2371 + mem[_2371]]) + 1
                        mem[_2371 + ceil32(return_data.size)] = _2403
                        require _2387 + (32 * _2403) + 32 <= return_data.size
                        idx = 0
                        s = _2371 + _2387 + 32
                        t = _2371 + ceil32(return_data.size) + 32
                        while idx < _2403:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1210 < 1:
                            revert with 'NH{q', 17
                        if _1210 - 1 >= _1210:
                            revert with 'NH{q', 50
                        _2352 = mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]
                        if mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1210 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 160]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2352 * uint32(cd[4]) / t * s
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2352 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2800 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2824 = mem[_2800]
                        require mem[_2800] <= test266151307()
                        require _2800 + mem[_2800] + 31 < _2800 + return_data.size
                        _2848 = mem[_2800 + mem[_2800]]
                        if mem[_2800 + mem[_2800]] > test266151307():
                            revert with 'NH{q', 65
                        if _2800 + ceil32(return_data.size) + floor32(mem[_2800 + mem[_2800]]) + 1 > test266151307() or floor32(mem[_2800 + mem[_2800]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2800 + ceil32(return_data.size) + floor32(mem[_2800 + mem[_2800]]) + 1
                        mem[_2800 + ceil32(return_data.size)] = _2848
                        require _2824 + (32 * _2848) + 32 <= return_data.size
                        idx = 0
                        s = _2800 + _2824 + 32
                        t = _2800 + ceil32(return_data.size) + 32
                        while idx < _2848:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
    else:
        mem[96] = 1
        mem[128] = stor4
        mem[160] = 0x744532ae00000000000000000000000000000000000000000000000000000000
        mem[164] = 1
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
        require ext_code.size(stor3)
        call stor3.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args 1, address(this.address), Array(len=1, data=mem[292])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) <= 0:
            revert with 0, 'not enough avax token'
        if ('cd', 132).length > test266151307():
            revert with 'NH{q', 65
        if uint8(cd[68]) != 1:
            if not ('cd', 132).length:
                mem[(32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 132).length) + 196] = eth.balance(this.address)
                mem[(32 * ('cd', 132).length) + 228] = 64
                mem[(32 * ('cd', 132).length) + 260] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (32 * ('cd', 132).length) + 292
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                _1797 = mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                require mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < (32 * ('cd', 132).length) + return_data.size + 192
                _1805 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
                mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 192] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                require _1797 + (32 * _1805) + 32 <= return_data.size
                idx = 0
                s = (32 * ('cd', 132).length) + _1797 + 224
                t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 224
                while idx < _1805:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1805 < 1:
                        revert with 'NH{q', 17
                    if _1805 - 1 >= _1805:
                        revert with 'NH{q', 50
                    _2429 = mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                    if mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2429 * uint32(cd[4])
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 164
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp + 15
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _2429 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2802 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2826 = mem[_2802]
                    require mem[_2802] <= test266151307()
                    require _2802 + mem[_2802] + 31 < _2802 + return_data.size
                    _2850 = mem[_2802 + mem[_2802]]
                    if mem[_2802 + mem[_2802]] > test266151307():
                        revert with 'NH{q', 65
                    if _2802 + ceil32(return_data.size) + floor32(mem[_2802 + mem[_2802]]) + 1 > test266151307() or floor32(mem[_2802 + mem[_2802]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2802 + ceil32(return_data.size) + floor32(mem[_2802 + mem[_2802]]) + 1
                    mem[_2802 + ceil32(return_data.size)] = _2850
                    require _2826 + (32 * _2850) + 32 <= return_data.size
                    idx = 0
                    s = _2802 + _2826 + 32
                    t = _2802 + ceil32(return_data.size) + 32
                    while idx < _2850:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1805 < 1:
                            revert with 'NH{q', 17
                        if _1805 - 1 >= _1805:
                            revert with 'NH{q', 50
                        _2469 = mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2469 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2469 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2801 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2825 = mem[_2801]
                        require mem[_2801] <= test266151307()
                        require _2801 + mem[_2801] + 31 < _2801 + return_data.size
                        _2849 = mem[_2801 + mem[_2801]]
                        if mem[_2801 + mem[_2801]] > test266151307():
                            revert with 'NH{q', 65
                        if _2801 + ceil32(return_data.size) + floor32(mem[_2801 + mem[_2801]]) + 1 > test266151307() or floor32(mem[_2801 + mem[_2801]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2801 + ceil32(return_data.size) + floor32(mem[_2801 + mem[_2801]]) + 1
                        mem[_2801 + ceil32(return_data.size)] = _2849
                        require _2825 + (32 * _2849) + 32 <= return_data.size
                        idx = 0
                        s = _2801 + _2825 + 32
                        t = _2801 + ceil32(return_data.size) + 32
                        while idx < _2849:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1805 < 1:
                            revert with 'NH{q', 17
                        if _1805 - 1 >= _1805:
                            revert with 'NH{q', 50
                        _2789 = mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1805 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2789 * uint32(cd[4]) / t * s
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2789 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3005 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3013 = mem[_3005]
                        require mem[_3005] <= test266151307()
                        require _3005 + mem[_3005] + 31 < _3005 + return_data.size
                        _3021 = mem[_3005 + mem[_3005]]
                        if mem[_3005 + mem[_3005]] > test266151307():
                            revert with 'NH{q', 65
                        if _3005 + ceil32(return_data.size) + floor32(mem[_3005 + mem[_3005]]) + 1 > test266151307() or floor32(mem[_3005 + mem[_3005]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3005 + ceil32(return_data.size) + floor32(mem[_3005 + mem[_3005]]) + 1
                        mem[_3005 + ceil32(return_data.size)] = _3021
                        require _3013 + (32 * _3021) + 32 <= return_data.size
                        idx = 0
                        s = _3005 + _3013 + 32
                        t = _3005 + ceil32(return_data.size) + 32
                        while idx < _3021:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                mem[192 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                mem[(32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 132).length) + 196] = eth.balance(this.address)
                mem[(32 * ('cd', 132).length) + 228] = 64
                mem[(32 * ('cd', 132).length) + 260] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (32 * ('cd', 132).length) + 292
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                _1798 = mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                require mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < (32 * ('cd', 132).length) + return_data.size + 192
                _1806 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
                mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 192] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                require _1798 + (32 * _1806) + 32 <= return_data.size
                idx = 0
                s = (32 * ('cd', 132).length) + _1798 + 224
                t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 224
                while idx < _1806:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1806 < 1:
                        revert with 'NH{q', 17
                    if _1806 - 1 >= _1806:
                        revert with 'NH{q', 50
                    _2430 = mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                    if mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2430 * uint32(cd[4])
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 164
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp + 15
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _2430 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2804 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2828 = mem[_2804]
                    require mem[_2804] <= test266151307()
                    require _2804 + mem[_2804] + 31 < _2804 + return_data.size
                    _2852 = mem[_2804 + mem[_2804]]
                    if mem[_2804 + mem[_2804]] > test266151307():
                        revert with 'NH{q', 65
                    if _2804 + ceil32(return_data.size) + floor32(mem[_2804 + mem[_2804]]) + 1 > test266151307() or floor32(mem[_2804 + mem[_2804]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2804 + ceil32(return_data.size) + floor32(mem[_2804 + mem[_2804]]) + 1
                    mem[_2804 + ceil32(return_data.size)] = _2852
                    require _2828 + (32 * _2852) + 32 <= return_data.size
                    idx = 0
                    s = _2804 + _2828 + 32
                    t = _2804 + ceil32(return_data.size) + 32
                    while idx < _2852:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1806 < 1:
                            revert with 'NH{q', 17
                        if _1806 - 1 >= _1806:
                            revert with 'NH{q', 50
                        _2470 = mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2470 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2470 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2803 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2827 = mem[_2803]
                        require mem[_2803] <= test266151307()
                        require _2803 + mem[_2803] + 31 < _2803 + return_data.size
                        _2851 = mem[_2803 + mem[_2803]]
                        if mem[_2803 + mem[_2803]] > test266151307():
                            revert with 'NH{q', 65
                        if _2803 + ceil32(return_data.size) + floor32(mem[_2803 + mem[_2803]]) + 1 > test266151307() or floor32(mem[_2803 + mem[_2803]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2803 + ceil32(return_data.size) + floor32(mem[_2803 + mem[_2803]]) + 1
                        mem[_2803 + ceil32(return_data.size)] = _2851
                        require _2827 + (32 * _2851) + 32 <= return_data.size
                        idx = 0
                        s = _2803 + _2827 + 32
                        t = _2803 + ceil32(return_data.size) + 32
                        while idx < _2851:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1806 < 1:
                            revert with 'NH{q', 17
                        if _1806 - 1 >= _1806:
                            revert with 'NH{q', 50
                        _2790 = mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1806 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2790 * uint32(cd[4]) / t * s
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2790 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3006 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3014 = mem[_3006]
                        require mem[_3006] <= test266151307()
                        require _3006 + mem[_3006] + 31 < _3006 + return_data.size
                        _3022 = mem[_3006 + mem[_3006]]
                        if mem[_3006 + mem[_3006]] > test266151307():
                            revert with 'NH{q', 65
                        if _3006 + ceil32(return_data.size) + floor32(mem[_3006 + mem[_3006]]) + 1 > test266151307() or floor32(mem[_3006 + mem[_3006]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3006 + ceil32(return_data.size) + floor32(mem[_3006 + mem[_3006]]) + 1
                        mem[_3006 + ceil32(return_data.size)] = _3022
                        require _3014 + (32 * _3022) + 32 <= return_data.size
                        idx = 0
                        s = _3006 + _3014 + 32
                        t = _3006 + ceil32(return_data.size) + 32
                        while idx < _3022:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            if not ('cd', 132).length:
                mem[(32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 132).length) + 196] = eth.balance(this.address)
                mem[(32 * ('cd', 132).length) + 228] = 64
                mem[(32 * ('cd', 132).length) + 260] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (32 * ('cd', 132).length) + 292
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                _1799 = mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                require mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < (32 * ('cd', 132).length) + return_data.size + 192
                _1807 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
                mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 192] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                require _1799 + (32 * _1807) + 32 <= return_data.size
                idx = 0
                s = (32 * ('cd', 132).length) + _1799 + 224
                t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 224
                while idx < _1807:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1807 < 1:
                        revert with 'NH{q', 17
                    if _1807 - 1 >= _1807:
                        revert with 'NH{q', 50
                    _2431 = mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                    if mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2431 * uint32(cd[4])
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 164
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp + 15
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _2431 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2806 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2830 = mem[_2806]
                    require mem[_2806] <= test266151307()
                    require _2806 + mem[_2806] + 31 < _2806 + return_data.size
                    _2854 = mem[_2806 + mem[_2806]]
                    if mem[_2806 + mem[_2806]] > test266151307():
                        revert with 'NH{q', 65
                    if _2806 + ceil32(return_data.size) + floor32(mem[_2806 + mem[_2806]]) + 1 > test266151307() or floor32(mem[_2806 + mem[_2806]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2806 + ceil32(return_data.size) + floor32(mem[_2806 + mem[_2806]]) + 1
                    mem[_2806 + ceil32(return_data.size)] = _2854
                    require _2830 + (32 * _2854) + 32 <= return_data.size
                    idx = 0
                    s = _2806 + _2830 + 32
                    t = _2806 + ceil32(return_data.size) + 32
                    while idx < _2854:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1807 < 1:
                            revert with 'NH{q', 17
                        if _1807 - 1 >= _1807:
                            revert with 'NH{q', 50
                        _2471 = mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2471 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2471 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2805 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2829 = mem[_2805]
                        require mem[_2805] <= test266151307()
                        require _2805 + mem[_2805] + 31 < _2805 + return_data.size
                        _2853 = mem[_2805 + mem[_2805]]
                        if mem[_2805 + mem[_2805]] > test266151307():
                            revert with 'NH{q', 65
                        if _2805 + ceil32(return_data.size) + floor32(mem[_2805 + mem[_2805]]) + 1 > test266151307() or floor32(mem[_2805 + mem[_2805]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2805 + ceil32(return_data.size) + floor32(mem[_2805 + mem[_2805]]) + 1
                        mem[_2805 + ceil32(return_data.size)] = _2853
                        require _2829 + (32 * _2853) + 32 <= return_data.size
                        idx = 0
                        s = _2805 + _2829 + 32
                        t = _2805 + ceil32(return_data.size) + 32
                        while idx < _2853:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1807 < 1:
                            revert with 'NH{q', 17
                        if _1807 - 1 >= _1807:
                            revert with 'NH{q', 50
                        _2791 = mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1807 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2791 * uint32(cd[4]) / t * s
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2791 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3007 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3015 = mem[_3007]
                        require mem[_3007] <= test266151307()
                        require _3007 + mem[_3007] + 31 < _3007 + return_data.size
                        _3023 = mem[_3007 + mem[_3007]]
                        if mem[_3007 + mem[_3007]] > test266151307():
                            revert with 'NH{q', 65
                        if _3007 + ceil32(return_data.size) + floor32(mem[_3007 + mem[_3007]]) + 1 > test266151307() or floor32(mem[_3007 + mem[_3007]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3007 + ceil32(return_data.size) + floor32(mem[_3007 + mem[_3007]]) + 1
                        mem[_3007 + ceil32(return_data.size)] = _3023
                        require _3015 + (32 * _3023) + 32 <= return_data.size
                        idx = 0
                        s = _3007 + _3015 + 32
                        t = _3007 + ceil32(return_data.size) + 32
                        while idx < _3023:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                mem[192 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                mem[(32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * ('cd', 132).length) + 196] = eth.balance(this.address)
                mem[(32 * ('cd', 132).length) + 228] = 64
                mem[(32 * ('cd', 132).length) + 260] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (32 * ('cd', 132).length) + 292
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + 192
                require return_data.size >= 32
                _1800 = mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
                require mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
                require (32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < (32 * ('cd', 132).length) + return_data.size + 192
                _1808 = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                if mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (32 * ('cd', 132).length) + ceil32(return_data.size) + floor32(mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
                mem[(32 * ('cd', 132).length) + ceil32(return_data.size) + 192] = mem[(32 * ('cd', 132).length) + mem[(32 * ('cd', 132).length) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
                require _1800 + (32 * _1808) + 32 <= return_data.size
                idx = 0
                s = (32 * ('cd', 132).length) + _1800 + 224
                t = (32 * ('cd', 132).length) + ceil32(return_data.size) + 224
                while idx < _1808:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1808 < 1:
                        revert with 'NH{q', 17
                    if _1808 - 1 >= _1808:
                        revert with 'NH{q', 50
                    _2432 = mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                    if mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                        revert with 'NH{q', 17
                    if block.timestamp > -16:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _2432 * uint32(cd[4])
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 164
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = block.timestamp + 15
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _2432 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2808 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2832 = mem[_2808]
                    require mem[_2808] <= test266151307()
                    require _2808 + mem[_2808] + 31 < _2808 + return_data.size
                    _2856 = mem[_2808 + mem[_2808]]
                    if mem[_2808 + mem[_2808]] > test266151307():
                        revert with 'NH{q', 65
                    if _2808 + ceil32(return_data.size) + floor32(mem[_2808 + mem[_2808]]) + 1 > test266151307() or floor32(mem[_2808 + mem[_2808]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2808 + ceil32(return_data.size) + floor32(mem[_2808 + mem[_2808]]) + 1
                    mem[_2808 + ceil32(return_data.size)] = _2856
                    require _2832 + (32 * _2856) + 32 <= return_data.size
                    idx = 0
                    s = _2808 + _2832 + 32
                    t = _2808 + ceil32(return_data.size) + 32
                    while idx < _2856:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1808 < 1:
                            revert with 'NH{q', 17
                        if _1808 - 1 >= _1808:
                            revert with 'NH{q', 50
                        _2472 = mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2472 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2472 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2807 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2831 = mem[_2807]
                        require mem[_2807] <= test266151307()
                        require _2807 + mem[_2807] + 31 < _2807 + return_data.size
                        _2855 = mem[_2807 + mem[_2807]]
                        if mem[_2807 + mem[_2807]] > test266151307():
                            revert with 'NH{q', 65
                        if _2807 + ceil32(return_data.size) + floor32(mem[_2807 + mem[_2807]]) + 1 > test266151307() or floor32(mem[_2807 + mem[_2807]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2807 + ceil32(return_data.size) + floor32(mem[_2807 + mem[_2807]]) + 1
                        mem[_2807 + ceil32(return_data.size)] = _2855
                        require _2831 + (32 * _2855) + 32 <= return_data.size
                        idx = 0
                        s = _2807 + _2831 + 32
                        t = _2807 + ceil32(return_data.size) + 32
                        while idx < _2855:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1808 < 1:
                            revert with 'NH{q', 17
                        if _1808 - 1 >= _1808:
                            revert with 'NH{q', 50
                        _2792 = mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]
                        if mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1808 - 1) + (32 * ('cd', 132).length) + ceil32(return_data.size) + 224]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        if block.timestamp > -16:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _2792 * uint32(cd[4]) / t * s
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 164
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args _2792 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 164 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3008 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3016 = mem[_3008]
                        require mem[_3008] <= test266151307()
                        require _3008 + mem[_3008] + 31 < _3008 + return_data.size
                        _3024 = mem[_3008 + mem[_3008]]
                        if mem[_3008 + mem[_3008]] > test266151307():
                            revert with 'NH{q', 65
                        if _3008 + ceil32(return_data.size) + floor32(mem[_3008 + mem[_3008]]) + 1 > test266151307() or floor32(mem[_3008 + mem[_3008]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3008 + ceil32(return_data.size) + floor32(mem[_3008 + mem[_3008]]) + 1
                        mem[_3008 + ceil32(return_data.size)] = _3024
                        require _3016 + (32 * _3024) + 32 <= return_data.size
                        idx = 0
                        s = _3008 + _3016 + 32
                        t = _3008 + ceil32(return_data.size) + 32
                        while idx < _3024:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
}

function sub_96a1ab35(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] == uint32(cd[4])
    require cd[36] == uint32(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[100] == bool(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if stor2[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if not cd[100]:
            mem[100] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'not enough governance token'
            if block.timestamp > -16:
                revert with 'NH{q', 17
            if ('cd', 132).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(return_data.size) + 96] = ('cd', 132).length
            if not ('cd', 132).length:
                if uint8(cd[68]) != 1:
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 132] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 164] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128
                    require return_data.size >= 32
                    _1005 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 128
                    _1013 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = _1013
                    require _1005 + (32 * _1013) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1005 + 160
                    t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160
                    while idx < _1013:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1013 < 1:
                            revert with 'NH{q', 17
                        if _1013 - 1 >= _1013:
                            revert with 'NH{q', 50
                        _1905 = mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _1905 * uint32(cd[4])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1905 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2766 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2782 = mem[_2766]
                        require mem[_2766] <= test266151307()
                        require _2766 + mem[_2766] + 31 < _2766 + return_data.size
                        _2802 = mem[_2766 + mem[_2766]]
                        if mem[_2766 + mem[_2766]] > test266151307():
                            revert with 'NH{q', 65
                        if _2766 + ceil32(return_data.size) + floor32(mem[_2766 + mem[_2766]]) + 1 > test266151307() or floor32(mem[_2766 + mem[_2766]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2766 + ceil32(return_data.size) + floor32(mem[_2766 + mem[_2766]]) + 1
                        mem[_2766 + ceil32(return_data.size)] = _2802
                        require _2782 + (32 * _2802) + 32 <= return_data.size
                        idx = 0
                        s = _2766 + _2782 + 32
                        t = _2766 + ceil32(return_data.size) + 32
                        while idx < _2802:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1013 < 1:
                                revert with 'NH{q', 17
                            if _1013 - 1 >= _1013:
                                revert with 'NH{q', 50
                            _1937 = mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                            if mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _1937 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _1937 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2765 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2781 = mem[_2765]
                            require mem[_2765] <= test266151307()
                            require _2765 + mem[_2765] + 31 < _2765 + return_data.size
                            _2801 = mem[_2765 + mem[_2765]]
                            if mem[_2765 + mem[_2765]] > test266151307():
                                revert with 'NH{q', 65
                            if _2765 + ceil32(return_data.size) + floor32(mem[_2765 + mem[_2765]]) + 1 > test266151307() or floor32(mem[_2765 + mem[_2765]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2765 + ceil32(return_data.size) + floor32(mem[_2765 + mem[_2765]]) + 1
                            mem[_2765 + ceil32(return_data.size)] = _2801
                            require _2781 + (32 * _2801) + 32 <= return_data.size
                            idx = 0
                            s = _2765 + _2781 + 32
                            t = _2765 + ceil32(return_data.size) + 32
                            while idx < _2801:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1013 < 1:
                                revert with 'NH{q', 17
                            if _1013 - 1 >= _1013:
                                revert with 'NH{q', 50
                            _2749 = mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                            if mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1013 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _2749 * uint32(cd[4]) / t * s
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _2749 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3601 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3641 = mem[_3601]
                            require mem[_3601] <= test266151307()
                            require _3601 + mem[_3601] + 31 < _3601 + return_data.size
                            _3665 = mem[_3601 + mem[_3601]]
                            if mem[_3601 + mem[_3601]] > test266151307():
                                revert with 'NH{q', 65
                            if _3601 + ceil32(return_data.size) + floor32(mem[_3601 + mem[_3601]]) + 1 > test266151307() or floor32(mem[_3601 + mem[_3601]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3601 + ceil32(return_data.size) + floor32(mem[_3601 + mem[_3601]]) + 1
                            mem[_3601 + ceil32(return_data.size)] = _3665
                            require _3641 + (32 * _3665) + 32 <= return_data.size
                            idx = 0
                            s = _3601 + _3641 + 32
                            t = _3601 + ceil32(return_data.size) + 32
                            while idx < _3665:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 164] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128
                    require return_data.size >= 32
                    _1006 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 128
                    _1014 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = _1014
                    require _1006 + (32 * _1014) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1006 + 160
                    t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160
                    while idx < _1014:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1014 < 1:
                            revert with 'NH{q', 17
                        if _1014 - 1 >= _1014:
                            revert with 'NH{q', 50
                        _1906 = mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _1906 * uint32(cd[4])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1906 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2768 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2784 = mem[_2768]
                        require mem[_2768] <= test266151307()
                        require _2768 + mem[_2768] + 31 < _2768 + return_data.size
                        _2804 = mem[_2768 + mem[_2768]]
                        if mem[_2768 + mem[_2768]] > test266151307():
                            revert with 'NH{q', 65
                        if _2768 + ceil32(return_data.size) + floor32(mem[_2768 + mem[_2768]]) + 1 > test266151307() or floor32(mem[_2768 + mem[_2768]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2768 + ceil32(return_data.size) + floor32(mem[_2768 + mem[_2768]]) + 1
                        mem[_2768 + ceil32(return_data.size)] = _2804
                        require _2784 + (32 * _2804) + 32 <= return_data.size
                        idx = 0
                        s = _2768 + _2784 + 32
                        t = _2768 + ceil32(return_data.size) + 32
                        while idx < _2804:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1014 < 1:
                                revert with 'NH{q', 17
                            if _1014 - 1 >= _1014:
                                revert with 'NH{q', 50
                            _1938 = mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                            if mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _1938 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _1938 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2767 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2783 = mem[_2767]
                            require mem[_2767] <= test266151307()
                            require _2767 + mem[_2767] + 31 < _2767 + return_data.size
                            _2803 = mem[_2767 + mem[_2767]]
                            if mem[_2767 + mem[_2767]] > test266151307():
                                revert with 'NH{q', 65
                            if _2767 + ceil32(return_data.size) + floor32(mem[_2767 + mem[_2767]]) + 1 > test266151307() or floor32(mem[_2767 + mem[_2767]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2767 + ceil32(return_data.size) + floor32(mem[_2767 + mem[_2767]]) + 1
                            mem[_2767 + ceil32(return_data.size)] = _2803
                            require _2783 + (32 * _2803) + 32 <= return_data.size
                            idx = 0
                            s = _2767 + _2783 + 32
                            t = _2767 + ceil32(return_data.size) + 32
                            while idx < _2803:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1014 < 1:
                                revert with 'NH{q', 17
                            if _1014 - 1 >= _1014:
                                revert with 'NH{q', 50
                            _2750 = mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                            if mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1014 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _2750 * uint32(cd[4]) / t * s
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _2750 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3606 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3642 = mem[_3606]
                            require mem[_3606] <= test266151307()
                            require _3606 + mem[_3606] + 31 < _3606 + return_data.size
                            _3666 = mem[_3606 + mem[_3606]]
                            if mem[_3606 + mem[_3606]] > test266151307():
                                revert with 'NH{q', 65
                            if _3606 + ceil32(return_data.size) + floor32(mem[_3606 + mem[_3606]]) + 1 > test266151307() or floor32(mem[_3606 + mem[_3606]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3606 + ceil32(return_data.size) + floor32(mem[_3606 + mem[_3606]]) + 1
                            mem[_3606 + ceil32(return_data.size)] = _3666
                            require _3642 + (32 * _3666) + 32 <= return_data.size
                            idx = 0
                            s = _3606 + _3642 + 32
                            t = _3606 + ceil32(return_data.size) + 32
                            while idx < _3666:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                mem[ceil32(return_data.size) + 128 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                if uint8(cd[68]) != 1:
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 132] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 164] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128
                    require return_data.size >= 32
                    _1007 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 128
                    _1015 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = _1015
                    require _1007 + (32 * _1015) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1007 + 160
                    t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160
                    while idx < _1015:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1015 < 1:
                            revert with 'NH{q', 17
                        if _1015 - 1 >= _1015:
                            revert with 'NH{q', 50
                        _1907 = mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _1907 * uint32(cd[4])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1907 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2770 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2786 = mem[_2770]
                        require mem[_2770] <= test266151307()
                        require _2770 + mem[_2770] + 31 < _2770 + return_data.size
                        _2806 = mem[_2770 + mem[_2770]]
                        if mem[_2770 + mem[_2770]] > test266151307():
                            revert with 'NH{q', 65
                        if _2770 + ceil32(return_data.size) + floor32(mem[_2770 + mem[_2770]]) + 1 > test266151307() or floor32(mem[_2770 + mem[_2770]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2770 + ceil32(return_data.size) + floor32(mem[_2770 + mem[_2770]]) + 1
                        mem[_2770 + ceil32(return_data.size)] = _2806
                        require _2786 + (32 * _2806) + 32 <= return_data.size
                        idx = 0
                        s = _2770 + _2786 + 32
                        t = _2770 + ceil32(return_data.size) + 32
                        while idx < _2806:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1015 < 1:
                                revert with 'NH{q', 17
                            if _1015 - 1 >= _1015:
                                revert with 'NH{q', 50
                            _1939 = mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                            if mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _1939 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _1939 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2769 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2785 = mem[_2769]
                            require mem[_2769] <= test266151307()
                            require _2769 + mem[_2769] + 31 < _2769 + return_data.size
                            _2805 = mem[_2769 + mem[_2769]]
                            if mem[_2769 + mem[_2769]] > test266151307():
                                revert with 'NH{q', 65
                            if _2769 + ceil32(return_data.size) + floor32(mem[_2769 + mem[_2769]]) + 1 > test266151307() or floor32(mem[_2769 + mem[_2769]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2769 + ceil32(return_data.size) + floor32(mem[_2769 + mem[_2769]]) + 1
                            mem[_2769 + ceil32(return_data.size)] = _2805
                            require _2785 + (32 * _2805) + 32 <= return_data.size
                            idx = 0
                            s = _2769 + _2785 + 32
                            t = _2769 + ceil32(return_data.size) + 32
                            while idx < _2805:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1015 < 1:
                                revert with 'NH{q', 17
                            if _1015 - 1 >= _1015:
                                revert with 'NH{q', 50
                            _2751 = mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                            if mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1015 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _2751 * uint32(cd[4]) / t * s
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _2751 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3611 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3643 = mem[_3611]
                            require mem[_3611] <= test266151307()
                            require _3611 + mem[_3611] + 31 < _3611 + return_data.size
                            _3667 = mem[_3611 + mem[_3611]]
                            if mem[_3611 + mem[_3611]] > test266151307():
                                revert with 'NH{q', 65
                            if _3611 + ceil32(return_data.size) + floor32(mem[_3611 + mem[_3611]]) + 1 > test266151307() or floor32(mem[_3611 + mem[_3611]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3611 + ceil32(return_data.size) + floor32(mem[_3611 + mem[_3611]]) + 1
                            mem[_3611 + ceil32(return_data.size)] = _3667
                            require _3643 + (32 * _3667) + 32 <= return_data.size
                            idx = 0
                            s = _3611 + _3643 + 32
                            t = _3611 + ceil32(return_data.size) + 32
                            while idx < _3667:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 164] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 164] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128
                    require return_data.size >= 32
                    _1008 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 128
                    _1016 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                    if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = _1016
                    require _1008 + (32 * _1016) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1008 + 160
                    t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160
                    while idx < _1016:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1016 < 1:
                            revert with 'NH{q', 17
                        if _1016 - 1 >= _1016:
                            revert with 'NH{q', 50
                        _1908 = mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _1908 * uint32(cd[4])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1908 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2772 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2788 = mem[_2772]
                        require mem[_2772] <= test266151307()
                        require _2772 + mem[_2772] + 31 < _2772 + return_data.size
                        _2808 = mem[_2772 + mem[_2772]]
                        if mem[_2772 + mem[_2772]] > test266151307():
                            revert with 'NH{q', 65
                        if _2772 + ceil32(return_data.size) + floor32(mem[_2772 + mem[_2772]]) + 1 > test266151307() or floor32(mem[_2772 + mem[_2772]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2772 + ceil32(return_data.size) + floor32(mem[_2772 + mem[_2772]]) + 1
                        mem[_2772 + ceil32(return_data.size)] = _2808
                        require _2788 + (32 * _2808) + 32 <= return_data.size
                        idx = 0
                        s = _2772 + _2788 + 32
                        t = _2772 + ceil32(return_data.size) + 32
                        while idx < _2808:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1016 < 1:
                                revert with 'NH{q', 17
                            if _1016 - 1 >= _1016:
                                revert with 'NH{q', 50
                            _1940 = mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                            if mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _1940 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _1940 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2771 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2787 = mem[_2771]
                            require mem[_2771] <= test266151307()
                            require _2771 + mem[_2771] + 31 < _2771 + return_data.size
                            _2807 = mem[_2771 + mem[_2771]]
                            if mem[_2771 + mem[_2771]] > test266151307():
                                revert with 'NH{q', 65
                            if _2771 + ceil32(return_data.size) + floor32(mem[_2771 + mem[_2771]]) + 1 > test266151307() or floor32(mem[_2771 + mem[_2771]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _2771 + ceil32(return_data.size) + floor32(mem[_2771 + mem[_2771]]) + 1
                            mem[_2771 + ceil32(return_data.size)] = _2807
                            require _2787 + (32 * _2807) + 32 <= return_data.size
                            idx = 0
                            s = _2771 + _2787 + 32
                            t = _2771 + ceil32(return_data.size) + 32
                            while idx < _2807:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1016 < 1:
                                revert with 'NH{q', 17
                            if _1016 - 1 >= _1016:
                                revert with 'NH{q', 50
                            _2752 = mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                            if mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1016 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _2752 * uint32(cd[4]) / t * s
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _2752 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3616 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3644 = mem[_3616]
                            require mem[_3616] <= test266151307()
                            require _3616 + mem[_3616] + 31 < _3616 + return_data.size
                            _3668 = mem[_3616 + mem[_3616]]
                            if mem[_3616 + mem[_3616]] > test266151307():
                                revert with 'NH{q', 65
                            if _3616 + ceil32(return_data.size) + floor32(mem[_3616 + mem[_3616]]) + 1 > test266151307() or floor32(mem[_3616 + mem[_3616]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3616 + ceil32(return_data.size) + floor32(mem[_3616 + mem[_3616]]) + 1
                            mem[_3616 + ceil32(return_data.size)] = _3668
                            require _3644 + (32 * _3668) + 32 <= return_data.size
                            idx = 0
                            s = _3616 + _3644 + 32
                            t = _3616 + ceil32(return_data.size) + 32
                            while idx < _3668:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
        else:
            mem[96] = 1
            mem[128] = stor4
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
            require ext_code.size(stor3)
            call stor3.claimReward(uint8 arg1, address arg2, address[] arg3) with:
                 gas gas_remaining wei
                args 0, address(this.address), 96, 1, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[164] = this.address
            require ext_code.size(stor6)
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'not enough governance token'
            if block.timestamp > -16:
                revert with 'NH{q', 17
            if ('cd', 132).length > test266151307():
                revert with 'NH{q', 65
            if not ('cd', 132).length:
                if uint8(cd[68]) != 1:
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 260] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 292
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192
                    require return_data.size >= 32
                    _1857 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 192
                    _1865 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = _1865
                    require _1857 + (32 * _1865) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1857 + 224
                    t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224
                    while idx < _1865:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1865 < 1:
                            revert with 'NH{q', 17
                        if _1865 - 1 >= _1865:
                            revert with 'NH{q', 50
                        _2825 = mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2825 * uint32(cd[4])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2825 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3622 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3646 = mem[_3622]
                        require mem[_3622] <= test266151307()
                        require _3622 + mem[_3622] + 31 < _3622 + return_data.size
                        _3670 = mem[_3622 + mem[_3622]]
                        if mem[_3622 + mem[_3622]] > test266151307():
                            revert with 'NH{q', 65
                        if _3622 + ceil32(return_data.size) + floor32(mem[_3622 + mem[_3622]]) + 1 > test266151307() or floor32(mem[_3622 + mem[_3622]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3622 + ceil32(return_data.size) + floor32(mem[_3622 + mem[_3622]]) + 1
                        mem[_3622 + ceil32(return_data.size)] = _3670
                        require _3646 + (32 * _3670) + 32 <= return_data.size
                        idx = 0
                        s = _3622 + _3646 + 32
                        t = _3622 + ceil32(return_data.size) + 32
                        while idx < _3670:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1865 < 1:
                                revert with 'NH{q', 17
                            if _1865 - 1 >= _1865:
                                revert with 'NH{q', 50
                            _2873 = mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                            if mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _2873 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _2873 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3621 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3645 = mem[_3621]
                            require mem[_3621] <= test266151307()
                            require _3621 + mem[_3621] + 31 < _3621 + return_data.size
                            _3669 = mem[_3621 + mem[_3621]]
                            if mem[_3621 + mem[_3621]] > test266151307():
                                revert with 'NH{q', 65
                            if _3621 + ceil32(return_data.size) + floor32(mem[_3621 + mem[_3621]]) + 1 > test266151307() or floor32(mem[_3621 + mem[_3621]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3621 + ceil32(return_data.size) + floor32(mem[_3621 + mem[_3621]]) + 1
                            mem[_3621 + ceil32(return_data.size)] = _3669
                            require _3645 + (32 * _3669) + 32 <= return_data.size
                            idx = 0
                            s = _3621 + _3645 + 32
                            t = _3621 + ceil32(return_data.size) + 32
                            while idx < _3669:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1865 < 1:
                                revert with 'NH{q', 17
                            if _1865 - 1 >= _1865:
                                revert with 'NH{q', 50
                            _3569 = mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                            if mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1865 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _3569 * uint32(cd[4]) / t * s
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _3569 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4177 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4201 = mem[_4177]
                            require mem[_4177] <= test266151307()
                            require _4177 + mem[_4177] + 31 < _4177 + return_data.size
                            _4209 = mem[_4177 + mem[_4177]]
                            if mem[_4177 + mem[_4177]] > test266151307():
                                revert with 'NH{q', 65
                            if _4177 + ceil32(return_data.size) + floor32(mem[_4177 + mem[_4177]]) + 1 > test266151307() or floor32(mem[_4177 + mem[_4177]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _4177 + ceil32(return_data.size) + floor32(mem[_4177 + mem[_4177]]) + 1
                            mem[_4177 + ceil32(return_data.size)] = _4209
                            require _4201 + (32 * _4209) + 32 <= return_data.size
                            idx = 0
                            s = _4177 + _4201 + 32
                            t = _4177 + ceil32(return_data.size) + 32
                            while idx < _4209:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 260] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 292
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192
                    require return_data.size >= 32
                    _1858 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 192
                    _1866 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = _1866
                    require _1858 + (32 * _1866) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1858 + 224
                    t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224
                    while idx < _1866:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1866 < 1:
                            revert with 'NH{q', 17
                        if _1866 - 1 >= _1866:
                            revert with 'NH{q', 50
                        _2826 = mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2826 * uint32(cd[4])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2826 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3624 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3648 = mem[_3624]
                        require mem[_3624] <= test266151307()
                        require _3624 + mem[_3624] + 31 < _3624 + return_data.size
                        _3672 = mem[_3624 + mem[_3624]]
                        if mem[_3624 + mem[_3624]] > test266151307():
                            revert with 'NH{q', 65
                        if _3624 + ceil32(return_data.size) + floor32(mem[_3624 + mem[_3624]]) + 1 > test266151307() or floor32(mem[_3624 + mem[_3624]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3624 + ceil32(return_data.size) + floor32(mem[_3624 + mem[_3624]]) + 1
                        mem[_3624 + ceil32(return_data.size)] = _3672
                        require _3648 + (32 * _3672) + 32 <= return_data.size
                        idx = 0
                        s = _3624 + _3648 + 32
                        t = _3624 + ceil32(return_data.size) + 32
                        while idx < _3672:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1866 < 1:
                                revert with 'NH{q', 17
                            if _1866 - 1 >= _1866:
                                revert with 'NH{q', 50
                            _2874 = mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                            if mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _2874 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _2874 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3623 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3647 = mem[_3623]
                            require mem[_3623] <= test266151307()
                            require _3623 + mem[_3623] + 31 < _3623 + return_data.size
                            _3671 = mem[_3623 + mem[_3623]]
                            if mem[_3623 + mem[_3623]] > test266151307():
                                revert with 'NH{q', 65
                            if _3623 + ceil32(return_data.size) + floor32(mem[_3623 + mem[_3623]]) + 1 > test266151307() or floor32(mem[_3623 + mem[_3623]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3623 + ceil32(return_data.size) + floor32(mem[_3623 + mem[_3623]]) + 1
                            mem[_3623 + ceil32(return_data.size)] = _3671
                            require _3647 + (32 * _3671) + 32 <= return_data.size
                            idx = 0
                            s = _3623 + _3647 + 32
                            t = _3623 + ceil32(return_data.size) + 32
                            while idx < _3671:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1866 < 1:
                                revert with 'NH{q', 17
                            if _1866 - 1 >= _1866:
                                revert with 'NH{q', 50
                            _3570 = mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                            if mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1866 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _3570 * uint32(cd[4]) / t * s
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _3570 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4182 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4202 = mem[_4182]
                            require mem[_4182] <= test266151307()
                            require _4182 + mem[_4182] + 31 < _4182 + return_data.size
                            _4210 = mem[_4182 + mem[_4182]]
                            if mem[_4182 + mem[_4182]] > test266151307():
                                revert with 'NH{q', 65
                            if _4182 + ceil32(return_data.size) + floor32(mem[_4182 + mem[_4182]]) + 1 > test266151307() or floor32(mem[_4182 + mem[_4182]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _4182 + ceil32(return_data.size) + floor32(mem[_4182 + mem[_4182]]) + 1
                            mem[_4182 + ceil32(return_data.size)] = _4210
                            require _4202 + (32 * _4210) + 32 <= return_data.size
                            idx = 0
                            s = _4182 + _4202 + 32
                            t = _4182 + ceil32(return_data.size) + 32
                            while idx < _4210:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
            else:
                mem[ceil32(return_data.size) + 192 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
                if uint8(cd[68]) != 1:
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 260] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 292
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192
                    require return_data.size >= 32
                    _1859 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 192
                    _1867 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = _1867
                    require _1859 + (32 * _1867) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1859 + 224
                    t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224
                    while idx < _1867:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1867 < 1:
                            revert with 'NH{q', 17
                        if _1867 - 1 >= _1867:
                            revert with 'NH{q', 50
                        _2827 = mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2827 * uint32(cd[4])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2827 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3626 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3650 = mem[_3626]
                        require mem[_3626] <= test266151307()
                        require _3626 + mem[_3626] + 31 < _3626 + return_data.size
                        _3674 = mem[_3626 + mem[_3626]]
                        if mem[_3626 + mem[_3626]] > test266151307():
                            revert with 'NH{q', 65
                        if _3626 + ceil32(return_data.size) + floor32(mem[_3626 + mem[_3626]]) + 1 > test266151307() or floor32(mem[_3626 + mem[_3626]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3626 + ceil32(return_data.size) + floor32(mem[_3626 + mem[_3626]]) + 1
                        mem[_3626 + ceil32(return_data.size)] = _3674
                        require _3650 + (32 * _3674) + 32 <= return_data.size
                        idx = 0
                        s = _3626 + _3650 + 32
                        t = _3626 + ceil32(return_data.size) + 32
                        while idx < _3674:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1867 < 1:
                                revert with 'NH{q', 17
                            if _1867 - 1 >= _1867:
                                revert with 'NH{q', 50
                            _2875 = mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                            if mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _2875 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _2875 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3625 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3649 = mem[_3625]
                            require mem[_3625] <= test266151307()
                            require _3625 + mem[_3625] + 31 < _3625 + return_data.size
                            _3673 = mem[_3625 + mem[_3625]]
                            if mem[_3625 + mem[_3625]] > test266151307():
                                revert with 'NH{q', 65
                            if _3625 + ceil32(return_data.size) + floor32(mem[_3625 + mem[_3625]]) + 1 > test266151307() or floor32(mem[_3625 + mem[_3625]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3625 + ceil32(return_data.size) + floor32(mem[_3625 + mem[_3625]]) + 1
                            mem[_3625 + ceil32(return_data.size)] = _3673
                            require _3649 + (32 * _3673) + 32 <= return_data.size
                            idx = 0
                            s = _3625 + _3649 + 32
                            t = _3625 + ceil32(return_data.size) + 32
                            while idx < _3673:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1867 < 1:
                                revert with 'NH{q', 17
                            if _1867 - 1 >= _1867:
                                revert with 'NH{q', 50
                            _3571 = mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                            if mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1867 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _3571 * uint32(cd[4]) / t * s
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                            call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _3571 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4187 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4203 = mem[_4187]
                            require mem[_4187] <= test266151307()
                            require _4187 + mem[_4187] + 31 < _4187 + return_data.size
                            _4211 = mem[_4187 + mem[_4187]]
                            if mem[_4187 + mem[_4187]] > test266151307():
                                revert with 'NH{q', 65
                            if _4187 + ceil32(return_data.size) + floor32(mem[_4187 + mem[_4187]]) + 1 > test266151307() or floor32(mem[_4187 + mem[_4187]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _4187 + ceil32(return_data.size) + floor32(mem[_4187 + mem[_4187]]) + 1
                            mem[_4187 + ceil32(return_data.size)] = _4211
                            require _4203 + (32 * _4211) + 32 <= return_data.size
                            idx = 0
                            s = _4187 + _4203 + 32
                            t = _4187 + ceil32(return_data.size) + 32
                            while idx < _4211:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                else:
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = ext_call.return_data[0]
                    require ext_code.size(stor6)
                    call stor6.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
                    mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228] = 64
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 260] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 292
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192
                    require return_data.size >= 32
                    _1860 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 192
                    _1868 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = _1868
                    require _1860 + (32 * _1868) + 32 <= return_data.size
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1860 + 224
                    t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224
                    while idx < _1868:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if not uint32(cd[36]):
                        if _1868 < 1:
                            revert with 'NH{q', 17
                        if _1868 - 1 >= _1868:
                            revert with 'NH{q', 50
                        _2828 = mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2828 * uint32(cd[4])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2828 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3628 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3652 = mem[_3628]
                        require mem[_3628] <= test266151307()
                        require _3628 + mem[_3628] + 31 < _3628 + return_data.size
                        _3676 = mem[_3628 + mem[_3628]]
                        if mem[_3628 + mem[_3628]] > test266151307():
                            revert with 'NH{q', 65
                        if _3628 + ceil32(return_data.size) + floor32(mem[_3628 + mem[_3628]]) + 1 > test266151307() or floor32(mem[_3628 + mem[_3628]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3628 + ceil32(return_data.size) + floor32(mem[_3628 + mem[_3628]]) + 1
                        mem[_3628 + ceil32(return_data.size)] = _3676
                        require _3652 + (32 * _3676) + 32 <= return_data.size
                        idx = 0
                        s = _3628 + _3652 + 32
                        t = _3628 + ceil32(return_data.size) + 32
                        while idx < _3676:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                            if 10^uint32(cd[36]) > -1:
                                revert with 'NH{q', 17
                            if _1868 < 1:
                                revert with 'NH{q', 17
                            if _1868 - 1 >= _1868:
                                revert with 'NH{q', 50
                            _2876 = mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                            if mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                                revert with 'NH{q', 17
                            if not 10^uint32(cd[36]):
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _2876 * uint32(cd[4]) / 10^uint32(cd[36])
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _2876 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3627 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3651 = mem[_3627]
                            require mem[_3627] <= test266151307()
                            require _3627 + mem[_3627] + 31 < _3627 + return_data.size
                            _3675 = mem[_3627 + mem[_3627]]
                            if mem[_3627 + mem[_3627]] > test266151307():
                                revert with 'NH{q', 65
                            if _3627 + ceil32(return_data.size) + floor32(mem[_3627 + mem[_3627]]) + 1 > test266151307() or floor32(mem[_3627 + mem[_3627]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _3627 + ceil32(return_data.size) + floor32(mem[_3627 + mem[_3627]]) + 1
                            mem[_3627 + ceil32(return_data.size)] = _3675
                            require _3651 + (32 * _3675) + 32 <= return_data.size
                            idx = 0
                            s = _3627 + _3651 + 32
                            t = _3627 + ceil32(return_data.size) + 32
                            while idx < _3675:
                                require mem[s] == mem[s]
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                        else:
                            s = 10
                            t = 1
                            idx = uint32(cd[36])
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
                            if _1868 < 1:
                                revert with 'NH{q', 17
                            if _1868 - 1 >= _1868:
                                revert with 'NH{q', 50
                            _3572 = mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                            if mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1868 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                                revert with 'NH{q', 17
                            if not t * s:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = ext_call.return_data[0]
                            mem[mem[64] + 36] = _3572 * uint32(cd[4]) / t * s
                            mem[mem[64] + 68] = 160
                            mem[mem[64] + 164] = ('cd', 132).length
                            idx = 0
                            u = cd[132] + 36
                            v = mem[64] + 196
                            while idx < ('cd', 132).length:
                                require cd[u] == address(cd[u])
                                mem[v] = address(cd[u])
                                idx = idx + 1
                                u = u + 32
                                v = v + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp + 15
                            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _3572 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4192 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4204 = mem[_4192]
                            require mem[_4192] <= test266151307()
                            require _4192 + mem[_4192] + 31 < _4192 + return_data.size
                            _4212 = mem[_4192 + mem[_4192]]
                            if mem[_4192 + mem[_4192]] > test266151307():
                                revert with 'NH{q', 65
                            if _4192 + ceil32(return_data.size) + floor32(mem[_4192 + mem[_4192]]) + 1 > test266151307() or floor32(mem[_4192 + mem[_4192]]) + 1 < 0:
                                revert with 'NH{q', 65
                            mem[64] = _4192 + ceil32(return_data.size) + floor32(mem[_4192 + mem[_4192]]) + 1
                            mem[_4192 + ceil32(return_data.size)] = _4212
                            require _4204 + (32 * _4212) + 32 <= return_data.size
                            idx = 0
                            s = _4192 + _4204 + 32
                            t = _4192 + ceil32(return_data.size) + 32
                            while idx < _4212:
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
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
    if not cd[100]:
        mem[100] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'not enough governance token'
        if block.timestamp > -16:
            revert with 'NH{q', 17
        if ('cd', 132).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ('cd', 132).length
        if not ('cd', 132).length:
            if uint8(cd[68]) != 1:
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 132] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 164] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 164] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128
                require return_data.size >= 32
                _1001 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 128
                _1009 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = _1009
                require _1001 + (32 * _1009) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1001 + 160
                t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160
                while idx < _1009:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1009 < 1:
                        revert with 'NH{q', 17
                    if _1009 - 1 >= _1009:
                        revert with 'NH{q', 50
                    _1901 = mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                    if mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _1901 * uint32(cd[4])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _1901 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2758 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2774 = mem[_2758]
                    require mem[_2758] <= test266151307()
                    require _2758 + mem[_2758] + 31 < _2758 + return_data.size
                    _2790 = mem[_2758 + mem[_2758]]
                    if mem[_2758 + mem[_2758]] > test266151307():
                        revert with 'NH{q', 65
                    if _2758 + ceil32(return_data.size) + floor32(mem[_2758 + mem[_2758]]) + 1 > test266151307() or floor32(mem[_2758 + mem[_2758]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2758 + ceil32(return_data.size) + floor32(mem[_2758 + mem[_2758]]) + 1
                    mem[_2758 + ceil32(return_data.size)] = _2790
                    require _2774 + (32 * _2790) + 32 <= return_data.size
                    idx = 0
                    s = _2758 + _2774 + 32
                    t = _2758 + ceil32(return_data.size) + 32
                    while idx < _2790:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1009 < 1:
                            revert with 'NH{q', 17
                        if _1009 - 1 >= _1009:
                            revert with 'NH{q', 50
                        _1933 = mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _1933 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1933 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2757 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2773 = mem[_2757]
                        require mem[_2757] <= test266151307()
                        require _2757 + mem[_2757] + 31 < _2757 + return_data.size
                        _2789 = mem[_2757 + mem[_2757]]
                        if mem[_2757 + mem[_2757]] > test266151307():
                            revert with 'NH{q', 65
                        if _2757 + ceil32(return_data.size) + floor32(mem[_2757 + mem[_2757]]) + 1 > test266151307() or floor32(mem[_2757 + mem[_2757]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2757 + ceil32(return_data.size) + floor32(mem[_2757 + mem[_2757]]) + 1
                        mem[_2757 + ceil32(return_data.size)] = _2789
                        require _2773 + (32 * _2789) + 32 <= return_data.size
                        idx = 0
                        s = _2757 + _2773 + 32
                        t = _2757 + ceil32(return_data.size) + 32
                        while idx < _2789:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1009 < 1:
                            revert with 'NH{q', 17
                        if _1009 - 1 >= _1009:
                            revert with 'NH{q', 50
                        _2741 = mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1009 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2741 * uint32(cd[4]) / t * s
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2741 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3573 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3629 = mem[_3573]
                        require mem[_3573] <= test266151307()
                        require _3573 + mem[_3573] + 31 < _3573 + return_data.size
                        _3653 = mem[_3573 + mem[_3573]]
                        if mem[_3573 + mem[_3573]] > test266151307():
                            revert with 'NH{q', 65
                        if _3573 + ceil32(return_data.size) + floor32(mem[_3573 + mem[_3573]]) + 1 > test266151307() or floor32(mem[_3573 + mem[_3573]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3573 + ceil32(return_data.size) + floor32(mem[_3573 + mem[_3573]]) + 1
                        mem[_3573 + ceil32(return_data.size)] = _3653
                        require _3629 + (32 * _3653) + 32 <= return_data.size
                        idx = 0
                        s = _3573 + _3629 + 32
                        t = _3573 + ceil32(return_data.size) + 32
                        while idx < _3653:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 164] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 164] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128
                require return_data.size >= 32
                _1002 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 128
                _1010 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = _1010
                require _1002 + (32 * _1010) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1002 + 160
                t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160
                while idx < _1010:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1010 < 1:
                        revert with 'NH{q', 17
                    if _1010 - 1 >= _1010:
                        revert with 'NH{q', 50
                    _1902 = mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                    if mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _1902 * uint32(cd[4])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _1902 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2760 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2776 = mem[_2760]
                    require mem[_2760] <= test266151307()
                    require _2760 + mem[_2760] + 31 < _2760 + return_data.size
                    _2792 = mem[_2760 + mem[_2760]]
                    if mem[_2760 + mem[_2760]] > test266151307():
                        revert with 'NH{q', 65
                    if _2760 + ceil32(return_data.size) + floor32(mem[_2760 + mem[_2760]]) + 1 > test266151307() or floor32(mem[_2760 + mem[_2760]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2760 + ceil32(return_data.size) + floor32(mem[_2760 + mem[_2760]]) + 1
                    mem[_2760 + ceil32(return_data.size)] = _2792
                    require _2776 + (32 * _2792) + 32 <= return_data.size
                    idx = 0
                    s = _2760 + _2776 + 32
                    t = _2760 + ceil32(return_data.size) + 32
                    while idx < _2792:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1010 < 1:
                            revert with 'NH{q', 17
                        if _1010 - 1 >= _1010:
                            revert with 'NH{q', 50
                        _1934 = mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _1934 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1934 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2759 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2775 = mem[_2759]
                        require mem[_2759] <= test266151307()
                        require _2759 + mem[_2759] + 31 < _2759 + return_data.size
                        _2791 = mem[_2759 + mem[_2759]]
                        if mem[_2759 + mem[_2759]] > test266151307():
                            revert with 'NH{q', 65
                        if _2759 + ceil32(return_data.size) + floor32(mem[_2759 + mem[_2759]]) + 1 > test266151307() or floor32(mem[_2759 + mem[_2759]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2759 + ceil32(return_data.size) + floor32(mem[_2759 + mem[_2759]]) + 1
                        mem[_2759 + ceil32(return_data.size)] = _2791
                        require _2775 + (32 * _2791) + 32 <= return_data.size
                        idx = 0
                        s = _2759 + _2775 + 32
                        t = _2759 + ceil32(return_data.size) + 32
                        while idx < _2791:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1010 < 1:
                            revert with 'NH{q', 17
                        if _1010 - 1 >= _1010:
                            revert with 'NH{q', 50
                        _2742 = mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1010 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2742 * uint32(cd[4]) / t * s
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2742 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3578 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3630 = mem[_3578]
                        require mem[_3578] <= test266151307()
                        require _3578 + mem[_3578] + 31 < _3578 + return_data.size
                        _3654 = mem[_3578 + mem[_3578]]
                        if mem[_3578 + mem[_3578]] > test266151307():
                            revert with 'NH{q', 65
                        if _3578 + ceil32(return_data.size) + floor32(mem[_3578 + mem[_3578]]) + 1 > test266151307() or floor32(mem[_3578 + mem[_3578]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3578 + ceil32(return_data.size) + floor32(mem[_3578 + mem[_3578]]) + 1
                        mem[_3578 + ceil32(return_data.size)] = _3654
                        require _3630 + (32 * _3654) + 32 <= return_data.size
                        idx = 0
                        s = _3578 + _3630 + 32
                        t = _3578 + ceil32(return_data.size) + 32
                        while idx < _3654:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            mem[ceil32(return_data.size) + 128 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
            if uint8(cd[68]) != 1:
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 132] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 164] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 164] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128
                require return_data.size >= 32
                _1003 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 128
                _1011 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = _1011
                require _1003 + (32 * _1011) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1003 + 160
                t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160
                while idx < _1011:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1011 < 1:
                        revert with 'NH{q', 17
                    if _1011 - 1 >= _1011:
                        revert with 'NH{q', 50
                    _1903 = mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                    if mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _1903 * uint32(cd[4])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _1903 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2762 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2778 = mem[_2762]
                    require mem[_2762] <= test266151307()
                    require _2762 + mem[_2762] + 31 < _2762 + return_data.size
                    _2794 = mem[_2762 + mem[_2762]]
                    if mem[_2762 + mem[_2762]] > test266151307():
                        revert with 'NH{q', 65
                    if _2762 + ceil32(return_data.size) + floor32(mem[_2762 + mem[_2762]]) + 1 > test266151307() or floor32(mem[_2762 + mem[_2762]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2762 + ceil32(return_data.size) + floor32(mem[_2762 + mem[_2762]]) + 1
                    mem[_2762 + ceil32(return_data.size)] = _2794
                    require _2778 + (32 * _2794) + 32 <= return_data.size
                    idx = 0
                    s = _2762 + _2778 + 32
                    t = _2762 + ceil32(return_data.size) + 32
                    while idx < _2794:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1011 < 1:
                            revert with 'NH{q', 17
                        if _1011 - 1 >= _1011:
                            revert with 'NH{q', 50
                        _1935 = mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _1935 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1935 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2761 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2777 = mem[_2761]
                        require mem[_2761] <= test266151307()
                        require _2761 + mem[_2761] + 31 < _2761 + return_data.size
                        _2793 = mem[_2761 + mem[_2761]]
                        if mem[_2761 + mem[_2761]] > test266151307():
                            revert with 'NH{q', 65
                        if _2761 + ceil32(return_data.size) + floor32(mem[_2761 + mem[_2761]]) + 1 > test266151307() or floor32(mem[_2761 + mem[_2761]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2761 + ceil32(return_data.size) + floor32(mem[_2761 + mem[_2761]]) + 1
                        mem[_2761 + ceil32(return_data.size)] = _2793
                        require _2777 + (32 * _2793) + 32 <= return_data.size
                        idx = 0
                        s = _2761 + _2777 + 32
                        t = _2761 + ceil32(return_data.size) + 32
                        while idx < _2793:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1011 < 1:
                            revert with 'NH{q', 17
                        if _1011 - 1 >= _1011:
                            revert with 'NH{q', 50
                        _2743 = mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1011 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2743 * uint32(cd[4]) / t * s
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2743 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3583 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3631 = mem[_3583]
                        require mem[_3583] <= test266151307()
                        require _3583 + mem[_3583] + 31 < _3583 + return_data.size
                        _3655 = mem[_3583 + mem[_3583]]
                        if mem[_3583 + mem[_3583]] > test266151307():
                            revert with 'NH{q', 65
                        if _3583 + ceil32(return_data.size) + floor32(mem[_3583 + mem[_3583]]) + 1 > test266151307() or floor32(mem[_3583 + mem[_3583]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3583 + ceil32(return_data.size) + floor32(mem[_3583 + mem[_3583]]) + 1
                        mem[_3583 + ceil32(return_data.size)] = _3655
                        require _3631 + (32 * _3655) + 32 <= return_data.size
                        idx = 0
                        s = _3583 + _3631 + 32
                        t = _3583 + ceil32(return_data.size) + 32
                        while idx < _3655:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 132] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 164] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 164] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 132 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128
                require return_data.size >= 32
                _1004 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 159 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 128
                _1012 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]
                if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128 len 4], ext_call.return_data[0 len 28] + 128]) + 129
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 128] = _1012
                require _1004 + (32 * _1012) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1004 + 160
                t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160
                while idx < _1012:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1012 < 1:
                        revert with 'NH{q', 17
                    if _1012 - 1 >= _1012:
                        revert with 'NH{q', 50
                    _1904 = mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                    if mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _1904 * uint32(cd[4])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _1904 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2764 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2780 = mem[_2764]
                    require mem[_2764] <= test266151307()
                    require _2764 + mem[_2764] + 31 < _2764 + return_data.size
                    _2796 = mem[_2764 + mem[_2764]]
                    if mem[_2764 + mem[_2764]] > test266151307():
                        revert with 'NH{q', 65
                    if _2764 + ceil32(return_data.size) + floor32(mem[_2764 + mem[_2764]]) + 1 > test266151307() or floor32(mem[_2764 + mem[_2764]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _2764 + ceil32(return_data.size) + floor32(mem[_2764 + mem[_2764]]) + 1
                    mem[_2764 + ceil32(return_data.size)] = _2796
                    require _2780 + (32 * _2796) + 32 <= return_data.size
                    idx = 0
                    s = _2764 + _2780 + 32
                    t = _2764 + ceil32(return_data.size) + 32
                    while idx < _2796:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1012 < 1:
                            revert with 'NH{q', 17
                        if _1012 - 1 >= _1012:
                            revert with 'NH{q', 50
                        _1936 = mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _1936 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1936 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2763 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2779 = mem[_2763]
                        require mem[_2763] <= test266151307()
                        require _2763 + mem[_2763] + 31 < _2763 + return_data.size
                        _2795 = mem[_2763 + mem[_2763]]
                        if mem[_2763 + mem[_2763]] > test266151307():
                            revert with 'NH{q', 65
                        if _2763 + ceil32(return_data.size) + floor32(mem[_2763 + mem[_2763]]) + 1 > test266151307() or floor32(mem[_2763 + mem[_2763]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _2763 + ceil32(return_data.size) + floor32(mem[_2763 + mem[_2763]]) + 1
                        mem[_2763 + ceil32(return_data.size)] = _2795
                        require _2779 + (32 * _2795) + 32 <= return_data.size
                        idx = 0
                        s = _2763 + _2779 + 32
                        t = _2763 + ceil32(return_data.size) + 32
                        while idx < _2795:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1012 < 1:
                            revert with 'NH{q', 17
                        if _1012 - 1 >= _1012:
                            revert with 'NH{q', 50
                        _2744 = mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]
                        if mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160] and uint32(cd[4]) > -1 / mem[(32 * _1012 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 160]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2744 * uint32(cd[4]) / t * s
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2744 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3588 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3632 = mem[_3588]
                        require mem[_3588] <= test266151307()
                        require _3588 + mem[_3588] + 31 < _3588 + return_data.size
                        _3656 = mem[_3588 + mem[_3588]]
                        if mem[_3588 + mem[_3588]] > test266151307():
                            revert with 'NH{q', 65
                        if _3588 + ceil32(return_data.size) + floor32(mem[_3588 + mem[_3588]]) + 1 > test266151307() or floor32(mem[_3588 + mem[_3588]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3588 + ceil32(return_data.size) + floor32(mem[_3588 + mem[_3588]]) + 1
                        mem[_3588 + ceil32(return_data.size)] = _3656
                        require _3632 + (32 * _3656) + 32 <= return_data.size
                        idx = 0
                        s = _3588 + _3632 + 32
                        t = _3588 + ceil32(return_data.size) + 32
                        while idx < _3656:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
    else:
        mem[96] = 1
        mem[128] = stor4
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
        require ext_code.size(stor3)
        call stor3.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args 0, address(this.address), 96, 1, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[164] = this.address
        require ext_code.size(stor6)
        staticcall stor6.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'not enough governance token'
        if block.timestamp > -16:
            revert with 'NH{q', 17
        if ('cd', 132).length > test266151307():
            revert with 'NH{q', 65
        if not ('cd', 132).length:
            if uint8(cd[68]) != 1:
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 260] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 292
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192
                require return_data.size >= 32
                _1853 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 192
                _1861 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = _1861
                require _1853 + (32 * _1861) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1853 + 224
                t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224
                while idx < _1861:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1861 < 1:
                        revert with 'NH{q', 17
                    if _1861 - 1 >= _1861:
                        revert with 'NH{q', 50
                    _2821 = mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                    if mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _2821 * uint32(cd[4])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _2821 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3594 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3634 = mem[_3594]
                    require mem[_3594] <= test266151307()
                    require _3594 + mem[_3594] + 31 < _3594 + return_data.size
                    _3658 = mem[_3594 + mem[_3594]]
                    if mem[_3594 + mem[_3594]] > test266151307():
                        revert with 'NH{q', 65
                    if _3594 + ceil32(return_data.size) + floor32(mem[_3594 + mem[_3594]]) + 1 > test266151307() or floor32(mem[_3594 + mem[_3594]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3594 + ceil32(return_data.size) + floor32(mem[_3594 + mem[_3594]]) + 1
                    mem[_3594 + ceil32(return_data.size)] = _3658
                    require _3634 + (32 * _3658) + 32 <= return_data.size
                    idx = 0
                    s = _3594 + _3634 + 32
                    t = _3594 + ceil32(return_data.size) + 32
                    while idx < _3658:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1861 < 1:
                            revert with 'NH{q', 17
                        if _1861 - 1 >= _1861:
                            revert with 'NH{q', 50
                        _2865 = mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2865 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2865 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3593 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3633 = mem[_3593]
                        require mem[_3593] <= test266151307()
                        require _3593 + mem[_3593] + 31 < _3593 + return_data.size
                        _3657 = mem[_3593 + mem[_3593]]
                        if mem[_3593 + mem[_3593]] > test266151307():
                            revert with 'NH{q', 65
                        if _3593 + ceil32(return_data.size) + floor32(mem[_3593 + mem[_3593]]) + 1 > test266151307() or floor32(mem[_3593 + mem[_3593]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3593 + ceil32(return_data.size) + floor32(mem[_3593 + mem[_3593]]) + 1
                        mem[_3593 + ceil32(return_data.size)] = _3657
                        require _3633 + (32 * _3657) + 32 <= return_data.size
                        idx = 0
                        s = _3593 + _3633 + 32
                        t = _3593 + ceil32(return_data.size) + 32
                        while idx < _3657:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1861 < 1:
                            revert with 'NH{q', 17
                        if _1861 - 1 >= _1861:
                            revert with 'NH{q', 50
                        _3565 = mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1861 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _3565 * uint32(cd[4]) / t * s
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _3565 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4149 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4197 = mem[_4149]
                        require mem[_4149] <= test266151307()
                        require _4149 + mem[_4149] + 31 < _4149 + return_data.size
                        _4205 = mem[_4149 + mem[_4149]]
                        if mem[_4149 + mem[_4149]] > test266151307():
                            revert with 'NH{q', 65
                        if _4149 + ceil32(return_data.size) + floor32(mem[_4149 + mem[_4149]]) + 1 > test266151307() or floor32(mem[_4149 + mem[_4149]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4149 + ceil32(return_data.size) + floor32(mem[_4149 + mem[_4149]]) + 1
                        mem[_4149 + ceil32(return_data.size)] = _4205
                        require _4197 + (32 * _4205) + 32 <= return_data.size
                        idx = 0
                        s = _4149 + _4197 + 32
                        t = _4149 + ceil32(return_data.size) + 32
                        while idx < _4205:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 260] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 292
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192
                require return_data.size >= 32
                _1854 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 192
                _1862 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = _1862
                require _1854 + (32 * _1862) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1854 + 224
                t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224
                while idx < _1862:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1862 < 1:
                        revert with 'NH{q', 17
                    if _1862 - 1 >= _1862:
                        revert with 'NH{q', 50
                    _2822 = mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                    if mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _2822 * uint32(cd[4])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _2822 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3596 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3636 = mem[_3596]
                    require mem[_3596] <= test266151307()
                    require _3596 + mem[_3596] + 31 < _3596 + return_data.size
                    _3660 = mem[_3596 + mem[_3596]]
                    if mem[_3596 + mem[_3596]] > test266151307():
                        revert with 'NH{q', 65
                    if _3596 + ceil32(return_data.size) + floor32(mem[_3596 + mem[_3596]]) + 1 > test266151307() or floor32(mem[_3596 + mem[_3596]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3596 + ceil32(return_data.size) + floor32(mem[_3596 + mem[_3596]]) + 1
                    mem[_3596 + ceil32(return_data.size)] = _3660
                    require _3636 + (32 * _3660) + 32 <= return_data.size
                    idx = 0
                    s = _3596 + _3636 + 32
                    t = _3596 + ceil32(return_data.size) + 32
                    while idx < _3660:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1862 < 1:
                            revert with 'NH{q', 17
                        if _1862 - 1 >= _1862:
                            revert with 'NH{q', 50
                        _2866 = mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2866 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2866 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3595 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3635 = mem[_3595]
                        require mem[_3595] <= test266151307()
                        require _3595 + mem[_3595] + 31 < _3595 + return_data.size
                        _3659 = mem[_3595 + mem[_3595]]
                        if mem[_3595 + mem[_3595]] > test266151307():
                            revert with 'NH{q', 65
                        if _3595 + ceil32(return_data.size) + floor32(mem[_3595 + mem[_3595]]) + 1 > test266151307() or floor32(mem[_3595 + mem[_3595]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3595 + ceil32(return_data.size) + floor32(mem[_3595 + mem[_3595]]) + 1
                        mem[_3595 + ceil32(return_data.size)] = _3659
                        require _3635 + (32 * _3659) + 32 <= return_data.size
                        idx = 0
                        s = _3595 + _3635 + 32
                        t = _3595 + ceil32(return_data.size) + 32
                        while idx < _3659:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1862 < 1:
                            revert with 'NH{q', 17
                        if _1862 - 1 >= _1862:
                            revert with 'NH{q', 50
                        _3566 = mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1862 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _3566 * uint32(cd[4]) / t * s
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _3566 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4154 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4198 = mem[_4154]
                        require mem[_4154] <= test266151307()
                        require _4154 + mem[_4154] + 31 < _4154 + return_data.size
                        _4206 = mem[_4154 + mem[_4154]]
                        if mem[_4154 + mem[_4154]] > test266151307():
                            revert with 'NH{q', 65
                        if _4154 + ceil32(return_data.size) + floor32(mem[_4154 + mem[_4154]]) + 1 > test266151307() or floor32(mem[_4154 + mem[_4154]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4154 + ceil32(return_data.size) + floor32(mem[_4154 + mem[_4154]]) + 1
                        mem[_4154 + ceil32(return_data.size)] = _4206
                        require _4198 + (32 * _4206) + 32 <= return_data.size
                        idx = 0
                        s = _4154 + _4198 + 32
                        t = _4154 + ceil32(return_data.size) + 32
                        while idx < _4206:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
        else:
            mem[ceil32(return_data.size) + 192 len 32 * ('cd', 132).length] = call.data[calldata.size len 32 * ('cd', 132).length]
            if uint8(cd[68]) != 1:
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 260] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 292
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                staticcall 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192
                require return_data.size >= 32
                _1855 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 192
                _1863 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = _1863
                require _1855 + (32 * _1863) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1855 + 224
                t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224
                while idx < _1863:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1863 < 1:
                        revert with 'NH{q', 17
                    if _1863 - 1 >= _1863:
                        revert with 'NH{q', 50
                    _2823 = mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                    if mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _2823 * uint32(cd[4])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _2823 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3598 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3638 = mem[_3598]
                    require mem[_3598] <= test266151307()
                    require _3598 + mem[_3598] + 31 < _3598 + return_data.size
                    _3662 = mem[_3598 + mem[_3598]]
                    if mem[_3598 + mem[_3598]] > test266151307():
                        revert with 'NH{q', 65
                    if _3598 + ceil32(return_data.size) + floor32(mem[_3598 + mem[_3598]]) + 1 > test266151307() or floor32(mem[_3598 + mem[_3598]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3598 + ceil32(return_data.size) + floor32(mem[_3598 + mem[_3598]]) + 1
                    mem[_3598 + ceil32(return_data.size)] = _3662
                    require _3638 + (32 * _3662) + 32 <= return_data.size
                    idx = 0
                    s = _3598 + _3638 + 32
                    t = _3598 + ceil32(return_data.size) + 32
                    while idx < _3662:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1863 < 1:
                            revert with 'NH{q', 17
                        if _1863 - 1 >= _1863:
                            revert with 'NH{q', 50
                        _2867 = mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2867 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2867 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3597 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3637 = mem[_3597]
                        require mem[_3597] <= test266151307()
                        require _3597 + mem[_3597] + 31 < _3597 + return_data.size
                        _3661 = mem[_3597 + mem[_3597]]
                        if mem[_3597 + mem[_3597]] > test266151307():
                            revert with 'NH{q', 65
                        if _3597 + ceil32(return_data.size) + floor32(mem[_3597 + mem[_3597]]) + 1 > test266151307() or floor32(mem[_3597 + mem[_3597]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3597 + ceil32(return_data.size) + floor32(mem[_3597 + mem[_3597]]) + 1
                        mem[_3597 + ceil32(return_data.size)] = _3661
                        require _3637 + (32 * _3661) + 32 <= return_data.size
                        idx = 0
                        s = _3597 + _3637 + 32
                        t = _3597 + ceil32(return_data.size) + 32
                        while idx < _3661:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1863 < 1:
                            revert with 'NH{q', 17
                        if _1863 - 1 >= _1863:
                            revert with 'NH{q', 50
                        _3567 = mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1863 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _3567 * uint32(cd[4]) / t * s
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                        call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _3567 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4159 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4199 = mem[_4159]
                        require mem[_4159] <= test266151307()
                        require _4159 + mem[_4159] + 31 < _4159 + return_data.size
                        _4207 = mem[_4159 + mem[_4159]]
                        if mem[_4159 + mem[_4159]] > test266151307():
                            revert with 'NH{q', 65
                        if _4159 + ceil32(return_data.size) + floor32(mem[_4159 + mem[_4159]]) + 1 > test266151307() or floor32(mem[_4159 + mem[_4159]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4159 + ceil32(return_data.size) + floor32(mem[_4159 + mem[_4159]]) + 1
                        mem[_4159 + ceil32(return_data.size)] = _4207
                        require _4199 + (32 * _4207) + 32 <= return_data.size
                        idx = 0
                        s = _4159 + _4199 + 32
                        t = _4159 + ceil32(return_data.size) + 32
                        while idx < _4207:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
            else:
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 228] = ext_call.return_data[0]
                require ext_code.size(stor6)
                call stor6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
                mem[ceil32(return_data.size) + (32 * ('cd', 132).length) + 192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 228] = 64
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 260] = ('cd', 132).length
                idx = 0
                s = cd[132] + 36
                t = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 292
                while idx < ('cd', 132).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 196 len (96 * ('cd', 132).length) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192
                require return_data.size >= 32
                _1856 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + return_data.size + 192
                _1864 = mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 'NH{q', 65
                if (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + floor32(mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 192] = _1864
                require _1856 + (32 * _1864) + 32 <= return_data.size
                idx = 0
                s = (2 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + _1856 + 224
                t = (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224
                while idx < _1864:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not uint32(cd[36]):
                    if _1864 < 1:
                        revert with 'NH{q', 17
                    if _1864 - 1 >= _1864:
                        revert with 'NH{q', 50
                    _2824 = mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                    if mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                        revert with 'NH{q', 17
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _2824 * uint32(cd[4])
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 132).length
                    idx = 0
                    s = cd[132] + 36
                    t = mem[64] + 196
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _2824 * uint32(cd[4]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3600 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3640 = mem[_3600]
                    require mem[_3600] <= test266151307()
                    require _3600 + mem[_3600] + 31 < _3600 + return_data.size
                    _3664 = mem[_3600 + mem[_3600]]
                    if mem[_3600 + mem[_3600]] > test266151307():
                        revert with 'NH{q', 65
                    if _3600 + ceil32(return_data.size) + floor32(mem[_3600 + mem[_3600]]) + 1 > test266151307() or floor32(mem[_3600 + mem[_3600]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _3600 + ceil32(return_data.size) + floor32(mem[_3600 + mem[_3600]]) + 1
                    mem[_3600 + ceil32(return_data.size)] = _3664
                    require _3640 + (32 * _3664) + 32 <= return_data.size
                    idx = 0
                    s = _3600 + _3640 + 32
                    t = _3600 + ceil32(return_data.size) + 32
                    while idx < _3664:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                else:
                    if bool(bool(uint32(cd[36]) < 78)) or bool(bool(uint32(cd[36]) < 32)):
                        if 10^uint32(cd[36]) > -1:
                            revert with 'NH{q', 17
                        if _1864 < 1:
                            revert with 'NH{q', 17
                        if _1864 - 1 >= _1864:
                            revert with 'NH{q', 50
                        _2868 = mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        if not 10^uint32(cd[36]):
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _2868 * uint32(cd[4]) / 10^uint32(cd[36])
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        s = cd[132] + 36
                        t = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _2868 * uint32(cd[4]) / 10^uint32(cd[36]), Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3599 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3639 = mem[_3599]
                        require mem[_3599] <= test266151307()
                        require _3599 + mem[_3599] + 31 < _3599 + return_data.size
                        _3663 = mem[_3599 + mem[_3599]]
                        if mem[_3599 + mem[_3599]] > test266151307():
                            revert with 'NH{q', 65
                        if _3599 + ceil32(return_data.size) + floor32(mem[_3599 + mem[_3599]]) + 1 > test266151307() or floor32(mem[_3599 + mem[_3599]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _3599 + ceil32(return_data.size) + floor32(mem[_3599 + mem[_3599]]) + 1
                        mem[_3599 + ceil32(return_data.size)] = _3663
                        require _3639 + (32 * _3663) + 32 <= return_data.size
                        idx = 0
                        s = _3599 + _3639 + 32
                        t = _3599 + ceil32(return_data.size) + 32
                        while idx < _3663:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                    else:
                        s = 10
                        t = 1
                        idx = uint32(cd[36])
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
                        if _1864 < 1:
                            revert with 'NH{q', 17
                        if _1864 - 1 >= _1864:
                            revert with 'NH{q', 50
                        _3568 = mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]
                        if mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224] and uint32(cd[4]) > -1 / mem[(32 * _1864 - 1) + (4 * ceil32(return_data.size)) + (32 * ('cd', 132).length) + 224]:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ext_call.return_data[0]
                        mem[mem[64] + 36] = _3568 * uint32(cd[4]) / t * s
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 132).length
                        idx = 0
                        u = cd[132] + 36
                        v = mem[64] + 196
                        while idx < ('cd', 132).length:
                            require cd[u] == address(cd[u])
                            mem[v] = address(cd[u])
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _3568 * uint32(cd[4]) / t * s, Array(len=('cd', 132).length, data=mem[mem[64] + 196 len 32 * ('cd', 132).length]), address(this.address), block.timestamp + 15
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4164 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4200 = mem[_4164]
                        require mem[_4164] <= test266151307()
                        require _4164 + mem[_4164] + 31 < _4164 + return_data.size
                        _4208 = mem[_4164 + mem[_4164]]
                        if mem[_4164 + mem[_4164]] > test266151307():
                            revert with 'NH{q', 65
                        if _4164 + ceil32(return_data.size) + floor32(mem[_4164 + mem[_4164]]) + 1 > test266151307() or floor32(mem[_4164 + mem[_4164]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4164 + ceil32(return_data.size) + floor32(mem[_4164 + mem[_4164]]) + 1
                        mem[_4164 + ceil32(return_data.size)] = _4208
                        require _4200 + (32 * _4208) + 32 <= return_data.size
                        idx = 0
                        s = _4164 + _4200 + 32
                        t = _4164 + ceil32(return_data.size) + 32
                        while idx < _4208:
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



}
