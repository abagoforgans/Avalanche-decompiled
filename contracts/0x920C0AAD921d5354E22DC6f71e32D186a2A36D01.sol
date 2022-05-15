contract main {




// =====================  Runtime code  =====================


#
#  - sub_7e7ef418(?)
#  - sub_e01dc438(?)
#
function random(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 0xe3ee9f3d5d8974cd4e9c805a63c1a8239e3ff4c03a7f24946500c4c4:
        revert with 0, 17
    return (4823855632 * arg1)
}

function sub_cac0025f(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        call address(cd[((32 * idx) + cd[36] + 36)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7] == bool(mem[_7])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if msg.value:
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg2.length >= 256
    _3 = mem[128]
    require mem[128] == mem[140 len 20]
    _4 = mem[160]
    require mem[160] == mem[172 len 20]
    _5 = mem[192]
    require mem[192] == mem[204 len 20]
    _6 = mem[224]
    require mem[224] == mem[236 len 20]
    _7 = mem[256]
    _8 = mem[288]
    require mem[288] <= test266151307()
    require mem[288] + 159 < arg2.length + 128
    _9 = mem[mem[288] + 128]
    if mem[mem[288] + 128] > test266151307():
        revert with 0, 65
    if (32 * mem[mem[288] + 128]) + 160 < 128 or ceil32(arg2.length) + (32 * mem[mem[288] + 128]) + 160 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg2.length) + (32 * mem[mem[288] + 128]) + 160
    mem[ceil32(arg2.length) + 128] = mem[mem[288] + 128]
    require arg2.length + 32 >= _8 + (32 * _9) + 64
    mem[ceil32(arg2.length) + 160 len 32 * _9] = mem[_8 + 160 len 32 * _9]
    _470 = mem[320]
    require mem[320] <= test266151307()
    require mem[320] + 159 < arg2.length + 128
    _471 = mem[mem[320] + 128]
    if mem[mem[320] + 128] > test266151307():
        revert with 0, 65
    _472 = mem[64]
    if mem[64] + (32 * mem[mem[320] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[320] + 128]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * mem[mem[320] + 128]) + 32
    mem[_472] = mem[mem[320] + 128]
    require arg2.length + 32 >= _470 + (32 * _471) + 64
    idx = 0
    s = _470 + 160
    t = _472 + 32
    while idx < _471:
        require mem[s] == bool(mem[s])
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _928 = mem[352]
    require mem[352] <= test266151307()
    require mem[352] + 159 < arg2.length + 128
    _929 = mem[mem[352] + 128]
    if mem[mem[352] + 128] > test266151307():
        revert with 0, 65
    _930 = mem[64]
    if mem[64] + (32 * mem[mem[352] + 128]) + 32 < mem[64] or mem[64] + (32 * mem[mem[352] + 128]) + 32 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + (32 * mem[mem[352] + 128]) + 32
    mem[_930] = mem[mem[352] + 128]
    require arg2.length + 32 >= _928 + (32 * _929) + 64
    idx = 0
    s = _928 + 160
    t = _930 + 32
    while idx < _929:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(_4) == 0xa07c5b74c9b40447a954e1466938b865b6bbea36:
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x2e1a7d4d with:
             gas gas_remaining wei
            args _7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 36] = address(_5)
        require ext_code.size(0xa07c5b74c9b40447a954e1466938b865b6bbea36)
        call 0xa07c5b74c9b40447a954e1466938b865b6bbea36.liquidateBorrow(address arg1, address arg2) with:
           value _7 wei
             gas gas_remaining wei
            args address(_3), address(_5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_5))
        staticcall address(_5).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1405 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1408 = mem[_1405]
        mem[mem[64] + 4] = mem[_1405]
        require ext_code.size(address(_5))
        call address(_5).redeem(uint256 arg1) with:
             gas gas_remaining wei
            args _1408
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 0xa07c5b74c9b40447a954e1466938b865b6bbea36 == address(_5):
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= mem[ceil32(arg2.length) + 128]:
                revert with 0, 50
            if eth.balance(this.address) < mem[ceil32(arg2.length) + 160]:
                revert with 0, '2'
            if 0 >= _929:
                revert with 0, 50
            if 0 >= mem[ceil32(arg2.length) + 128]:
                revert with 0, 50
            _1459 = mem[ceil32(arg2.length) + 160]
            mem[mem[64] + 4] = mem[_930 + 44 len 20]
            mem[mem[64] + 36] = _1459
            require ext_code.size(address(_6))
            call address(_6).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1459
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1485] == bool(mem[_1485])
            if var163001 < 1:
                revert with 0, 17
            if var167002 >= var167001:
            if var169001 >= mem[_472]:
                revert with 0, 50
            if mem[(32 * var171001) + _472 + 32]:
                if var175003 >= mem[_472]:
                    revert with 0, 50
                if not mem[(32 * var177001) + _472 + 32]:
                    if var181004 < _929:
                        if 1 > !var185002:
                            revert with 0, 17
                        idx = var187003 + 1
                        s = var187007
                        t = var187009
                        u = var187011
                        u = var187012
                        while idx < _929:
                            _9497 = mem[(32 * idx) + _930 + 32]
                            _9509 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9509 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9509 + 36] = s
                            mem[_9509 + 68] = 0
                            mem[_9509 + 100] = address(_9497)
                            mem[_9509 + 132] = 128
                            mem[_9509 + 164] = mem[_9509]
                            idx = 0
                            while idx < mem[_9509]:
                                mem[idx + _9509 + 196] = mem[idx + _9509 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_9509]) > mem[_9509]:
                                mem[_9509 + mem[_9509] + 196] = 0
                            require ext_code.size(t)
                            call t.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args s, 0, address(_9497), 128, mem[_9509], mem[_9509 + 196 len ceil32(mem[_9509])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if u == -1:
                                revert with 0, 17
                            if mem[_930] < 1:
                                revert with 0, 17
                            if u + 1 >= mem[_930] - 1:
                            if u + 1 >= mem[_472]:
                                revert with 0, 50
                            if mem[(32 * u + 1) + _472 + 32]:
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                        revert with 0, 50
                                if u + 1 >= mem[_930]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = 0
                                t = mem[(32 * u + 1) + _930 + 44 len 20]
                                u = 0
                                u = u + 1
                                continue 
                            if 1 > !(u + 1):
                                revert with 0, 17
                            if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                revert with 0, 50
                            if u + 1 >= mem[_472]:
                                revert with 0, 50
                            if mem[(32 * u + 1) + _472 + 32]:
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                    revert with 0, 50
                            if u + 1 >= mem[_930]:
                                revert with 0, 50
                            if 1 > !(u + 1):
                                revert with 0, 17
                            idx = u + 2
                            s = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                            t = mem[(32 * u + 1) + _930 + 44 len 20]
                            u = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                            u = u + 1
                            continue 
                    revert with 0, 50
                if 1 > !var185002:
                    revert with 0, 17
                if var189001 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                if var188004 >= _929:
                    revert with 0, 50
                if 1 > !var192002:
                    revert with 0, 17
                # nil
            else:
                if 1 > !var175002:
                    revert with 0, 17
                if var179001 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                if var178003 >= mem[_472]:
                    revert with 0, 50
                if mem[(32 * var180001) + _472 + 32]:
                    if 1 > !var188002:
                        revert with 0, 17
                    if var192001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    # nil
                else:
                    if var184004 >= _929:
                        revert with 0, 50
                    if 1 > !var188002:
                        revert with 0, 17
                    # nil
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_6))
            staticcall address(_6).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1438 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 0 >= mem[ceil32(arg2.length) + 128]:
                revert with 0, 50
            if mem[_1438] < mem[ceil32(arg2.length) + 160]:
                revert with 0, '2'
            if 0 >= _929:
                revert with 0, 50
            if 0 >= mem[ceil32(arg2.length) + 128]:
                revert with 0, 50
            _1492 = mem[ceil32(arg2.length) + 160]
            mem[mem[64] + 4] = mem[_930 + 44 len 20]
            mem[mem[64] + 36] = _1492
            require ext_code.size(address(_6))
            call address(_6).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], _1492
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1507 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1507] == bool(mem[_1507])
            if var168001 < 1:
                revert with 0, 17
            if var172002 >= var172001:
            if var174001 >= mem[_472]:
                revert with 0, 50
            if mem[(32 * var176001) + _472 + 32]:
                if var180003 >= mem[_472]:
                    revert with 0, 50
                if not mem[(32 * var182001) + _472 + 32]:
                    if var186004 < _929:
                        if 1 > !var190002:
                            revert with 0, 17
                        idx = var192003 + 1
                        s = var192007
                        t = var192009
                        u = var192011
                        u = var192012
                        while idx < _929:
                            _9495 = mem[(32 * idx) + _930 + 32]
                            _9507 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_9507 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_9507 + 36] = s
                            mem[_9507 + 68] = 0
                            mem[_9507 + 100] = address(_9495)
                            mem[_9507 + 132] = 128
                            mem[_9507 + 164] = mem[_9507]
                            idx = 0
                            while idx < mem[_9507]:
                                mem[idx + _9507 + 196] = mem[idx + _9507 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(mem[_9507]) > mem[_9507]:
                                mem[_9507 + mem[_9507] + 196] = 0
                            require ext_code.size(t)
                            call t.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args s, 0, address(_9495), 128, mem[_9507], mem[_9507 + 196 len ceil32(mem[_9507])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if u == -1:
                                revert with 0, 17
                            if mem[_930] < 1:
                                revert with 0, 17
                            if u + 1 >= mem[_930] - 1:
                            if u + 1 >= mem[_472]:
                                revert with 0, 50
                            if mem[(32 * u + 1) + _472 + 32]:
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                        revert with 0, 50
                                if u + 1 >= mem[_930]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = 0
                                t = mem[(32 * u + 1) + _930 + 44 len 20]
                                u = 0
                                u = u + 1
                                continue 
                            if 1 > !(u + 1):
                                revert with 0, 17
                            if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                revert with 0, 50
                            if u + 1 >= mem[_472]:
                                revert with 0, 50
                            if mem[(32 * u + 1) + _472 + 32]:
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                    revert with 0, 50
                            if u + 1 >= mem[_930]:
                                revert with 0, 50
                            if 1 > !(u + 1):
                                revert with 0, 17
                            idx = u + 2
                            s = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                            t = mem[(32 * u + 1) + _930 + 44 len 20]
                            u = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                            u = u + 1
                            continue 
                    revert with 0, 50
                if 1 > !var190002:
                    revert with 0, 17
                if var194001 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                if var193004 >= _929:
                    revert with 0, 50
                if 1 > !var197002:
                    revert with 0, 17
                # nil
            else:
                if 1 > !var180002:
                    revert with 0, 17
                if var184001 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                if var183003 >= mem[_472]:
                    revert with 0, 50
                if mem[(32 * var185001) + _472 + 32]:
                    if 1 > !var193002:
                        revert with 0, 17
                    if var197001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    # nil
                else:
                    if var189004 >= _929:
                        revert with 0, 50
                    if 1 > !var193002:
                        revert with 0, 17
                    # nil
    else:
        if 0x4065d34c6b18ce4370ced1cebde94865dbfafe == address(_4):
            mem[mem[64] + 36] = _7
            mem[mem[64] + 68] = address(_5)
            require ext_code.size(0x4065d34c6b18ce4370ced1cebde94865dbfafe)
            call 0x004065d34c6b18ce4370ced1cebde94865dbfafe.0x11b3d5e7 with:
                 gas gas_remaining wei
                args address(_3), _7, address(_5)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1390 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if mem[_1390]:
                revert with 0, '0'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_5))
            staticcall address(_5).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1410 = mem[_1407]
            mem[mem[64] + 4] = mem[_1407]
            require ext_code.size(address(_5))
            call address(_5).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args _1410
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 0xa07c5b74c9b40447a954e1466938b865b6bbea36 == address(_5):
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xd0e30db0 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                if eth.balance(this.address) < mem[ceil32(arg2.length) + 160]:
                    revert with 0, '2'
                if 0 >= _929:
                    revert with 0, 50
                if 0 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                _1465 = mem[ceil32(arg2.length) + 160]
                mem[mem[64] + 4] = mem[_930 + 44 len 20]
                mem[mem[64] + 36] = _1465
                require ext_code.size(address(_6))
                call address(_6).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1465
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1491 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1491] == bool(mem[_1491])
                if var164001 < 1:
                    revert with 0, 17
                if var168002 >= var168001:
                if var170001 >= mem[_472]:
                    revert with 0, 50
                if mem[(32 * var172001) + _472 + 32]:
                    if var176003 >= mem[_472]:
                        revert with 0, 50
                    if not mem[(32 * var178001) + _472 + 32]:
                        if var182004 < _929:
                            if 1 > !var186002:
                                revert with 0, 17
                            idx = var188003 + 1
                            s = var188007
                            t = var188009
                            u = var188011
                            u = var188012
                            while idx < _929:
                                _9493 = mem[(32 * idx) + _930 + 32]
                                _9505 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9505 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9505 + 36] = s
                                mem[_9505 + 68] = 0
                                mem[_9505 + 100] = address(_9493)
                                mem[_9505 + 132] = 128
                                mem[_9505 + 164] = mem[_9505]
                                idx = 0
                                while idx < mem[_9505]:
                                    mem[idx + _9505 + 196] = mem[idx + _9505 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_9505]) > mem[_9505]:
                                    mem[_9505 + mem[_9505] + 196] = 0
                                require ext_code.size(t)
                                call t.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args s, 0, address(_9493), 128, mem[_9505], mem[_9505 + 196 len ceil32(mem[_9505])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if u == -1:
                                    revert with 0, 17
                                if mem[_930] < 1:
                                    revert with 0, 17
                                if u + 1 >= mem[_930] - 1:
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if u + 1 >= mem[_472]:
                                        revert with 0, 50
                                    if mem[(32 * u + 1) + _472 + 32]:
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                            revert with 0, 50
                                    if u + 1 >= mem[_930]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = 0
                                    t = mem[(32 * u + 1) + _930 + 44 len 20]
                                    u = 0
                                    u = u + 1
                                    continue 
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                        revert with 0, 50
                                if u + 1 >= mem[_930]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                                t = mem[(32 * u + 1) + _930 + 44 len 20]
                                u = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                                u = u + 1
                                continue 
                        revert with 0, 50
                    if 1 > !var186002:
                        revert with 0, 17
                    if var190001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if var189004 >= _929:
                        revert with 0, 50
                    if 1 > !var193002:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var176002:
                        revert with 0, 17
                    if var180001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if var179003 >= mem[_472]:
                        revert with 0, 50
                    if mem[(32 * var181001) + _472 + 32]:
                        if 1 > !var189002:
                            revert with 0, 17
                        if var193001 >= mem[ceil32(arg2.length) + 128]:
                            revert with 0, 50
                        # nil
                    else:
                        if var185004 >= _929:
                            revert with 0, 50
                        if 1 > !var189002:
                            revert with 0, 17
                        # nil
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_6))
                staticcall address(_6).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1442 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 0 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                if mem[_1442] < mem[ceil32(arg2.length) + 160]:
                    revert with 0, '2'
                if 0 >= _929:
                    revert with 0, 50
                if 0 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                _1498 = mem[ceil32(arg2.length) + 160]
                mem[mem[64] + 4] = mem[_930 + 44 len 20]
                mem[mem[64] + 36] = _1498
                require ext_code.size(address(_6))
                call address(_6).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1498
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1509] == bool(mem[_1509])
                if var169001 < 1:
                    revert with 0, 17
                if var173002 >= var173001:
                if var175001 >= mem[_472]:
                    revert with 0, 50
                if mem[(32 * var177001) + _472 + 32]:
                    if var181003 >= mem[_472]:
                        revert with 0, 50
                    if not mem[(32 * var183001) + _472 + 32]:
                        if var187004 < _929:
                            if 1 > !var191002:
                                revert with 0, 17
                            idx = var193003 + 1
                            s = var193007
                            t = var193009
                            u = var193011
                            u = var193012
                            while idx < _929:
                                _9491 = mem[(32 * idx) + _930 + 32]
                                _9503 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9503 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9503 + 36] = s
                                mem[_9503 + 68] = 0
                                mem[_9503 + 100] = address(_9491)
                                mem[_9503 + 132] = 128
                                mem[_9503 + 164] = mem[_9503]
                                idx = 0
                                while idx < mem[_9503]:
                                    mem[idx + _9503 + 196] = mem[idx + _9503 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_9503]) > mem[_9503]:
                                    mem[_9503 + mem[_9503] + 196] = 0
                                require ext_code.size(t)
                                call t.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args s, 0, address(_9491), 128, mem[_9503], mem[_9503 + 196 len ceil32(mem[_9503])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if u == -1:
                                    revert with 0, 17
                                if mem[_930] < 1:
                                    revert with 0, 17
                                if u + 1 >= mem[_930] - 1:
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if u + 1 >= mem[_472]:
                                        revert with 0, 50
                                    if mem[(32 * u + 1) + _472 + 32]:
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                            revert with 0, 50
                                    if u + 1 >= mem[_930]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = 0
                                    t = mem[(32 * u + 1) + _930 + 44 len 20]
                                    u = 0
                                    u = u + 1
                                    continue 
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                        revert with 0, 50
                                if u + 1 >= mem[_930]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                                t = mem[(32 * u + 1) + _930 + 44 len 20]
                                u = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                                u = u + 1
                                continue 
                        revert with 0, 50
                    if 1 > !var191002:
                        revert with 0, 17
                    if var195001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if var194004 >= _929:
                        revert with 0, 50
                    if 1 > !var198002:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var181002:
                        revert with 0, 17
                    if var185001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if var184003 >= mem[_472]:
                        revert with 0, 50
                    if mem[(32 * var186001) + _472 + 32]:
                        if 1 > !var194002:
                            revert with 0, 17
                        if var198001 >= mem[ceil32(arg2.length) + 128]:
                            revert with 0, 50
                        # nil
                    else:
                        if var190004 >= _929:
                            revert with 0, 50
                        if 1 > !var194002:
                            revert with 0, 17
                        # nil
        else:
            mem[mem[64] + 4] = address(_3)
            mem[mem[64] + 36] = _7
            mem[mem[64] + 68] = address(_5)
            require ext_code.size(address(_4))
            call address(_4).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(_3), _7, address(_5)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1389 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_1389]:
                revert with 0, '1'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_5))
            staticcall address(_5).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1406 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1409 = mem[_1406]
            mem[mem[64] + 4] = mem[_1406]
            require ext_code.size(address(_5))
            call address(_5).redeem(uint256 arg1) with:
                 gas gas_remaining wei
                args _1409
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 0xa07c5b74c9b40447a954e1466938b865b6bbea36 == address(_5):
                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xd0e30db0 with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                if eth.balance(this.address) < mem[ceil32(arg2.length) + 160]:
                    revert with 0, '2'
                if 0 >= _929:
                    revert with 0, 50
                if 0 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                _1462 = mem[ceil32(arg2.length) + 160]
                mem[mem[64] + 4] = mem[_930 + 44 len 20]
                mem[mem[64] + 36] = _1462
                require ext_code.size(address(_6))
                call address(_6).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1462
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1488 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1488] == bool(mem[_1488])
                if var164001 < 1:
                    revert with 0, 17
                if var168002 >= var168001:
                if var170001 >= mem[_472]:
                    revert with 0, 50
                if mem[(32 * var172001) + _472 + 32]:
                    if var176003 >= mem[_472]:
                        revert with 0, 50
                    if not mem[(32 * var178001) + _472 + 32]:
                        if var182004 < _929:
                            if 1 > !var186002:
                                revert with 0, 17
                            idx = var188003 + 1
                            s = var188007
                            t = var188009
                            u = var188011
                            u = var188012
                            while idx < _929:
                                _9489 = mem[(32 * idx) + _930 + 32]
                                _9501 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9501 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9501 + 36] = s
                                mem[_9501 + 68] = 0
                                mem[_9501 + 100] = address(_9489)
                                mem[_9501 + 132] = 128
                                mem[_9501 + 164] = mem[_9501]
                                idx = 0
                                while idx < mem[_9501]:
                                    mem[idx + _9501 + 196] = mem[idx + _9501 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_9501]) > mem[_9501]:
                                    mem[_9501 + mem[_9501] + 196] = 0
                                require ext_code.size(t)
                                call t.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args s, 0, address(_9489), 128, mem[_9501], mem[_9501 + 196 len ceil32(mem[_9501])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if u == -1:
                                    revert with 0, 17
                                if mem[_930] < 1:
                                    revert with 0, 17
                                if u + 1 >= mem[_930] - 1:
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if u + 1 >= mem[_472]:
                                        revert with 0, 50
                                    if mem[(32 * u + 1) + _472 + 32]:
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                            revert with 0, 50
                                    if u + 1 >= mem[_930]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = 0
                                    t = mem[(32 * u + 1) + _930 + 44 len 20]
                                    u = 0
                                    u = u + 1
                                    continue 
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                        revert with 0, 50
                                if u + 1 >= mem[_930]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                                t = mem[(32 * u + 1) + _930 + 44 len 20]
                                u = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                                u = u + 1
                                continue 
                        revert with 0, 50
                    if 1 > !var186002:
                        revert with 0, 17
                    if var190001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if var189004 >= _929:
                        revert with 0, 50
                    if 1 > !var193002:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var176002:
                        revert with 0, 17
                    if var180001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if var179003 >= mem[_472]:
                        revert with 0, 50
                    if mem[(32 * var181001) + _472 + 32]:
                        if 1 > !var189002:
                            revert with 0, 17
                        if var193001 >= mem[ceil32(arg2.length) + 128]:
                            revert with 0, 50
                        # nil
                    else:
                        if var185004 >= _929:
                            revert with 0, 50
                        if 1 > !var189002:
                            revert with 0, 17
                        # nil
            else:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_6))
                staticcall address(_6).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 0 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                if mem[_1440] < mem[ceil32(arg2.length) + 160]:
                    revert with 0, '2'
                if 0 >= _929:
                    revert with 0, 50
                if 0 >= mem[ceil32(arg2.length) + 128]:
                    revert with 0, 50
                _1495 = mem[ceil32(arg2.length) + 160]
                mem[mem[64] + 4] = mem[_930 + 44 len 20]
                mem[mem[64] + 36] = _1495
                require ext_code.size(address(_6))
                call address(_6).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1495
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1508 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1508] == bool(mem[_1508])
                if var169001 < 1:
                    revert with 0, 17
                if var173002 >= var173001:
                if var175001 >= mem[_472]:
                    revert with 0, 50
                if mem[(32 * var177001) + _472 + 32]:
                    if var181003 >= mem[_472]:
                        revert with 0, 50
                    if not mem[(32 * var183001) + _472 + 32]:
                        if var187004 < _929:
                            if 1 > !var191002:
                                revert with 0, 17
                            idx = var193003 + 1
                            s = var193007
                            t = var193009
                            u = var193011
                            u = var193012
                            while idx < _929:
                                _9487 = mem[(32 * idx) + _930 + 32]
                                _9499 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_9499 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_9499 + 36] = s
                                mem[_9499 + 68] = 0
                                mem[_9499 + 100] = address(_9487)
                                mem[_9499 + 132] = 128
                                mem[_9499 + 164] = mem[_9499]
                                idx = 0
                                while idx < mem[_9499]:
                                    mem[idx + _9499 + 196] = mem[idx + _9499 + 32]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_9499]) > mem[_9499]:
                                    mem[_9499 + mem[_9499] + 196] = 0
                                require ext_code.size(t)
                                call t.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args s, 0, address(_9487), 128, mem[_9499], mem[_9499 + 196 len ceil32(mem[_9499])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if u == -1:
                                    revert with 0, 17
                                if mem[_930] < 1:
                                    revert with 0, 17
                                if u + 1 >= mem[_930] - 1:
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if u + 1 >= mem[_472]:
                                        revert with 0, 50
                                    if mem[(32 * u + 1) + _472 + 32]:
                                        if 1 > !(u + 1):
                                            revert with 0, 17
                                        if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                            revert with 0, 50
                                    if u + 1 >= mem[_930]:
                                        revert with 0, 50
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    idx = u + 2
                                    s = 0
                                    t = mem[(32 * u + 1) + _930 + 44 len 20]
                                    u = 0
                                    u = u + 1
                                    continue 
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                    revert with 0, 50
                                if u + 1 >= mem[_472]:
                                    revert with 0, 50
                                if mem[(32 * u + 1) + _472 + 32]:
                                    if 1 > !(u + 1):
                                        revert with 0, 17
                                    if u + 2 >= mem[ceil32(arg2.length) + 128]:
                                        revert with 0, 50
                                if u + 1 >= mem[_930]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                idx = u + 2
                                s = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                                t = mem[(32 * u + 1) + _930 + 44 len 20]
                                u = mem[(32 * u + 2) + ceil32(arg2.length) + 160]
                                u = u + 1
                                continue 
                        revert with 0, 50
                    if 1 > !var191002:
                        revert with 0, 17
                    if var195001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if var194004 >= _929:
                        revert with 0, 50
                    if 1 > !var198002:
                        revert with 0, 17
                    # nil
                else:
                    if 1 > !var181002:
                        revert with 0, 17
                    if var185001 >= mem[ceil32(arg2.length) + 128]:
                        revert with 0, 50
                    if var184003 >= mem[_472]:
                        revert with 0, 50
                    if mem[(32 * var186001) + _472 + 32]:
                        if 1 > !var194002:
                            revert with 0, 17
                        if var198001 >= mem[ceil32(arg2.length) + 128]:
                            revert with 0, 50
                        # nil
                    else:
                        if var190004 >= _929:
                            revert with 0, 50
                        if 1 > !var194002:
                            revert with 0, 17
                        # nil
}



}
