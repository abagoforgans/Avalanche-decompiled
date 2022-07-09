contract main {




// =====================  Runtime code  =====================


#
#  - sub_0eb8d896(?)
#  - sub_1f911393(?)
#  - supply(uint256 arg1)
#  - sub_6a7fc6ad(?)
#  - sub_6e1e1028(?)
#  - repay(uint256 arg1, bool arg2)
#  - borrow(uint256 arg1)
#  - redeem(uint256 arg1, bool arg2)
#  - isExecutor(address arg1)
#
address sub_b53673caAddress;
array of struct stor1;
address stor2;
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

function transfer_ownership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not owner'
    sub_b53673caAddress = arg1
    emit OwnershipTransferred(sub_b53673caAddress, arg1);
    return 1
}

function sub_4c55c257(?) {
    require ext_code.size(stor2)
    staticcall stor2.getAccountLiquidity(address arg1) with:
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
    require ext_code.size(stor3)
    staticcall stor3.getAccountSnapshot(address arg1) with:
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

function claim(uint8 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while uint8(idx) < stor1.length:
        mem[0] = 1
        if stor1[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        mem[128] = stor3
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
        require ext_code.size(stor2)
        call stor2.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args arg1 << 248, address(this.address), Array(len=1, data=mem[292])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
    mem[128] = stor3
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
    require ext_code.size(stor2)
    call stor2.claimReward(uint8 arg1, address arg2, address[] arg3) with:
         gas gas_remaining wei
        args arg1 << 248, address(this.address), Array(len=1, data=mem[292])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ee26468a(?) {
    require calldata.size - 4 >= 32
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
        if uint8(idx) >= mem[96]:
            revert with 'NH{q', 50
        s = 0
        while uint8(s) < stor1.length:
            mem[0] = 1
            if mem[(32 * uint8(idx)) + 140 len 20] != stor1[uint8(s)].field_0:
                if uint8(s) == 255:
                    revert with 'NH{q', 17
                s = uint8(s) + 1
                continue 
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if uint8(idx) >= mem[96]:
            revert with 'NH{q', 50
        stor1.length++
        mem[0] = 1
        stor1[stor1.length].field_0 = mem[(32 * uint8(idx)) + 140 len 20]
        if uint8(idx) >= mem[96]:
            revert with 'NH{q', 50
        mem[floor32(('cd', 4).length) + 97] = mem[(32 * uint8(idx)) + 140 len 20]
        emit 0x7a672be4: mem[floor32(('cd', 4).length) + 97]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}

function sub_c60562fe(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while uint8(idx) < stor1.length:
        mem[0] = 1
        if stor1[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        mem[64] = (32 * stor1.length) + 128
        mem[96] = stor1.length
        if not stor1.length:
            mem[(32 * stor1.length) + 128] = 32
            mem[(32 * stor1.length) + 160] = stor1.length
            idx = 0
            s = 128
            t = (32 * stor1.length) + 192
            while idx < stor1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor1.length) + 128
               len (96 * stor1.length) + 64
        mem[128] = address(stor1.field_0)
        idx = 128
        s = sha3(1)
        while (32 * stor1.length) + 96 > idx:
            mem[idx + 32] = stor1[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < stor1.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * stor1.length) + -mem[64] + 192
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = 128
        t = (32 * stor1.length) + 192
        while idx < stor1.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = address(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function sub_89a23f53(?) {
    require calldata.size - 4 >= 32
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
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while uint8(idx) < stor1.length:
        mem[0] = 1
        if stor1[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        idx = 0
        while uint8(idx) < ('cd', 4).length:
            s = 0
            while uint8(s) < stor1.length:
                mem[0] = 1
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * uint8(idx)) + 140 len 20] != stor1[uint8(s)].field_0:
                    if uint8(s) == 255:
                        revert with 'NH{q', 17
                    s = uint8(s) + 1
                    continue 
                if uint8(s) >= stor1.length:
                    revert with 0, 'position does not exist'
                if stor1.length < 1:
                    revert with 'NH{q', 17
                if stor1.length - 1 != uint8(s):
                    if stor1.length < 1:
                        revert with 'NH{q', 17
                    if stor1.length - 1 >= stor1.length:
                        revert with 'NH{q', 50
                    if uint8(s) >= stor1.length:
                        revert with 'NH{q', 50
                    if stor1.length < 1:
                        revert with 'NH{q', 17
                    if stor1.length - 1 >= stor1.length:
                        revert with 'NH{q', 50
                    stor1[stor1.length].field_0 = stor1[uint8(s)].field_0
                    if uint8(s) >= stor1.length:
                        revert with 'NH{q', 50
                    stor1[uint8(s)].field_0 = stor1[stor1.length].field_0
                if not stor1.length:
                    revert with 'NH{q', 49
                mem[0] = 1
                stor1[stor1.length].field_0 = 0
                stor1.length--
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                mem[floor32(('cd', 4).length) + 97] = mem[(32 * uint8(idx)) + 140 len 20]
                emit 0xe7d9bae4: mem[floor32(('cd', 4).length) + 97]
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
        while uint8(s) < stor1.length:
            mem[0] = 1
            if uint8(idx) >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * uint8(idx)) + 140 len 20] != stor1[uint8(s)].field_0:
                if uint8(s) == 255:
                    revert with 'NH{q', 17
                s = uint8(s) + 1
                continue 
            if uint8(s) >= stor1.length:
                revert with 0, 'position does not exist'
            if stor1.length < 1:
                revert with 'NH{q', 17
            if stor1.length - 1 != uint8(s):
                if stor1.length < 1:
                    revert with 'NH{q', 17
                if stor1.length - 1 >= stor1.length:
                    revert with 'NH{q', 50
                if uint8(s) >= stor1.length:
                    revert with 'NH{q', 50
                if stor1.length < 1:
                    revert with 'NH{q', 17
                if stor1.length - 1 >= stor1.length:
                    revert with 'NH{q', 50
                stor1[stor1.length].field_0 = stor1[uint8(s)].field_0
                if uint8(s) >= stor1.length:
                    revert with 'NH{q', 50
                stor1[uint8(s)].field_0 = stor1[stor1.length].field_0
            if not stor1.length:
                revert with 'NH{q', 49
            mem[0] = 1
            stor1[stor1.length].field_0 = 0
            stor1.length--
            if uint8(idx) >= mem[96]:
                revert with 'NH{q', 50
            mem[floor32(('cd', 4).length) + 97] = mem[(32 * uint8(idx)) + 140 len 20]
            emit 0xe7d9bae4: mem[floor32(('cd', 4).length) + 97]
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
    while uint8(idx) < stor1.length:
        mem[0] = 1
        if stor1[uint8(idx)].field_0 != msg.sender:
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
                while uint8(t) < stor1.length:
                    mem[0] = 1
                    if stor1[uint8(t)].field_0 != msg.sender:
                        if uint8(t) == 255:
                            revert with 'NH{q', 17
                        t = uint8(t) + 1
                        continue 
                    mem[mem[64] + 4] = s
                    require ext_code.size(stor3)
                    call stor3.0xa0712d68 with:
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
                        require ext_code.size(stor3)
                        call stor3.0xc5ebeaec with:
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
                        require ext_code.size(stor3)
                        call stor3.0xc5ebeaec with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                require ext_code.size(stor3)
                call stor3.0xa0712d68 with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                require ext_code.size(stor3)
                call stor3.0xc5ebeaec with:
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
            require ext_code.size(stor3)
            call stor3.0xa0712d68 with:
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
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
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
                while uint8(t) < stor1.length:
                    mem[0] = 1
                    if stor1[uint8(t)].field_0 != msg.sender:
                        if uint8(t) == 255:
                            revert with 'NH{q', 17
                        t = uint8(t) + 1
                        continue 
                    mem[mem[64] + 4] = s
                    require ext_code.size(stor3)
                    call stor3.0xa0712d68 with:
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
                        require ext_code.size(stor3)
                        call stor3.0xc5ebeaec with:
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
                        require ext_code.size(stor3)
                        call stor3.0xc5ebeaec with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                require ext_code.size(stor3)
                call stor3.0xa0712d68 with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                require ext_code.size(stor3)
                call stor3.0xc5ebeaec with:
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
            require ext_code.size(stor3)
            call stor3.0xa0712d68 with:
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
            while uint8(t) < stor1.length:
                mem[0] = 1
                if stor1[uint8(t)].field_0 != msg.sender:
                    if uint8(t) == 255:
                        revert with 'NH{q', 17
                    t = uint8(t) + 1
                    continue 
                mem[mem[64] + 4] = s
                require ext_code.size(stor3)
                call stor3.0xa0712d68 with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                require ext_code.size(stor3)
                call stor3.0xc5ebeaec with:
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
            require ext_code.size(stor3)
            call stor3.0xa0712d68 with:
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
                require ext_code.size(stor3)
                call stor3.0xc5ebeaec with:
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
                require ext_code.size(stor3)
                call stor3.0xc5ebeaec with:
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
            require ext_code.size(stor3)
            call stor3.0xc5ebeaec with:
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
        require ext_code.size(stor3)
        call stor3.0xa0712d68 with:
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
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
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
            while uint8(t) < stor1.length:
                mem[0] = 1
                if stor1[uint8(t)].field_0 != msg.sender:
                    if uint8(t) == 255:
                        revert with 'NH{q', 17
                    t = uint8(t) + 1
                    continue 
                mem[mem[64] + 4] = s
                require ext_code.size(stor3)
                call stor3.0xa0712d68 with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                    require ext_code.size(stor3)
                    call stor3.0xc5ebeaec with:
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
                require ext_code.size(stor3)
                call stor3.0xc5ebeaec with:
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
            require ext_code.size(stor3)
            call stor3.0xa0712d68 with:
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
                require ext_code.size(stor3)
                call stor3.0xc5ebeaec with:
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
                require ext_code.size(stor3)
                call stor3.0xc5ebeaec with:
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
            require ext_code.size(stor3)
            call stor3.0xc5ebeaec with:
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
        require ext_code.size(stor3)
        call stor3.0xa0712d68 with:
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

function sub_348f946b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == uint32(arg1)
    require arg2 == uint32(arg2)
    require arg3 == bool(arg3)
    idx = 0
    while uint8(idx) < stor1.length:
        mem[0] = 1
        if stor1[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
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
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args eth.balance(this.address), Array(len=2, data=mem[388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _423 = mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
            require mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
            require mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 319 < return_data.size + 288
            _429 = mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]
            if mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 289
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]
            require _423 + (32 * _429) + 32 <= return_data.size
            idx = 0
            s = _423 + 320
            t = ceil32(return_data.size) + 320
            while idx < _429:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if not uint32(arg2):
                if 1 >= _429:
                    revert with 'NH{q', 50
                _606 = mem[ceil32(return_data.size) + 352]
                if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _606 * uint32(arg1)
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
                require ext_code.size(stor6)
                call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args _606 * uint32(arg1), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _759 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _764 = mem[_759]
                require mem[_759] <= test266151307()
                require _759 + mem[_759] + 31 < _759 + return_data.size
                _769 = mem[_759 + mem[_759]]
                if mem[_759 + mem[_759]] > test266151307():
                    revert with 'NH{q', 65
                if _759 + ceil32(return_data.size) + floor32(mem[_759 + mem[_759]]) + 1 > test266151307() or floor32(mem[_759 + mem[_759]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _759 + ceil32(return_data.size) + floor32(mem[_759 + mem[_759]]) + 1
                mem[_759 + ceil32(return_data.size)] = _769
                require _764 + (32 * _769) + 32 <= return_data.size
                idx = 0
                s = _759 + _764 + 32
                t = _759 + ceil32(return_data.size) + 32
                while idx < _769:
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
                    if 1 >= _429:
                        revert with 'NH{q', 50
                    _612 = mem[ceil32(return_data.size) + 352]
                    if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                        revert with 'NH{q', 17
                    if not 10^uint32(arg2):
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _612 * uint32(arg1) / 10^uint32(arg2)
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
                    require ext_code.size(stor6)
                    call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _612 * uint32(arg1) / 10^uint32(arg2), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _758 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _763 = mem[_758]
                    require mem[_758] <= test266151307()
                    require _758 + mem[_758] + 31 < _758 + return_data.size
                    _768 = mem[_758 + mem[_758]]
                    if mem[_758 + mem[_758]] > test266151307():
                        revert with 'NH{q', 65
                    if _758 + ceil32(return_data.size) + floor32(mem[_758 + mem[_758]]) + 1 > test266151307() or floor32(mem[_758 + mem[_758]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _758 + ceil32(return_data.size) + floor32(mem[_758 + mem[_758]]) + 1
                    mem[_758 + ceil32(return_data.size)] = _768
                    require _763 + (32 * _768) + 32 <= return_data.size
                    idx = 0
                    s = _758 + _763 + 32
                    t = _758 + ceil32(return_data.size) + 32
                    while idx < _768:
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
                    if 1 >= _429:
                        revert with 'NH{q', 50
                    _748 = mem[ceil32(return_data.size) + 352]
                    if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _748 * uint32(arg1) / t * s
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
                    require ext_code.size(stor6)
                    call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _748 * uint32(arg1) / t * s, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _880 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _886 = mem[_880]
                    require mem[_880] <= test266151307()
                    require _880 + mem[_880] + 31 < _880 + return_data.size
                    _892 = mem[_880 + mem[_880]]
                    if mem[_880 + mem[_880]] > test266151307():
                        revert with 'NH{q', 65
                    if _880 + ceil32(return_data.size) + floor32(mem[_880 + mem[_880]]) + 1 > test266151307() or floor32(mem[_880 + mem[_880]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _880 + ceil32(return_data.size) + floor32(mem[_880 + mem[_880]]) + 1
                    mem[_880 + ceil32(return_data.size)] = _892
                    require _886 + (32 * _892) + 32 <= return_data.size
                    idx = 0
                    s = _880 + _886 + 32
                    t = _880 + ceil32(return_data.size) + 32
                    while idx < _892:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            mem[96] = 1
            mem[128] = stor3
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
            require ext_code.size(stor2)
            call stor2.claimReward(uint8 arg1, address arg2, address[] arg3) with:
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
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args eth.balance(this.address), Array(len=2, data=mem[452 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 352
            require return_data.size >= 32
            _600 = mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
            require mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
            require mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 383 < return_data.size + 352
            _602 = mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]
            if mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352] > test266151307():
                revert with 'NH{q', 65
            if ceil32(return_data.size) + floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = ceil32(return_data.size) + floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 353
            mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]
            require _600 + (32 * _602) + 32 <= return_data.size
            idx = 0
            s = _600 + 384
            t = ceil32(return_data.size) + 384
            while idx < _602:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if not uint32(arg2):
                if 1 >= _602:
                    revert with 'NH{q', 50
                _760 = mem[ceil32(return_data.size) + 416]
                if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _760 * uint32(arg1)
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
                require ext_code.size(stor6)
                call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args _760 * uint32(arg1), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _882 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _888 = mem[_882]
                require mem[_882] <= test266151307()
                require _882 + mem[_882] + 31 < _882 + return_data.size
                _894 = mem[_882 + mem[_882]]
                if mem[_882 + mem[_882]] > test266151307():
                    revert with 'NH{q', 65
                if _882 + ceil32(return_data.size) + floor32(mem[_882 + mem[_882]]) + 1 > test266151307() or floor32(mem[_882 + mem[_882]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _882 + ceil32(return_data.size) + floor32(mem[_882 + mem[_882]]) + 1
                mem[_882 + ceil32(return_data.size)] = _894
                require _888 + (32 * _894) + 32 <= return_data.size
                idx = 0
                s = _882 + _888 + 32
                t = _882 + ceil32(return_data.size) + 32
                while idx < _894:
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
                    if 1 >= _602:
                        revert with 'NH{q', 50
                    _774 = mem[ceil32(return_data.size) + 416]
                    if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 17
                    if not 10^uint32(arg2):
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _774 * uint32(arg1) / 10^uint32(arg2)
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
                    require ext_code.size(stor6)
                    call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _774 * uint32(arg1) / 10^uint32(arg2), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _881 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _887 = mem[_881]
                    require mem[_881] <= test266151307()
                    require _881 + mem[_881] + 31 < _881 + return_data.size
                    _893 = mem[_881 + mem[_881]]
                    if mem[_881 + mem[_881]] > test266151307():
                        revert with 'NH{q', 65
                    if _881 + ceil32(return_data.size) + floor32(mem[_881 + mem[_881]]) + 1 > test266151307() or floor32(mem[_881 + mem[_881]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _881 + ceil32(return_data.size) + floor32(mem[_881 + mem[_881]]) + 1
                    mem[_881 + ceil32(return_data.size)] = _893
                    require _887 + (32 * _893) + 32 <= return_data.size
                    idx = 0
                    s = _881 + _887 + 32
                    t = _881 + ceil32(return_data.size) + 32
                    while idx < _893:
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
                    if 1 >= _602:
                        revert with 'NH{q', 50
                    _870 = mem[ceil32(return_data.size) + 416]
                    if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _870 * uint32(arg1) / t * s
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
                    require ext_code.size(stor6)
                    call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args _870 * uint32(arg1) / t * s, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _936 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _938 = mem[_936]
                    require mem[_936] <= test266151307()
                    require _936 + mem[_936] + 31 < _936 + return_data.size
                    _940 = mem[_936 + mem[_936]]
                    if mem[_936 + mem[_936]] > test266151307():
                        revert with 'NH{q', 65
                    if _936 + ceil32(return_data.size) + floor32(mem[_936 + mem[_936]]) + 1 > test266151307() or floor32(mem[_936 + mem[_936]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _936 + ceil32(return_data.size) + floor32(mem[_936 + mem[_936]]) + 1
                    mem[_936 + ceil32(return_data.size)] = _940
                    require _938 + (32 * _940) + 32 <= return_data.size
                    idx = 0
                    s = _936 + _938 + 32
                    t = _936 + ceil32(return_data.size) + 32
                    while idx < _940:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
    if sub_b53673caAddress != msg.sender:
        revert with 0, 'not executor or owner'
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
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args eth.balance(this.address), Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _421 = mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
        require mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 319 < return_data.size + 288
        _427 = mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]
        if mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 289 > test266151307() or floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]) + 289
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 288]
        require _421 + (32 * _427) + 32 <= return_data.size
        idx = 0
        s = _421 + 320
        t = ceil32(return_data.size) + 320
        while idx < _427:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not uint32(arg2):
            if 1 >= _427:
                revert with 'NH{q', 50
            _605 = mem[ceil32(return_data.size) + 352]
            if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _605 * uint32(arg1)
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
            require ext_code.size(stor6)
            call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args _605 * uint32(arg1), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _756 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _762 = mem[_756]
            require mem[_756] <= test266151307()
            require _756 + mem[_756] + 31 < _756 + return_data.size
            _766 = mem[_756 + mem[_756]]
            if mem[_756 + mem[_756]] > test266151307():
                revert with 'NH{q', 65
            if _756 + ceil32(return_data.size) + floor32(mem[_756 + mem[_756]]) + 1 > test266151307() or floor32(mem[_756 + mem[_756]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _756 + ceil32(return_data.size) + floor32(mem[_756 + mem[_756]]) + 1
            mem[_756 + ceil32(return_data.size)] = _766
            require _762 + (32 * _766) + 32 <= return_data.size
            idx = 0
            s = _756 + _762 + 32
            t = _756 + ceil32(return_data.size) + 32
            while idx < _766:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if not bool(uint32(arg2) < 78) and not bool(uint32(arg2) < 32):
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
                if 1 >= _427:
                    revert with 'NH{q', 50
                _747 = mem[ceil32(return_data.size) + 352]
                if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _747 * uint32(arg1) / t * s
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
                require ext_code.size(stor6)
                call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args _747 * uint32(arg1) / t * s, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _877 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _883 = mem[_877]
                require mem[_877] <= test266151307()
                require _877 + mem[_877] + 31 < _877 + return_data.size
                _889 = mem[_877 + mem[_877]]
                if mem[_877 + mem[_877]] > test266151307():
                    revert with 'NH{q', 65
                if _877 + ceil32(return_data.size) + floor32(mem[_877 + mem[_877]]) + 1 > test266151307() or floor32(mem[_877 + mem[_877]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _877 + ceil32(return_data.size) + floor32(mem[_877 + mem[_877]]) + 1
                mem[_877 + ceil32(return_data.size)] = _889
                require _883 + (32 * _889) + 32 <= return_data.size
                idx = 0
                s = _877 + _883 + 32
                t = _877 + ceil32(return_data.size) + 32
                while idx < _889:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if 10^uint32(arg2) > -1:
                    revert with 'NH{q', 17
                if 1 >= _427:
                    revert with 'NH{q', 50
                _611 = mem[ceil32(return_data.size) + 352]
                if mem[ceil32(return_data.size) + 352] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 352]:
                    revert with 'NH{q', 17
                if not 10^uint32(arg2):
                    revert with 'NH{q', 18
                _621 = mem[64]
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _611 * uint32(arg1) / 10^uint32(arg2)
                mem[mem[64] + 36] = 128
                mem[mem[64] + 132] = 2
                idx = 0
                s = 128
                t = mem[64] + 164
                while idx < mem[96]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68] = this.address
                mem[_621 + 100] = block.timestamp + 15
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _621 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _755 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _761 = mem[_755]
                require mem[_755] <= test266151307()
                require _755 + mem[_755] + 31 < _755 + return_data.size
                _765 = mem[_755 + mem[_755]]
                if mem[_755 + mem[_755]] > test266151307():
                    revert with 'NH{q', 65
                if _755 + ceil32(return_data.size) + floor32(mem[_755 + mem[_755]]) + 1 > test266151307() or floor32(mem[_755 + mem[_755]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _755 + ceil32(return_data.size) + floor32(mem[_755 + mem[_755]]) + 1
                mem[_755 + ceil32(return_data.size)] = _765
                require _761 + (32 * _765) + 32 <= return_data.size
                idx = 0
                s = _755 + _761 + 32
                t = _755 + ceil32(return_data.size) + 32
                while idx < _765:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        mem[96] = 1
        mem[128] = stor3
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
        require ext_code.size(stor2)
        call stor2.claimReward(uint8 arg1, address arg2, address[] arg3) with:
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
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args eth.balance(this.address), Array(len=2, data=mem[452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 352
        require return_data.size >= 32
        _599 = mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
        require mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 383 < return_data.size + 352
        _601 = mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]
        if mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 353 > test266151307() or floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]) + 353
        mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 352]
        require _599 + (32 * _601) + 32 <= return_data.size
        idx = 0
        s = _599 + 384
        t = ceil32(return_data.size) + 384
        while idx < _601:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not uint32(arg2):
            if 1 >= _601:
                revert with 'NH{q', 50
            _757 = mem[ceil32(return_data.size) + 416]
            if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                revert with 'NH{q', 17
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _757 * uint32(arg1)
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
            require ext_code.size(stor6)
            call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args _757 * uint32(arg1), Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _879 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _885 = mem[_879]
            require mem[_879] <= test266151307()
            require _879 + mem[_879] + 31 < _879 + return_data.size
            _891 = mem[_879 + mem[_879]]
            if mem[_879 + mem[_879]] > test266151307():
                revert with 'NH{q', 65
            if _879 + ceil32(return_data.size) + floor32(mem[_879 + mem[_879]]) + 1 > test266151307() or floor32(mem[_879 + mem[_879]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _879 + ceil32(return_data.size) + floor32(mem[_879 + mem[_879]]) + 1
            mem[_879 + ceil32(return_data.size)] = _891
            require _885 + (32 * _891) + 32 <= return_data.size
            idx = 0
            s = _879 + _885 + 32
            t = _879 + ceil32(return_data.size) + 32
            while idx < _891:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if not bool(uint32(arg2) < 78) and not bool(uint32(arg2) < 32):
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
                if 1 >= _601:
                    revert with 'NH{q', 50
                _869 = mem[ceil32(return_data.size) + 416]
                if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _869 * uint32(arg1) / t * s
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
                require ext_code.size(stor6)
                call stor6.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args _869 * uint32(arg1) / t * s, Array(len=2, data=mem[mem[64] + 164 len 64]), address(this.address), block.timestamp + 15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _935 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _937 = mem[_935]
                require mem[_935] <= test266151307()
                require _935 + mem[_935] + 31 < _935 + return_data.size
                _939 = mem[_935 + mem[_935]]
                if mem[_935 + mem[_935]] > test266151307():
                    revert with 'NH{q', 65
                if _935 + ceil32(return_data.size) + floor32(mem[_935 + mem[_935]]) + 1 > test266151307() or floor32(mem[_935 + mem[_935]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _935 + ceil32(return_data.size) + floor32(mem[_935 + mem[_935]]) + 1
                mem[_935 + ceil32(return_data.size)] = _939
                require _937 + (32 * _939) + 32 <= return_data.size
                idx = 0
                s = _935 + _937 + 32
                t = _935 + ceil32(return_data.size) + 32
                while idx < _939:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if 10^uint32(arg2) > -1:
                    revert with 'NH{q', 17
                if 1 >= _601:
                    revert with 'NH{q', 50
                _772 = mem[ceil32(return_data.size) + 416]
                if mem[ceil32(return_data.size) + 416] and uint32(arg1) > -1 / mem[ceil32(return_data.size) + 416]:
                    revert with 'NH{q', 17
                if not 10^uint32(arg2):
                    revert with 'NH{q', 18
                _788 = mem[64]
                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _772 * uint32(arg1) / 10^uint32(arg2)
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
                mem[_788 + 100] = block.timestamp + 15
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _788 + -mem[64] + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _878 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _884 = mem[_878]
                require mem[_878] <= test266151307()
                require _878 + mem[_878] + 31 < _878 + return_data.size
                _890 = mem[_878 + mem[_878]]
                if mem[_878 + mem[_878]] > test266151307():
                    revert with 'NH{q', 65
                if _878 + ceil32(return_data.size) + floor32(mem[_878 + mem[_878]]) + 1 > test266151307() or floor32(mem[_878 + mem[_878]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _878 + ceil32(return_data.size) + floor32(mem[_878 + mem[_878]]) + 1
                mem[_878 + ceil32(return_data.size)] = _890
                require _884 + (32 * _890) + 32 <= return_data.size
                idx = 0
                s = _878 + _884 + 32
                t = _878 + ceil32(return_data.size) + 32
                while idx < _890:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
}

function sub_d19b8a4e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == uint32(arg1)
    require arg2 == uint32(arg2)
    require arg3 == bool(arg3)
    require arg4 == address(arg4)
    idx = 0
    while uint8(idx) < stor1.length:
        mem[0] = 1
        if stor1[uint8(idx)].field_0 != msg.sender:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            continue 
        if not arg3:
            mem[100] = this.address
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
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
            mem[ceil32(return_data.size) + 356] = stor6
            mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
            require ext_code.size(stor5)
            call stor5.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, ext_call.return_data[0]
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
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 352
            require return_data.size >= 32
            _381 = mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
            _383 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 353
            mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
            require _381 + (32 * _383) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _381 + 384
            t = (4 * ceil32(return_data.size)) + 384
            while idx < _383:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if not uint32(arg2):
                if 2 >= _383:
                    revert with 'NH{q', 50
                _631 = mem[(4 * ceil32(return_data.size)) + 448]
                if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                    revert with 'NH{q', 17
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _631 * uint32(arg1)
                mem[mem[64] + 68] = 160
                _654 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 196
                while idx < _654:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor6)
                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _631 * uint32(arg1), 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _654) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _868 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _873 = mem[_868]
                require mem[_868] <= test266151307()
                require _868 + mem[_868] + 31 < _868 + return_data.size
                _878 = mem[_868 + mem[_868]]
                if mem[_868 + mem[_868]] > test266151307():
                    revert with 'NH{q', 65
                if _868 + ceil32(return_data.size) + floor32(mem[_868 + mem[_868]]) + 1 > test266151307() or floor32(mem[_868 + mem[_868]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _868 + ceil32(return_data.size) + floor32(mem[_868 + mem[_868]]) + 1
                mem[_868 + ceil32(return_data.size)] = _878
                require _873 + (32 * _878) + 32 <= return_data.size
                idx = 0
                s = _868 + _873 + 32
                t = _868 + ceil32(return_data.size) + 32
                while idx < _878:
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
                    if 2 >= _383:
                        revert with 'NH{q', 50
                    _637 = mem[(4 * ceil32(return_data.size)) + 448]
                    if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                        revert with 'NH{q', 17
                    if not 10^uint32(arg2):
                        revert with 'NH{q', 18
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _637 * uint32(arg1) / 10^uint32(arg2)
                    mem[mem[64] + 68] = 160
                    _660 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 196
                    while idx < _660:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = block.timestamp + 15
                    require ext_code.size(stor6)
                    call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], _637 * uint32(arg1) / 10^uint32(arg2), 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _660) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _867 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _872 = mem[_867]
                    require mem[_867] <= test266151307()
                    require _867 + mem[_867] + 31 < _867 + return_data.size
                    _877 = mem[_867 + mem[_867]]
                    if mem[_867 + mem[_867]] > test266151307():
                        revert with 'NH{q', 65
                    if _867 + ceil32(return_data.size) + floor32(mem[_867 + mem[_867]]) + 1 > test266151307() or floor32(mem[_867 + mem[_867]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _867 + ceil32(return_data.size) + floor32(mem[_867 + mem[_867]]) + 1
                    mem[_867 + ceil32(return_data.size)] = _877
                    require _872 + (32 * _877) + 32 <= return_data.size
                    idx = 0
                    s = _867 + _872 + 32
                    t = _867 + ceil32(return_data.size) + 32
                    while idx < _877:
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
                    if 2 >= _383:
                        revert with 'NH{q', 50
                    _857 = mem[(4 * ceil32(return_data.size)) + 448]
                    if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    _882 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _857 * uint32(arg1) / t * s
                    mem[mem[64] + 68] = 160
                    _895 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 196
                    while idx < _895:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_882 + 100] = this.address
                    mem[_882 + 132] = block.timestamp + 15
                    require ext_code.size(stor6)
                    call stor6.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _882 + (32 * _895) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1089 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1099 = mem[_1089]
                    require mem[_1089] <= test266151307()
                    require _1089 + mem[_1089] + 31 < _1089 + return_data.size
                    _1105 = mem[_1089 + mem[_1089]]
                    if mem[_1089 + mem[_1089]] > test266151307():
                        revert with 'NH{q', 65
                    if _1089 + ceil32(return_data.size) + floor32(mem[_1089 + mem[_1089]]) + 1 > test266151307() or floor32(mem[_1089 + mem[_1089]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1089 + ceil32(return_data.size) + floor32(mem[_1089 + mem[_1089]]) + 1
                    mem[_1089 + ceil32(return_data.size)] = _1105
                    require _1099 + (32 * _1105) + 32 <= return_data.size
                    idx = 0
                    s = _1089 + _1099 + 32
                    t = _1089 + ceil32(return_data.size) + 32
                    while idx < _1105:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
        else:
            mem[96] = 1
            mem[128] = stor3
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
            require ext_code.size(stor2)
            call stor2.claimReward(uint8 arg1, address arg2, address[] arg3) with:
                 gas gas_remaining wei
                args 0, address(this.address), 96, 1, mem[292]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[164] = this.address
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
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
            mem[ceil32(return_data.size) + 420] = stor6
            mem[ceil32(return_data.size) + 452] = ext_call.return_data[0]
            require ext_code.size(stor5)
            call stor5.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor6, ext_call.return_data[0]
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
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 484 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            _625 = mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 447 < (2 * ceil32(return_data.size)) + return_data.size + 416
            _627 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 417 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]) + 417
            mem[(4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], ext_call.return_data[0 len 28] + 416]
            require _625 + (32 * _627) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _625 + 448
            t = (4 * ceil32(return_data.size)) + 448
            while idx < _627:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if not uint32(arg2):
                if 2 >= _627:
                    revert with 'NH{q', 50
                _869 = mem[(4 * ceil32(return_data.size)) + 512]
                if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                    revert with 'NH{q', 17
                _893 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _869 * uint32(arg1)
                mem[mem[64] + 68] = 160
                _911 = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
                idx = 0
                s = ceil32(return_data.size) + 192
                t = mem[64] + 196
                while idx < _911:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_893 + 100] = this.address
                mem[_893 + 132] = block.timestamp + 15
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _893 + (32 * _911) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1095 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1101 = mem[_1095]
                require mem[_1095] <= test266151307()
                require _1095 + mem[_1095] + 31 < _1095 + return_data.size
                _1107 = mem[_1095 + mem[_1095]]
                if mem[_1095 + mem[_1095]] > test266151307():
                    revert with 'NH{q', 65
                if _1095 + ceil32(return_data.size) + floor32(mem[_1095 + mem[_1095]]) + 1 > test266151307() or floor32(mem[_1095 + mem[_1095]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1095 + ceil32(return_data.size) + floor32(mem[_1095 + mem[_1095]]) + 1
                mem[_1095 + ceil32(return_data.size)] = _1107
                require _1101 + (32 * _1107) + 32 <= return_data.size
                idx = 0
                s = _1095 + _1101 + 32
                t = _1095 + ceil32(return_data.size) + 32
                while idx < _1107:
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
                    if 2 >= _627:
                        revert with 'NH{q', 50
                    _883 = mem[(4 * ceil32(return_data.size)) + 512]
                    if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                        revert with 'NH{q', 17
                    if not 10^uint32(arg2):
                        revert with 'NH{q', 18
                    _897 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _883 * uint32(arg1) / 10^uint32(arg2)
                    mem[mem[64] + 68] = 160
                    _913 = mem[ceil32(return_data.size) + 160]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = mem[64] + 196
                    while idx < _913:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_897 + 100] = this.address
                    mem[_897 + 132] = block.timestamp + 15
                    require ext_code.size(stor6)
                    call stor6.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _897 + (32 * _913) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1094 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1100 = mem[_1094]
                    require mem[_1094] <= test266151307()
                    require _1094 + mem[_1094] + 31 < _1094 + return_data.size
                    _1106 = mem[_1094 + mem[_1094]]
                    if mem[_1094 + mem[_1094]] > test266151307():
                        revert with 'NH{q', 65
                    if _1094 + ceil32(return_data.size) + floor32(mem[_1094 + mem[_1094]]) + 1 > test266151307() or floor32(mem[_1094 + mem[_1094]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1094 + ceil32(return_data.size) + floor32(mem[_1094 + mem[_1094]]) + 1
                    mem[_1094 + ceil32(return_data.size)] = _1106
                    require _1100 + (32 * _1106) + 32 <= return_data.size
                    idx = 0
                    s = _1094 + _1100 + 32
                    t = _1094 + ceil32(return_data.size) + 32
                    while idx < _1106:
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
                    if 2 >= _627:
                        revert with 'NH{q', 50
                    _1067 = mem[(4 * ceil32(return_data.size)) + 512]
                    if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    _1109 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = _1067 * uint32(arg1) / t * s
                    mem[mem[64] + 68] = 160
                    _1125 = mem[ceil32(return_data.size) + 160]
                    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + 192
                    t = mem[64] + 196
                    while idx < _1125:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1109 + 100] = this.address
                    mem[_1109 + 132] = block.timestamp + 15
                    require ext_code.size(stor6)
                    call stor6.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1109 + (32 * _1125) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1239 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1245 = mem[_1239]
                    require mem[_1239] <= test266151307()
                    require _1239 + mem[_1239] + 31 < _1239 + return_data.size
                    _1247 = mem[_1239 + mem[_1239]]
                    if mem[_1239 + mem[_1239]] > test266151307():
                        revert with 'NH{q', 65
                    if _1239 + ceil32(return_data.size) + floor32(mem[_1239 + mem[_1239]]) + 1 > test266151307() or floor32(mem[_1239 + mem[_1239]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1239 + ceil32(return_data.size) + floor32(mem[_1239 + mem[_1239]]) + 1
                    mem[_1239 + ceil32(return_data.size)] = _1247
                    require _1245 + (32 * _1247) + 32 <= return_data.size
                    idx = 0
                    s = _1239 + _1245 + 32
                    t = _1239 + ceil32(return_data.size) + 32
                    while idx < _1247:
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
    if not arg3:
        mem[100] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
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
        mem[ceil32(return_data.size) + 356] = stor6
        mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
        require ext_code.size(stor5)
        call stor5.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, ext_call.return_data[0]
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
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 420 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _380 = mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28]
        require mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 383 < (2 * ceil32(return_data.size)) + return_data.size + 352
        _382 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 353 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]) + 353
        mem[(4 * ceil32(return_data.size)) + 352] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 352 len 4], ext_call.return_data[0 len 28] + 352]
        require _380 + (32 * _382) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _380 + 384
        t = (4 * ceil32(return_data.size)) + 384
        while idx < _382:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not uint32(arg2):
            if 2 >= _382:
                revert with 'NH{q', 50
            _630 = mem[(4 * ceil32(return_data.size)) + 448]
            if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                revert with 'NH{q', 17
            _644 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = _630 * uint32(arg1)
            mem[mem[64] + 68] = 160
            _652 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 196
            while idx < _652:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_644 + 100] = this.address
            mem[_644 + 132] = block.timestamp + 15
            require ext_code.size(stor6)
            call stor6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _644 + (32 * _652) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _865 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _871 = mem[_865]
            require mem[_865] <= test266151307()
            require _865 + mem[_865] + 31 < _865 + return_data.size
            _875 = mem[_865 + mem[_865]]
            if mem[_865 + mem[_865]] > test266151307():
                revert with 'NH{q', 65
            if _865 + ceil32(return_data.size) + floor32(mem[_865 + mem[_865]]) + 1 > test266151307() or floor32(mem[_865 + mem[_865]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _865 + ceil32(return_data.size) + floor32(mem[_865 + mem[_865]]) + 1
            mem[_865 + ceil32(return_data.size)] = _875
            require _871 + (32 * _875) + 32 <= return_data.size
            idx = 0
            s = _865 + _871 + 32
            t = _865 + ceil32(return_data.size) + 32
            while idx < _875:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            if not bool(uint32(arg2) < 78) and not bool(uint32(arg2) < 32):
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
                if 2 >= _382:
                    revert with 'NH{q', 50
                _856 = mem[(4 * ceil32(return_data.size)) + 448]
                if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _856 * uint32(arg1) / t * s
                mem[mem[64] + 68] = 160
                _894 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                idx = 0
                u = ceil32(return_data.size) + 128
                v = mem[64] + 196
                while idx < _894:
                    mem[v] = mem[u + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[mem[64] + 100] = this.address
                mem[mem[64] + 132] = block.timestamp + 15
                require ext_code.size(stor6)
                call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], _856 * uint32(arg1) / t * s, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _894) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1082 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1096 = mem[_1082]
                require mem[_1082] <= test266151307()
                require _1082 + mem[_1082] + 31 < _1082 + return_data.size
                _1102 = mem[_1082 + mem[_1082]]
                if mem[_1082 + mem[_1082]] > test266151307():
                    revert with 'NH{q', 65
                if _1082 + ceil32(return_data.size) + floor32(mem[_1082 + mem[_1082]]) + 1 > test266151307() or floor32(mem[_1082 + mem[_1082]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1082 + ceil32(return_data.size) + floor32(mem[_1082 + mem[_1082]]) + 1
                mem[_1082 + ceil32(return_data.size)] = _1102
                require _1096 + (32 * _1102) + 32 <= return_data.size
                idx = 0
                s = _1082 + _1096 + 32
                t = _1082 + ceil32(return_data.size) + 32
                while idx < _1102:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                if 10^uint32(arg2) > -1:
                    revert with 'NH{q', 17
                if 2 >= _382:
                    revert with 'NH{q', 50
                _636 = mem[(4 * ceil32(return_data.size)) + 448]
                if mem[(4 * ceil32(return_data.size)) + 448] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 448]:
                    revert with 'NH{q', 17
                if not 10^uint32(arg2):
                    revert with 'NH{q', 18
                _646 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _636 * uint32(arg1) / 10^uint32(arg2)
                mem[mem[64] + 68] = 160
                _658 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 196
                while idx < _658:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_646 + 100] = this.address
                mem[_646 + 132] = block.timestamp + 15
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _646 + (32 * _658) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _864 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _870 = mem[_864]
                require mem[_864] <= test266151307()
                require _864 + mem[_864] + 31 < _864 + return_data.size
                _874 = mem[_864 + mem[_864]]
                if mem[_864 + mem[_864]] > test266151307():
                    revert with 'NH{q', 65
                if _864 + ceil32(return_data.size) + floor32(mem[_864 + mem[_864]]) + 1 > test266151307() or floor32(mem[_864 + mem[_864]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _864 + ceil32(return_data.size) + floor32(mem[_864 + mem[_864]]) + 1
                mem[_864 + ceil32(return_data.size)] = _874
                require _870 + (32 * _874) + 32 <= return_data.size
                idx = 0
                s = _864 + _870 + 32
                t = _864 + ceil32(return_data.size) + 32
                while idx < _874:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        mem[96] = 1
        mem[128] = stor3
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
        require ext_code.size(stor2)
        call stor2.claimReward(uint8 arg1, address arg2, address[] arg3) with:
             gas gas_remaining wei
            args 0, address(this.address), 96, 1, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[164] = this.address
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
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
        mem[ceil32(return_data.size) + 420] = stor6
        mem[ceil32(return_data.size) + 452] = ext_call.return_data[0]
        require ext_code.size(stor5)
        call stor5.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor6, ext_call.return_data[0]
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
        require ext_code.size(stor6)
        staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, mem[(2 * ceil32(return_data.size)) + 484 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _624 = mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
        require mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 447 < (2 * ceil32(return_data.size)) + return_data.size + 416
        _626 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416] > test266151307():
            revert with 'NH{q', 65
        if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 417 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]) + 417
        mem[(4 * ceil32(return_data.size)) + 416] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 416]
        require _624 + (32 * _626) + 32 <= return_data.size
        idx = 0
        s = (2 * ceil32(return_data.size)) + _624 + 448
        t = (4 * ceil32(return_data.size)) + 448
        while idx < _626:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not uint32(arg2):
            if 2 >= _626:
                revert with 'NH{q', 50
            _866 = mem[(4 * ceil32(return_data.size)) + 512]
            if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                revert with 'NH{q', 17
            _892 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = _866 * uint32(arg1)
            mem[mem[64] + 68] = 160
            _910 = mem[ceil32(return_data.size) + 160]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
            idx = 0
            s = ceil32(return_data.size) + 192
            t = mem[64] + 196
            while idx < _910:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_892 + 100] = this.address
            mem[_892 + 132] = block.timestamp + 15
            require ext_code.size(stor6)
            call stor6.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _892 + (32 * _910) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1088 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1098 = mem[_1088]
            require mem[_1088] <= test266151307()
            require _1088 + mem[_1088] + 31 < _1088 + return_data.size
            _1104 = mem[_1088 + mem[_1088]]
            if mem[_1088 + mem[_1088]] > test266151307():
                revert with 'NH{q', 65
            if _1088 + ceil32(return_data.size) + floor32(mem[_1088 + mem[_1088]]) + 1 > test266151307() or floor32(mem[_1088 + mem[_1088]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1088 + ceil32(return_data.size) + floor32(mem[_1088 + mem[_1088]]) + 1
            mem[_1088 + ceil32(return_data.size)] = _1104
            require _1098 + (32 * _1104) + 32 <= return_data.size
            idx = 0
            s = _1088 + _1098 + 32
            t = _1088 + ceil32(return_data.size) + 32
            while idx < _1104:
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
                if 2 >= _626:
                    revert with 'NH{q', 50
                _881 = mem[(4 * ceil32(return_data.size)) + 512]
                if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                    revert with 'NH{q', 17
                if not 10^uint32(arg2):
                    revert with 'NH{q', 18
                _896 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _881 * uint32(arg1) / 10^uint32(arg2)
                mem[mem[64] + 68] = 160
                _912 = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
                idx = 0
                s = ceil32(return_data.size) + 192
                t = mem[64] + 196
                while idx < _912:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_896 + 100] = this.address
                mem[_896 + 132] = block.timestamp + 15
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _896 + (32 * _912) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1087 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1097 = mem[_1087]
                require mem[_1087] <= test266151307()
                require _1087 + mem[_1087] + 31 < _1087 + return_data.size
                _1103 = mem[_1087 + mem[_1087]]
                if mem[_1087 + mem[_1087]] > test266151307():
                    revert with 'NH{q', 65
                if _1087 + ceil32(return_data.size) + floor32(mem[_1087 + mem[_1087]]) + 1 > test266151307() or floor32(mem[_1087 + mem[_1087]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1087 + ceil32(return_data.size) + floor32(mem[_1087 + mem[_1087]]) + 1
                mem[_1087 + ceil32(return_data.size)] = _1103
                require _1097 + (32 * _1103) + 32 <= return_data.size
                idx = 0
                s = _1087 + _1097 + 32
                t = _1087 + ceil32(return_data.size) + 32
                while idx < _1103:
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
                if 2 >= _626:
                    revert with 'NH{q', 50
                _1066 = mem[(4 * ceil32(return_data.size)) + 512]
                if mem[(4 * ceil32(return_data.size)) + 512] and uint32(arg1) > -1 / mem[(4 * ceil32(return_data.size)) + 512]:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                _1108 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = _1066 * uint32(arg1) / t * s
                mem[mem[64] + 68] = 160
                _1124 = mem[ceil32(return_data.size) + 160]
                mem[mem[64] + 164] = mem[ceil32(return_data.size) + 160]
                idx = 0
                s = ceil32(return_data.size) + 192
                t = mem[64] + 196
                while idx < _1124:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1108 + 100] = this.address
                mem[_1108 + 132] = block.timestamp + 15
                require ext_code.size(stor6)
                call stor6.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1108 + (32 * _1124) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1232 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1244 = mem[_1232]
                require mem[_1232] <= test266151307()
                require _1232 + mem[_1232] + 31 < _1232 + return_data.size
                _1246 = mem[_1232 + mem[_1232]]
                if mem[_1232 + mem[_1232]] > test266151307():
                    revert with 'NH{q', 65
                if _1232 + ceil32(return_data.size) + floor32(mem[_1232 + mem[_1232]]) + 1 > test266151307() or floor32(mem[_1232 + mem[_1232]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1232 + ceil32(return_data.size) + floor32(mem[_1232 + mem[_1232]]) + 1
                mem[_1232 + ceil32(return_data.size)] = _1246
                require _1244 + (32 * _1246) + 32 <= return_data.size
                idx = 0
                s = _1232 + _1244 + 32
                t = _1232 + ceil32(return_data.size) + 32
                while idx < _1246:
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
