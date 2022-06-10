contract main {




// =====================  Runtime code  =====================


#
#  - sub_00001669(?)
#  - sub_0000c539(?)
#  - sub_0000dcd1(?)
#  - sub_0000ec04(?)
#  - _fallback()
#
function sub_00004047(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x9d39583c1b847b5eb61627f25f87ed29 != msg.sender:
        revert with 0, 'o'
    call address(arg1).burn(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_0000ae74(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x9d39583c1b847b5eb61627f25f87ed29 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(address(arg1))
    call address(arg1).skim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0000d303(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if 0x9d39583c1b847b5eb61627f25f87ed29 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(address(arg1))
    call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_00004fab(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x9d39583c1b847b5eb61627f25f87ed29 != msg.sender:
        revert with 0, 'o'
    if not address(arg1):
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 1:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if ext_call.return_data[0] < 1:
                revert with 'NH{q', 17
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - 1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    else:
        if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 1:
                revert with 'NH{q', 17
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(msg.sender), ext_call.return_data[0] - 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 32 != return_data.size:
                if return_data.size:
                    revert with 0, 'tf'
            else:
                mem[0 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not mem[0]:
                    revert with 0, 'tf'
        else:
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 1:
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[0] < 1:
                    revert with 'NH{q', 17
                require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 arg1) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] - 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
}

function sub_96919a5a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[4]
    t = cd[36]
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        _1662 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_1662 + 32] = 0xdfe168100000000000000000000000000000000000000000000000000000000 or mem[_1662 + 36 len 28]
        u = 0
        while u < mem[_1662]:
            mem[u + _1662 + 36] = mem[u + _1662 + 32]
            u = u + 32
            continue 
        if ceil32(mem[_1662]) <= mem[_1662]:
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_1662] + _1662 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    _3328 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_3328 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_3328 + 36 len 28]
                    u = 0
                    while u < mem[_3328]:
                        mem[u + _3328 + 36] = mem[u + _3328 + 32]
                        u = u + 32
                        continue 
                    if ceil32(mem[_3328]) <= mem[_3328]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_3328] + _3328 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'l'
                            require mem[96] >= 64
                            _5044 = mem[128]
                            _5045 = mem[160]
                            if not address(s):
                                if mem[128] <= 0:
                                    revert with 0, 'l'
                                if mem[160] <= 0:
                                    revert with 0, 'l'
                                if not (1000 * mem[128]) + (997 * t):
                                    revert with 'NH{q', 18
                                if address(s):
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                    continue 
                                _5492 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_5492 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5492 + 36 len 28]
                                s = 0
                                while s < mem[_5492]:
                                    mem[s + _5492 + 36] = mem[s + _5492 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_5492]) <= mem[_5492]:
                                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len mem[_5492] + _5492 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = 0
                                            t = 997 * t * _5045 / (1000 * _5044) + (997 * t)
                                            continue 
                                        require mem[96] >= 32
                                        require mem[128] == mem[140 len 20]
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = mem[128]
                                        t = 997 * t * _5045 / (1000 * _5044) + (997 * t)
                                        continue 
                                    _6772 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_6772] = return_data.size
                                    mem[_6772 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _5045 / (1000 * _5044) + (997 * t)
                                        continue 
                                    require return_data.size >= 32
                                    require mem[_6772 + 32] == mem[_6772 + 44 len 20]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = mem[_6772 + 32]
                                    t = 997 * t * _5045 / (1000 * _5044) + (997 * t)
                                    continue 
                                mem[mem[_5492] + _5492 + 36] = 0
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_5492] + _5492 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _5045 / (1000 * _5044) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _5045 / (1000 * _5044) + (997 * t)
                                    continue 
                                _6773 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6773] = return_data.size
                                mem[_6773 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5045 / (1000 * _5044) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_6773 + 32] == mem[_6773 + 44 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_6773 + 32]
                                t = 997 * t * _5045 / (1000 * _5044) + (997 * t)
                                continue 
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if not (1000 * mem[160]) + (997 * t):
                                revert with 'NH{q', 18
                            if address(s):
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                                continue 
                            _5589 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_5589 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5589 + 36 len 28]
                            s = 0
                            while s < mem[_5589]:
                                mem[s + _5589 + 36] = mem[s + _5589 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_5589]) <= mem[_5589]:
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_5589] + _5589 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _5044 / (1000 * _5045) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _5044 / (1000 * _5045) + (997 * t)
                                    continue 
                                _6774 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6774] = return_data.size
                                mem[_6774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5044 / (1000 * _5045) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_6774 + 32] == mem[_6774 + 44 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_6774 + 32]
                                t = 997 * t * _5044 / (1000 * _5045) + (997 * t)
                                continue 
                            mem[mem[_5589] + _5589 + 36] = 0
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5589] + _5589 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5044 / (1000 * _5045) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5044 / (1000 * _5045) + (997 * t)
                                continue 
                            _6775 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6775] = return_data.size
                            mem[_6775 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5044 / (1000 * _5045) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6775 + 32] == mem[_6775 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6775 + 32]
                            t = 997 * t * _5044 / (1000 * _5045) + (997 * t)
                            continue 
                        _4996 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4996] = return_data.size
                        mem[_4996 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'l'
                        require return_data.size >= 64
                        _5046 = mem[_4996 + 32]
                        _5047 = mem[_4996 + 64]
                        if not address(s):
                            if mem[_4996 + 32] <= 0:
                                revert with 0, 'l'
                            if mem[_4996 + 64] <= 0:
                                revert with 0, 'l'
                            if not (1000 * mem[_4996 + 32]) + (997 * t):
                                revert with 'NH{q', 18
                            if address(s):
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[_4996 + 64] / (1000 * mem[_4996 + 32]) + (997 * t)
                                continue 
                            _5495 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_5495 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5495 + 36 len 28]
                            s = 0
                            while s < mem[_5495]:
                                mem[s + _5495 + 36] = mem[s + _5495 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_5495]) <= mem[_5495]:
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_5495] + _5495 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _5047 / (1000 * _5046) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _5047 / (1000 * _5046) + (997 * t)
                                    continue 
                                _6776 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6776] = return_data.size
                                mem[_6776 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5047 / (1000 * _5046) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_6776 + 32] == mem[_6776 + 44 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_6776 + 32]
                                t = 997 * t * _5047 / (1000 * _5046) + (997 * t)
                                continue 
                            mem[mem[_5495] + _5495 + 36] = 0
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5495] + _5495 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5047 / (1000 * _5046) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5047 / (1000 * _5046) + (997 * t)
                                continue 
                            _6777 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6777] = return_data.size
                            mem[_6777 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5047 / (1000 * _5046) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6777 + 32] == mem[_6777 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6777 + 32]
                            t = 997 * t * _5047 / (1000 * _5046) + (997 * t)
                            continue 
                        if mem[_4996 + 64] <= 0:
                            revert with 0, 'l'
                        if mem[_4996 + 32] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[_4996 + 64]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[_4996 + 32] / (1000 * mem[_4996 + 64]) + (997 * t)
                            continue 
                        _5593 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5593 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5593 + 36 len 28]
                        s = 0
                        while s < mem[_5593]:
                            mem[s + _5593 + 36] = mem[s + _5593 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5593]) <= mem[_5593]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5593] + _5593 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5046 / (1000 * _5047) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5046 / (1000 * _5047) + (997 * t)
                                continue 
                            _6778 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6778] = return_data.size
                            mem[_6778 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5046 / (1000 * _5047) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6778 + 32] == mem[_6778 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6778 + 32]
                            t = 997 * t * _5046 / (1000 * _5047) + (997 * t)
                            continue 
                        mem[mem[_5593] + _5593 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5593] + _5593 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5046 / (1000 * _5047) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5046 / (1000 * _5047) + (997 * t)
                            continue 
                        _6779 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6779] = return_data.size
                        mem[_6779 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5046 / (1000 * _5047) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6779 + 32] == mem[_6779 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6779 + 32]
                        t = 997 * t * _5046 / (1000 * _5047) + (997 * t)
                        continue 
                    mem[mem[_3328] + _3328 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_3328] + _3328 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'l'
                        require mem[96] >= 64
                        _5048 = mem[128]
                        _5049 = mem[160]
                        if not address(s):
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if not (1000 * mem[128]) + (997 * t):
                                revert with 'NH{q', 18
                            if address(s):
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                continue 
                            _5498 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_5498 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5498 + 36 len 28]
                            s = 0
                            while s < mem[_5498]:
                                mem[s + _5498 + 36] = mem[s + _5498 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_5498]) <= mem[_5498]:
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_5498] + _5498 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _5049 / (1000 * _5048) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _5049 / (1000 * _5048) + (997 * t)
                                    continue 
                                _6780 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6780] = return_data.size
                                mem[_6780 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5049 / (1000 * _5048) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_6780 + 32] == mem[_6780 + 44 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_6780 + 32]
                                t = 997 * t * _5049 / (1000 * _5048) + (997 * t)
                                continue 
                            mem[mem[_5498] + _5498 + 36] = 0
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5498] + _5498 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5049 / (1000 * _5048) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5049 / (1000 * _5048) + (997 * t)
                                continue 
                            _6781 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6781] = return_data.size
                            mem[_6781 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5049 / (1000 * _5048) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6781 + 32] == mem[_6781 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6781 + 32]
                            t = 997 * t * _5049 / (1000 * _5048) + (997 * t)
                            continue 
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[160]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                            continue 
                        _5597 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5597 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5597 + 36 len 28]
                        s = 0
                        while s < mem[_5597]:
                            mem[s + _5597 + 36] = mem[s + _5597 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5597]) <= mem[_5597]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5597] + _5597 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5048 / (1000 * _5049) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5048 / (1000 * _5049) + (997 * t)
                                continue 
                            _6782 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6782] = return_data.size
                            mem[_6782 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5048 / (1000 * _5049) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6782 + 32] == mem[_6782 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6782 + 32]
                            t = 997 * t * _5048 / (1000 * _5049) + (997 * t)
                            continue 
                        mem[mem[_5597] + _5597 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5597] + _5597 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5048 / (1000 * _5049) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5048 / (1000 * _5049) + (997 * t)
                            continue 
                        _6783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6783] = return_data.size
                        mem[_6783 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5048 / (1000 * _5049) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6783 + 32] == mem[_6783 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6783 + 32]
                        t = 997 * t * _5048 / (1000 * _5049) + (997 * t)
                        continue 
                    _4997 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4997] = return_data.size
                    mem[_4997 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'l'
                    require return_data.size >= 64
                    _5050 = mem[_4997 + 32]
                    _5051 = mem[_4997 + 64]
                    if not address(s):
                        if mem[_4997 + 32] <= 0:
                            revert with 0, 'l'
                        if mem[_4997 + 64] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[_4997 + 32]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[_4997 + 64] / (1000 * mem[_4997 + 32]) + (997 * t)
                            continue 
                        _5501 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5501 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5501 + 36 len 28]
                        s = 0
                        while s < mem[_5501]:
                            mem[s + _5501 + 36] = mem[s + _5501 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5501]) <= mem[_5501]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5501] + _5501 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5051 / (1000 * _5050) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5051 / (1000 * _5050) + (997 * t)
                                continue 
                            _6784 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6784] = return_data.size
                            mem[_6784 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5051 / (1000 * _5050) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6784 + 32] == mem[_6784 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6784 + 32]
                            t = 997 * t * _5051 / (1000 * _5050) + (997 * t)
                            continue 
                        mem[mem[_5501] + _5501 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5501] + _5501 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5051 / (1000 * _5050) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5051 / (1000 * _5050) + (997 * t)
                            continue 
                        _6785 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6785] = return_data.size
                        mem[_6785 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5051 / (1000 * _5050) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6785 + 32] == mem[_6785 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6785 + 32]
                        t = 997 * t * _5051 / (1000 * _5050) + (997 * t)
                        continue 
                    if mem[_4997 + 64] <= 0:
                        revert with 0, 'l'
                    if mem[_4997 + 32] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_4997 + 64]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_4997 + 32] / (1000 * mem[_4997 + 64]) + (997 * t)
                        continue 
                    _5601 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5601 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5601 + 36 len 28]
                    s = 0
                    while s < mem[_5601]:
                        mem[s + _5601 + 36] = mem[s + _5601 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5601]) <= mem[_5601]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5601] + _5601 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5050 / (1000 * _5051) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5050 / (1000 * _5051) + (997 * t)
                            continue 
                        _6786 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6786] = return_data.size
                        mem[_6786 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5050 / (1000 * _5051) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6786 + 32] == mem[_6786 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6786 + 32]
                        t = 997 * t * _5050 / (1000 * _5051) + (997 * t)
                        continue 
                    mem[mem[_5601] + _5601 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5601] + _5601 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5050 / (1000 * _5051) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5050 / (1000 * _5051) + (997 * t)
                        continue 
                    _6787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6787] = return_data.size
                    mem[_6787 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5050 / (1000 * _5051) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6787 + 32] == mem[_6787 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6787 + 32]
                    t = 997 * t * _5050 / (1000 * _5051) + (997 * t)
                    continue 
                require mem[96] >= 32
                _3331 = mem[128]
                require mem[128] == mem[140 len 20]
                _3354 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_3354 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_3354 + 36 len 28]
                u = 0
                while u < mem[_3354]:
                    mem[u + _3354 + 36] = mem[u + _3354 + 32]
                    u = u + 32
                    continue 
                if ceil32(mem[_3354]) <= mem[_3354]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_3354] + _3354 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'l'
                        require mem[96] >= 64
                        _5052 = mem[128]
                        _5053 = mem[160]
                        if address(s) == address(_3331):
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if not (1000 * mem[128]) + (997 * t):
                                revert with 'NH{q', 18
                            if address(s) != address(_3331):
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = _3331
                                t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                continue 
                            _5504 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_5504 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5504 + 36 len 28]
                            s = 0
                            while s < mem[_5504]:
                                mem[s + _5504 + 36] = mem[s + _5504 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_5504]) <= mem[_5504]:
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_5504] + _5504 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _5053 / (1000 * _5052) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _5053 / (1000 * _5052) + (997 * t)
                                    continue 
                                _6788 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6788] = return_data.size
                                mem[_6788 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5053 / (1000 * _5052) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_6788 + 32] == mem[_6788 + 44 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_6788 + 32]
                                t = 997 * t * _5053 / (1000 * _5052) + (997 * t)
                                continue 
                            mem[mem[_5504] + _5504 + 36] = 0
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5504] + _5504 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5053 / (1000 * _5052) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5053 / (1000 * _5052) + (997 * t)
                                continue 
                            _6789 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6789] = return_data.size
                            mem[_6789 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5053 / (1000 * _5052) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6789 + 32] == mem[_6789 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6789 + 32]
                            t = 997 * t * _5053 / (1000 * _5052) + (997 * t)
                            continue 
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[160]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s) != address(_3331):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _3331
                            t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                            continue 
                        _5605 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5605 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5605 + 36 len 28]
                        s = 0
                        while s < mem[_5605]:
                            mem[s + _5605 + 36] = mem[s + _5605 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5605]) <= mem[_5605]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5605] + _5605 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5052 / (1000 * _5053) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5052 / (1000 * _5053) + (997 * t)
                                continue 
                            _6790 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6790] = return_data.size
                            mem[_6790 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5052 / (1000 * _5053) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6790 + 32] == mem[_6790 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6790 + 32]
                            t = 997 * t * _5052 / (1000 * _5053) + (997 * t)
                            continue 
                        mem[mem[_5605] + _5605 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5605] + _5605 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5052 / (1000 * _5053) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5052 / (1000 * _5053) + (997 * t)
                            continue 
                        _6791 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6791] = return_data.size
                        mem[_6791 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5052 / (1000 * _5053) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6791 + 32] == mem[_6791 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6791 + 32]
                        t = 997 * t * _5052 / (1000 * _5053) + (997 * t)
                        continue 
                    _4998 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_4998] = return_data.size
                    mem[_4998 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'l'
                    require return_data.size >= 64
                    _5054 = mem[_4998 + 32]
                    _5055 = mem[_4998 + 64]
                    if address(s) == address(_3331):
                        if mem[_4998 + 32] <= 0:
                            revert with 0, 'l'
                        if mem[_4998 + 64] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[_4998 + 32]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s) != address(_3331):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _3331
                            t = 997 * t * mem[_4998 + 64] / (1000 * mem[_4998 + 32]) + (997 * t)
                            continue 
                        _5507 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5507 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5507 + 36 len 28]
                        s = 0
                        while s < mem[_5507]:
                            mem[s + _5507 + 36] = mem[s + _5507 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5507]) <= mem[_5507]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5507] + _5507 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5055 / (1000 * _5054) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5055 / (1000 * _5054) + (997 * t)
                                continue 
                            _6792 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6792] = return_data.size
                            mem[_6792 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5055 / (1000 * _5054) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6792 + 32] == mem[_6792 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6792 + 32]
                            t = 997 * t * _5055 / (1000 * _5054) + (997 * t)
                            continue 
                        mem[mem[_5507] + _5507 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5507] + _5507 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5055 / (1000 * _5054) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5055 / (1000 * _5054) + (997 * t)
                            continue 
                        _6793 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6793] = return_data.size
                        mem[_6793 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5055 / (1000 * _5054) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6793 + 32] == mem[_6793 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6793 + 32]
                        t = 997 * t * _5055 / (1000 * _5054) + (997 * t)
                        continue 
                    if mem[_4998 + 64] <= 0:
                        revert with 0, 'l'
                    if mem[_4998 + 32] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_4998 + 64]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3331):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3331
                        t = 997 * t * mem[_4998 + 32] / (1000 * mem[_4998 + 64]) + (997 * t)
                        continue 
                    _5609 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5609 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5609 + 36 len 28]
                    s = 0
                    while s < mem[_5609]:
                        mem[s + _5609 + 36] = mem[s + _5609 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5609]) <= mem[_5609]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5609] + _5609 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5054 / (1000 * _5055) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5054 / (1000 * _5055) + (997 * t)
                            continue 
                        _6794 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6794] = return_data.size
                        mem[_6794 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5054 / (1000 * _5055) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6794 + 32] == mem[_6794 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6794 + 32]
                        t = 997 * t * _5054 / (1000 * _5055) + (997 * t)
                        continue 
                    mem[mem[_5609] + _5609 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5609] + _5609 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5054 / (1000 * _5055) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5054 / (1000 * _5055) + (997 * t)
                        continue 
                    _6795 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6795] = return_data.size
                    mem[_6795 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5054 / (1000 * _5055) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6795 + 32] == mem[_6795 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6795 + 32]
                    t = 997 * t * _5054 / (1000 * _5055) + (997 * t)
                    continue 
                mem[mem[_3354] + _3354 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_3354] + _3354 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _5056 = mem[128]
                    _5057 = mem[160]
                    if address(s) == address(_3331):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s) != address(_3331):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _3331
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _5510 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5510 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5510 + 36 len 28]
                        s = 0
                        while s < mem[_5510]:
                            mem[s + _5510 + 36] = mem[s + _5510 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5510]) <= mem[_5510]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5510] + _5510 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5057 / (1000 * _5056) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5057 / (1000 * _5056) + (997 * t)
                                continue 
                            _6796 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6796] = return_data.size
                            mem[_6796 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5057 / (1000 * _5056) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6796 + 32] == mem[_6796 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6796 + 32]
                            t = 997 * t * _5057 / (1000 * _5056) + (997 * t)
                            continue 
                        mem[mem[_5510] + _5510 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5510] + _5510 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5057 / (1000 * _5056) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5057 / (1000 * _5056) + (997 * t)
                            continue 
                        _6797 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6797] = return_data.size
                        mem[_6797 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5057 / (1000 * _5056) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6797 + 32] == mem[_6797 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6797 + 32]
                        t = 997 * t * _5057 / (1000 * _5056) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3331):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3331
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _5613 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5613 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5613 + 36 len 28]
                    s = 0
                    while s < mem[_5613]:
                        mem[s + _5613 + 36] = mem[s + _5613 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5613]) <= mem[_5613]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5613] + _5613 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5056 / (1000 * _5057) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5056 / (1000 * _5057) + (997 * t)
                            continue 
                        _6798 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6798] = return_data.size
                        mem[_6798 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5056 / (1000 * _5057) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6798 + 32] == mem[_6798 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6798 + 32]
                        t = 997 * t * _5056 / (1000 * _5057) + (997 * t)
                        continue 
                    mem[mem[_5613] + _5613 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5613] + _5613 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5056 / (1000 * _5057) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5056 / (1000 * _5057) + (997 * t)
                        continue 
                    _6799 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6799] = return_data.size
                    mem[_6799 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5056 / (1000 * _5057) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6799 + 32] == mem[_6799 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6799 + 32]
                    t = 997 * t * _5056 / (1000 * _5057) + (997 * t)
                    continue 
                _4999 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4999] = return_data.size
                mem[_4999 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _5058 = mem[_4999 + 32]
                _5059 = mem[_4999 + 64]
                if address(s) == address(_3331):
                    if mem[_4999 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_4999 + 64] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_4999 + 32]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3331):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3331
                        t = 997 * t * mem[_4999 + 64] / (1000 * mem[_4999 + 32]) + (997 * t)
                        continue 
                    _5513 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5513 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5513 + 36 len 28]
                    s = 0
                    while s < mem[_5513]:
                        mem[s + _5513 + 36] = mem[s + _5513 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5513]) <= mem[_5513]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5513] + _5513 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5059 / (1000 * _5058) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5059 / (1000 * _5058) + (997 * t)
                            continue 
                        _6800 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6800] = return_data.size
                        mem[_6800 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5059 / (1000 * _5058) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6800 + 32] == mem[_6800 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6800 + 32]
                        t = 997 * t * _5059 / (1000 * _5058) + (997 * t)
                        continue 
                    mem[mem[_5513] + _5513 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5513] + _5513 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5059 / (1000 * _5058) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5059 / (1000 * _5058) + (997 * t)
                        continue 
                    _6801 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6801] = return_data.size
                    mem[_6801 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5059 / (1000 * _5058) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6801 + 32] == mem[_6801 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6801 + 32]
                    t = 997 * t * _5059 / (1000 * _5058) + (997 * t)
                    continue 
                if mem[_4999 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_4999 + 32] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_4999 + 64]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3331):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3331
                    t = 997 * t * mem[_4999 + 32] / (1000 * mem[_4999 + 64]) + (997 * t)
                    continue 
                _5617 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5617 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5617 + 36 len 28]
                s = 0
                while s < mem[_5617]:
                    mem[s + _5617 + 36] = mem[s + _5617 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5617]) <= mem[_5617]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5617] + _5617 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5058 / (1000 * _5059) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5058 / (1000 * _5059) + (997 * t)
                        continue 
                    _6802 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6802] = return_data.size
                    mem[_6802 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5058 / (1000 * _5059) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6802 + 32] == mem[_6802 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6802 + 32]
                    t = 997 * t * _5058 / (1000 * _5059) + (997 * t)
                    continue 
                mem[mem[_5617] + _5617 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5617] + _5617 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5058 / (1000 * _5059) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5058 / (1000 * _5059) + (997 * t)
                    continue 
                _6803 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6803] = return_data.size
                mem[_6803 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5058 / (1000 * _5059) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6803 + 32] == mem[_6803 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6803 + 32]
                t = 997 * t * _5058 / (1000 * _5059) + (997 * t)
                continue 
            _3322 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_3322] = return_data.size
            mem[_3322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                _3332 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_3332 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_3332 + 36 len 28]
                u = 0
                while u < mem[_3332]:
                    mem[u + _3332 + 36] = mem[u + _3332 + 32]
                    u = u + 32
                    continue 
                if ceil32(mem[_3332]) <= mem[_3332]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_3332] + _3332 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'l'
                        require mem[96] >= 64
                        _5060 = mem[128]
                        _5061 = mem[160]
                        if not address(s):
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if not (1000 * mem[128]) + (997 * t):
                                revert with 'NH{q', 18
                            if address(s):
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                continue 
                            _5516 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_5516 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5516 + 36 len 28]
                            s = 0
                            while s < mem[_5516]:
                                mem[s + _5516 + 36] = mem[s + _5516 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_5516]) <= mem[_5516]:
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_5516] + _5516 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _5061 / (1000 * _5060) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _5061 / (1000 * _5060) + (997 * t)
                                    continue 
                                _6804 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6804] = return_data.size
                                mem[_6804 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5061 / (1000 * _5060) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_6804 + 32] == mem[_6804 + 44 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_6804 + 32]
                                t = 997 * t * _5061 / (1000 * _5060) + (997 * t)
                                continue 
                            mem[mem[_5516] + _5516 + 36] = 0
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5516] + _5516 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5061 / (1000 * _5060) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5061 / (1000 * _5060) + (997 * t)
                                continue 
                            _6805 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6805] = return_data.size
                            mem[_6805 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5061 / (1000 * _5060) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6805 + 32] == mem[_6805 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6805 + 32]
                            t = 997 * t * _5061 / (1000 * _5060) + (997 * t)
                            continue 
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[160]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                            continue 
                        _5621 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5621 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5621 + 36 len 28]
                        s = 0
                        while s < mem[_5621]:
                            mem[s + _5621 + 36] = mem[s + _5621 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5621]) <= mem[_5621]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5621] + _5621 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5060 / (1000 * _5061) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5060 / (1000 * _5061) + (997 * t)
                                continue 
                            _6806 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6806] = return_data.size
                            mem[_6806 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5060 / (1000 * _5061) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6806 + 32] == mem[_6806 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6806 + 32]
                            t = 997 * t * _5060 / (1000 * _5061) + (997 * t)
                            continue 
                        mem[mem[_5621] + _5621 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5621] + _5621 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5060 / (1000 * _5061) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5060 / (1000 * _5061) + (997 * t)
                            continue 
                        _6807 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6807] = return_data.size
                        mem[_6807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5060 / (1000 * _5061) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6807 + 32] == mem[_6807 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6807 + 32]
                        t = 997 * t * _5060 / (1000 * _5061) + (997 * t)
                        continue 
                    _5000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_5000] = return_data.size
                    mem[_5000 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'l'
                    require return_data.size >= 64
                    _5062 = mem[_5000 + 32]
                    _5063 = mem[_5000 + 64]
                    if not address(s):
                        if mem[_5000 + 32] <= 0:
                            revert with 0, 'l'
                        if mem[_5000 + 64] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[_5000 + 32]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[_5000 + 64] / (1000 * mem[_5000 + 32]) + (997 * t)
                            continue 
                        _5519 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5519 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5519 + 36 len 28]
                        s = 0
                        while s < mem[_5519]:
                            mem[s + _5519 + 36] = mem[s + _5519 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5519]) <= mem[_5519]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5519] + _5519 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5063 / (1000 * _5062) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5063 / (1000 * _5062) + (997 * t)
                                continue 
                            _6808 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6808] = return_data.size
                            mem[_6808 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5063 / (1000 * _5062) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6808 + 32] == mem[_6808 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6808 + 32]
                            t = 997 * t * _5063 / (1000 * _5062) + (997 * t)
                            continue 
                        mem[mem[_5519] + _5519 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5519] + _5519 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5063 / (1000 * _5062) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5063 / (1000 * _5062) + (997 * t)
                            continue 
                        _6809 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6809] = return_data.size
                        mem[_6809 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5063 / (1000 * _5062) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6809 + 32] == mem[_6809 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6809 + 32]
                        t = 997 * t * _5063 / (1000 * _5062) + (997 * t)
                        continue 
                    if mem[_5000 + 64] <= 0:
                        revert with 0, 'l'
                    if mem[_5000 + 32] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_5000 + 64]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_5000 + 32] / (1000 * mem[_5000 + 64]) + (997 * t)
                        continue 
                    _5625 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5625 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5625 + 36 len 28]
                    s = 0
                    while s < mem[_5625]:
                        mem[s + _5625 + 36] = mem[s + _5625 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5625]) <= mem[_5625]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5625] + _5625 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5062 / (1000 * _5063) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5062 / (1000 * _5063) + (997 * t)
                            continue 
                        _6810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6810] = return_data.size
                        mem[_6810 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5062 / (1000 * _5063) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6810 + 32] == mem[_6810 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6810 + 32]
                        t = 997 * t * _5062 / (1000 * _5063) + (997 * t)
                        continue 
                    mem[mem[_5625] + _5625 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5625] + _5625 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5062 / (1000 * _5063) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5062 / (1000 * _5063) + (997 * t)
                        continue 
                    _6811 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6811] = return_data.size
                    mem[_6811 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5062 / (1000 * _5063) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6811 + 32] == mem[_6811 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6811 + 32]
                    t = 997 * t * _5062 / (1000 * _5063) + (997 * t)
                    continue 
                mem[mem[_3332] + _3332 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_3332] + _3332 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _5064 = mem[128]
                    _5065 = mem[160]
                    if not address(s):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _5522 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5522 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5522 + 36 len 28]
                        s = 0
                        while s < mem[_5522]:
                            mem[s + _5522 + 36] = mem[s + _5522 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5522]) <= mem[_5522]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5522] + _5522 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5065 / (1000 * _5064) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5065 / (1000 * _5064) + (997 * t)
                                continue 
                            _6812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6812] = return_data.size
                            mem[_6812 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5065 / (1000 * _5064) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6812 + 32] == mem[_6812 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6812 + 32]
                            t = 997 * t * _5065 / (1000 * _5064) + (997 * t)
                            continue 
                        mem[mem[_5522] + _5522 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5522] + _5522 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5065 / (1000 * _5064) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5065 / (1000 * _5064) + (997 * t)
                            continue 
                        _6813 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6813] = return_data.size
                        mem[_6813 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5065 / (1000 * _5064) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6813 + 32] == mem[_6813 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6813 + 32]
                        t = 997 * t * _5065 / (1000 * _5064) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _5629 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5629 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5629 + 36 len 28]
                    s = 0
                    while s < mem[_5629]:
                        mem[s + _5629 + 36] = mem[s + _5629 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5629]) <= mem[_5629]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5629] + _5629 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5064 / (1000 * _5065) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5064 / (1000 * _5065) + (997 * t)
                            continue 
                        _6814 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6814] = return_data.size
                        mem[_6814 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5064 / (1000 * _5065) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6814 + 32] == mem[_6814 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6814 + 32]
                        t = 997 * t * _5064 / (1000 * _5065) + (997 * t)
                        continue 
                    mem[mem[_5629] + _5629 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5629] + _5629 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5064 / (1000 * _5065) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5064 / (1000 * _5065) + (997 * t)
                        continue 
                    _6815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6815] = return_data.size
                    mem[_6815 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5064 / (1000 * _5065) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6815 + 32] == mem[_6815 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6815 + 32]
                    t = 997 * t * _5064 / (1000 * _5065) + (997 * t)
                    continue 
                _5001 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_5001] = return_data.size
                mem[_5001 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _5066 = mem[_5001 + 32]
                _5067 = mem[_5001 + 64]
                if not address(s):
                    if mem[_5001 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_5001 + 64] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_5001 + 32]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_5001 + 64] / (1000 * mem[_5001 + 32]) + (997 * t)
                        continue 
                    _5525 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5525 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5525 + 36 len 28]
                    s = 0
                    while s < mem[_5525]:
                        mem[s + _5525 + 36] = mem[s + _5525 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5525]) <= mem[_5525]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5525] + _5525 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5067 / (1000 * _5066) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5067 / (1000 * _5066) + (997 * t)
                            continue 
                        _6816 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6816] = return_data.size
                        mem[_6816 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5067 / (1000 * _5066) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6816 + 32] == mem[_6816 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6816 + 32]
                        t = 997 * t * _5067 / (1000 * _5066) + (997 * t)
                        continue 
                    mem[mem[_5525] + _5525 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5525] + _5525 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5067 / (1000 * _5066) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5067 / (1000 * _5066) + (997 * t)
                        continue 
                    _6817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6817] = return_data.size
                    mem[_6817 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5067 / (1000 * _5066) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6817 + 32] == mem[_6817 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6817 + 32]
                    t = 997 * t * _5067 / (1000 * _5066) + (997 * t)
                    continue 
                if mem[_5001 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_5001 + 32] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5001 + 64]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_5001 + 32] / (1000 * mem[_5001 + 64]) + (997 * t)
                    continue 
                _5633 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5633 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5633 + 36 len 28]
                s = 0
                while s < mem[_5633]:
                    mem[s + _5633 + 36] = mem[s + _5633 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5633]) <= mem[_5633]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5633] + _5633 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5066 / (1000 * _5067) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5066 / (1000 * _5067) + (997 * t)
                        continue 
                    _6818 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6818] = return_data.size
                    mem[_6818 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5066 / (1000 * _5067) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6818 + 32] == mem[_6818 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6818 + 32]
                    t = 997 * t * _5066 / (1000 * _5067) + (997 * t)
                    continue 
                mem[mem[_5633] + _5633 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5633] + _5633 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5066 / (1000 * _5067) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5066 / (1000 * _5067) + (997 * t)
                    continue 
                _6819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6819] = return_data.size
                mem[_6819 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5066 / (1000 * _5067) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6819 + 32] == mem[_6819 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6819 + 32]
                t = 997 * t * _5066 / (1000 * _5067) + (997 * t)
                continue 
            require return_data.size >= 32
            _3335 = mem[_3322 + 32]
            require mem[_3322 + 32] == mem[_3322 + 44 len 20]
            _3359 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_3359 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_3359 + 36 len 28]
            u = 0
            while u < mem[_3359]:
                mem[u + _3359 + 36] = mem[u + _3359 + 32]
                u = u + 32
                continue 
            if ceil32(mem[_3359]) <= mem[_3359]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_3359] + _3359 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _5068 = mem[128]
                    _5069 = mem[160]
                    if address(s) == address(_3335):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s) != address(_3335):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _3335
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _5528 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5528 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5528 + 36 len 28]
                        s = 0
                        while s < mem[_5528]:
                            mem[s + _5528 + 36] = mem[s + _5528 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5528]) <= mem[_5528]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5528] + _5528 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5069 / (1000 * _5068) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5069 / (1000 * _5068) + (997 * t)
                                continue 
                            _6820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6820] = return_data.size
                            mem[_6820 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5069 / (1000 * _5068) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6820 + 32] == mem[_6820 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6820 + 32]
                            t = 997 * t * _5069 / (1000 * _5068) + (997 * t)
                            continue 
                        mem[mem[_5528] + _5528 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5528] + _5528 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5069 / (1000 * _5068) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5069 / (1000 * _5068) + (997 * t)
                            continue 
                        _6821 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6821] = return_data.size
                        mem[_6821 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5069 / (1000 * _5068) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6821 + 32] == mem[_6821 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6821 + 32]
                        t = 997 * t * _5069 / (1000 * _5068) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3335):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3335
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _5637 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5637 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5637 + 36 len 28]
                    s = 0
                    while s < mem[_5637]:
                        mem[s + _5637 + 36] = mem[s + _5637 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5637]) <= mem[_5637]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5637] + _5637 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5068 / (1000 * _5069) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5068 / (1000 * _5069) + (997 * t)
                            continue 
                        _6822 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6822] = return_data.size
                        mem[_6822 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5068 / (1000 * _5069) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6822 + 32] == mem[_6822 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6822 + 32]
                        t = 997 * t * _5068 / (1000 * _5069) + (997 * t)
                        continue 
                    mem[mem[_5637] + _5637 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5637] + _5637 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5068 / (1000 * _5069) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5068 / (1000 * _5069) + (997 * t)
                        continue 
                    _6823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6823] = return_data.size
                    mem[_6823 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5068 / (1000 * _5069) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6823 + 32] == mem[_6823 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6823 + 32]
                    t = 997 * t * _5068 / (1000 * _5069) + (997 * t)
                    continue 
                _5002 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_5002] = return_data.size
                mem[_5002 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _5070 = mem[_5002 + 32]
                _5071 = mem[_5002 + 64]
                if address(s) == address(_3335):
                    if mem[_5002 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_5002 + 64] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_5002 + 32]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3335):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3335
                        t = 997 * t * mem[_5002 + 64] / (1000 * mem[_5002 + 32]) + (997 * t)
                        continue 
                    _5531 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5531 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5531 + 36 len 28]
                    s = 0
                    while s < mem[_5531]:
                        mem[s + _5531 + 36] = mem[s + _5531 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5531]) <= mem[_5531]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5531] + _5531 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5071 / (1000 * _5070) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5071 / (1000 * _5070) + (997 * t)
                            continue 
                        _6824 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6824] = return_data.size
                        mem[_6824 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5071 / (1000 * _5070) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6824 + 32] == mem[_6824 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6824 + 32]
                        t = 997 * t * _5071 / (1000 * _5070) + (997 * t)
                        continue 
                    mem[mem[_5531] + _5531 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5531] + _5531 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5071 / (1000 * _5070) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5071 / (1000 * _5070) + (997 * t)
                        continue 
                    _6825 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6825] = return_data.size
                    mem[_6825 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5071 / (1000 * _5070) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6825 + 32] == mem[_6825 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6825 + 32]
                    t = 997 * t * _5071 / (1000 * _5070) + (997 * t)
                    continue 
                if mem[_5002 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_5002 + 32] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5002 + 64]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3335):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3335
                    t = 997 * t * mem[_5002 + 32] / (1000 * mem[_5002 + 64]) + (997 * t)
                    continue 
                _5641 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5641 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5641 + 36 len 28]
                s = 0
                while s < mem[_5641]:
                    mem[s + _5641 + 36] = mem[s + _5641 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5641]) <= mem[_5641]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5641] + _5641 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5070 / (1000 * _5071) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5070 / (1000 * _5071) + (997 * t)
                        continue 
                    _6826 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6826] = return_data.size
                    mem[_6826 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5070 / (1000 * _5071) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6826 + 32] == mem[_6826 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6826 + 32]
                    t = 997 * t * _5070 / (1000 * _5071) + (997 * t)
                    continue 
                mem[mem[_5641] + _5641 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5641] + _5641 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5070 / (1000 * _5071) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5070 / (1000 * _5071) + (997 * t)
                    continue 
                _6827 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6827] = return_data.size
                mem[_6827 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5070 / (1000 * _5071) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6827 + 32] == mem[_6827 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6827 + 32]
                t = 997 * t * _5070 / (1000 * _5071) + (997 * t)
                continue 
            mem[mem[_3359] + _3359 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_3359] + _3359 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _5072 = mem[128]
                _5073 = mem[160]
                if address(s) == address(_3335):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[128]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3335):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3335
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _5534 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5534 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5534 + 36 len 28]
                    s = 0
                    while s < mem[_5534]:
                        mem[s + _5534 + 36] = mem[s + _5534 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5534]) <= mem[_5534]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5534] + _5534 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5073 / (1000 * _5072) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5073 / (1000 * _5072) + (997 * t)
                            continue 
                        _6828 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6828] = return_data.size
                        mem[_6828 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5073 / (1000 * _5072) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6828 + 32] == mem[_6828 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6828 + 32]
                        t = 997 * t * _5073 / (1000 * _5072) + (997 * t)
                        continue 
                    mem[mem[_5534] + _5534 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5534] + _5534 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5073 / (1000 * _5072) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5073 / (1000 * _5072) + (997 * t)
                        continue 
                    _6829 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6829] = return_data.size
                    mem[_6829 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5073 / (1000 * _5072) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6829 + 32] == mem[_6829 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6829 + 32]
                    t = 997 * t * _5073 / (1000 * _5072) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[160]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3335):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3335
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _5645 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5645 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5645 + 36 len 28]
                s = 0
                while s < mem[_5645]:
                    mem[s + _5645 + 36] = mem[s + _5645 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5645]) <= mem[_5645]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5645] + _5645 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5072 / (1000 * _5073) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5072 / (1000 * _5073) + (997 * t)
                        continue 
                    _6830 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6830] = return_data.size
                    mem[_6830 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5072 / (1000 * _5073) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6830 + 32] == mem[_6830 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6830 + 32]
                    t = 997 * t * _5072 / (1000 * _5073) + (997 * t)
                    continue 
                mem[mem[_5645] + _5645 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5645] + _5645 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5072 / (1000 * _5073) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5072 / (1000 * _5073) + (997 * t)
                    continue 
                _6831 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6831] = return_data.size
                mem[_6831 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5072 / (1000 * _5073) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6831 + 32] == mem[_6831 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6831 + 32]
                t = 997 * t * _5072 / (1000 * _5073) + (997 * t)
                continue 
            _5003 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_5003] = return_data.size
            mem[_5003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _5074 = mem[_5003 + 32]
            _5075 = mem[_5003 + 64]
            if address(s) == address(_3335):
                if mem[_5003 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_5003 + 64] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5003 + 32]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3335):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3335
                    t = 997 * t * mem[_5003 + 64] / (1000 * mem[_5003 + 32]) + (997 * t)
                    continue 
                _5537 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5537 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5537 + 36 len 28]
                s = 0
                while s < mem[_5537]:
                    mem[s + _5537 + 36] = mem[s + _5537 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5537]) <= mem[_5537]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5537] + _5537 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5075 / (1000 * _5074) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5075 / (1000 * _5074) + (997 * t)
                        continue 
                    _6832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6832] = return_data.size
                    mem[_6832 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5075 / (1000 * _5074) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6832 + 32] == mem[_6832 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6832 + 32]
                    t = 997 * t * _5075 / (1000 * _5074) + (997 * t)
                    continue 
                mem[mem[_5537] + _5537 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5537] + _5537 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5075 / (1000 * _5074) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5075 / (1000 * _5074) + (997 * t)
                    continue 
                _6833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6833] = return_data.size
                mem[_6833 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5075 / (1000 * _5074) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6833 + 32] == mem[_6833 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6833 + 32]
                t = 997 * t * _5075 / (1000 * _5074) + (997 * t)
                continue 
            if mem[_5003 + 64] <= 0:
                revert with 0, 'l'
            if mem[_5003 + 32] <= 0:
                revert with 0, 'l'
            if not (1000 * mem[_5003 + 64]) + (997 * t):
                revert with 'NH{q', 18
            if address(s) != address(_3335):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _3335
                t = 997 * t * mem[_5003 + 32] / (1000 * mem[_5003 + 64]) + (997 * t)
                continue 
            _5649 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5649 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5649 + 36 len 28]
            s = 0
            while s < mem[_5649]:
                mem[s + _5649 + 36] = mem[s + _5649 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_5649]) <= mem[_5649]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5649] + _5649 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5074 / (1000 * _5075) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5074 / (1000 * _5075) + (997 * t)
                    continue 
                _6834 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6834] = return_data.size
                mem[_6834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5074 / (1000 * _5075) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6834 + 32] == mem[_6834 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6834 + 32]
                t = 997 * t * _5074 / (1000 * _5075) + (997 * t)
                continue 
            mem[mem[_5649] + _5649 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5649] + _5649 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5074 / (1000 * _5075) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _5074 / (1000 * _5075) + (997 * t)
                continue 
            _6835 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6835] = return_data.size
            mem[_6835 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * _5074 / (1000 * _5075) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_6835 + 32] == mem[_6835 + 44 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_6835 + 32]
            t = 997 * t * _5074 / (1000 * _5075) + (997 * t)
            continue 
        mem[mem[_1662] + _1662 + 36] = 0
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len mem[_1662] + _1662 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                _3336 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_3336 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_3336 + 36 len 28]
                u = 0
                while u < mem[_3336]:
                    mem[u + _3336 + 36] = mem[u + _3336 + 32]
                    u = u + 32
                    continue 
                if ceil32(mem[_3336]) <= mem[_3336]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_3336] + _3336 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'l'
                        require mem[96] >= 64
                        _5076 = mem[128]
                        _5077 = mem[160]
                        if not address(s):
                            if mem[128] <= 0:
                                revert with 0, 'l'
                            if mem[160] <= 0:
                                revert with 0, 'l'
                            if not (1000 * mem[128]) + (997 * t):
                                revert with 'NH{q', 18
                            if address(s):
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                                continue 
                            _5540 = mem[64]
                            mem[mem[64]] = 4
                            mem[64] = mem[64] + 36
                            mem[_5540 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5540 + 36 len 28]
                            s = 0
                            while s < mem[_5540]:
                                mem[s + _5540 + 36] = mem[s + _5540 + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_5540]) <= mem[_5540]:
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len mem[_5540] + _5540 + -mem[64] + 32]
                                if not return_data.size:
                                    if not ext_call.success:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = 0
                                        t = 997 * t * _5077 / (1000 * _5076) + (997 * t)
                                        continue 
                                    require mem[96] >= 32
                                    require mem[128] == mem[140 len 20]
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = mem[128]
                                    t = 997 * t * _5077 / (1000 * _5076) + (997 * t)
                                    continue 
                                _6836 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6836] = return_data.size
                                mem[_6836 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5077 / (1000 * _5076) + (997 * t)
                                    continue 
                                require return_data.size >= 32
                                require mem[_6836 + 32] == mem[_6836 + 44 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[_6836 + 32]
                                t = 997 * t * _5077 / (1000 * _5076) + (997 * t)
                                continue 
                            mem[mem[_5540] + _5540 + 36] = 0
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5540] + _5540 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5077 / (1000 * _5076) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5077 / (1000 * _5076) + (997 * t)
                                continue 
                            _6837 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6837] = return_data.size
                            mem[_6837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5077 / (1000 * _5076) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6837 + 32] == mem[_6837 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6837 + 32]
                            t = 997 * t * _5077 / (1000 * _5076) + (997 * t)
                            continue 
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[160]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                            continue 
                        _5653 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5653 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5653 + 36 len 28]
                        s = 0
                        while s < mem[_5653]:
                            mem[s + _5653 + 36] = mem[s + _5653 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5653]) <= mem[_5653]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5653] + _5653 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5076 / (1000 * _5077) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5076 / (1000 * _5077) + (997 * t)
                                continue 
                            _6838 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6838] = return_data.size
                            mem[_6838 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5076 / (1000 * _5077) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6838 + 32] == mem[_6838 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6838 + 32]
                            t = 997 * t * _5076 / (1000 * _5077) + (997 * t)
                            continue 
                        mem[mem[_5653] + _5653 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5653] + _5653 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5076 / (1000 * _5077) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5076 / (1000 * _5077) + (997 * t)
                            continue 
                        _6839 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6839] = return_data.size
                        mem[_6839 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5076 / (1000 * _5077) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6839 + 32] == mem[_6839 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6839 + 32]
                        t = 997 * t * _5076 / (1000 * _5077) + (997 * t)
                        continue 
                    _5004 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_5004] = return_data.size
                    mem[_5004 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'l'
                    require return_data.size >= 64
                    _5078 = mem[_5004 + 32]
                    _5079 = mem[_5004 + 64]
                    if not address(s):
                        if mem[_5004 + 32] <= 0:
                            revert with 0, 'l'
                        if mem[_5004 + 64] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[_5004 + 32]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[_5004 + 64] / (1000 * mem[_5004 + 32]) + (997 * t)
                            continue 
                        _5543 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5543 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5543 + 36 len 28]
                        s = 0
                        while s < mem[_5543]:
                            mem[s + _5543 + 36] = mem[s + _5543 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5543]) <= mem[_5543]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5543] + _5543 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5079 / (1000 * _5078) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5079 / (1000 * _5078) + (997 * t)
                                continue 
                            _6840 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6840] = return_data.size
                            mem[_6840 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5079 / (1000 * _5078) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6840 + 32] == mem[_6840 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6840 + 32]
                            t = 997 * t * _5079 / (1000 * _5078) + (997 * t)
                            continue 
                        mem[mem[_5543] + _5543 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5543] + _5543 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5079 / (1000 * _5078) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5079 / (1000 * _5078) + (997 * t)
                            continue 
                        _6841 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6841] = return_data.size
                        mem[_6841 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5079 / (1000 * _5078) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6841 + 32] == mem[_6841 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6841 + 32]
                        t = 997 * t * _5079 / (1000 * _5078) + (997 * t)
                        continue 
                    if mem[_5004 + 64] <= 0:
                        revert with 0, 'l'
                    if mem[_5004 + 32] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_5004 + 64]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_5004 + 32] / (1000 * mem[_5004 + 64]) + (997 * t)
                        continue 
                    _5657 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5657 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5657 + 36 len 28]
                    s = 0
                    while s < mem[_5657]:
                        mem[s + _5657 + 36] = mem[s + _5657 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5657]) <= mem[_5657]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5657] + _5657 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5078 / (1000 * _5079) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5078 / (1000 * _5079) + (997 * t)
                            continue 
                        _6842 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6842] = return_data.size
                        mem[_6842 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5078 / (1000 * _5079) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6842 + 32] == mem[_6842 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6842 + 32]
                        t = 997 * t * _5078 / (1000 * _5079) + (997 * t)
                        continue 
                    mem[mem[_5657] + _5657 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5657] + _5657 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5078 / (1000 * _5079) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5078 / (1000 * _5079) + (997 * t)
                        continue 
                    _6843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6843] = return_data.size
                    mem[_6843 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5078 / (1000 * _5079) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6843 + 32] == mem[_6843 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6843 + 32]
                    t = 997 * t * _5078 / (1000 * _5079) + (997 * t)
                    continue 
                mem[mem[_3336] + _3336 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_3336] + _3336 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _5080 = mem[128]
                    _5081 = mem[160]
                    if not address(s):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _5546 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5546 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5546 + 36 len 28]
                        s = 0
                        while s < mem[_5546]:
                            mem[s + _5546 + 36] = mem[s + _5546 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5546]) <= mem[_5546]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5546] + _5546 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5081 / (1000 * _5080) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5081 / (1000 * _5080) + (997 * t)
                                continue 
                            _6844 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6844] = return_data.size
                            mem[_6844 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5081 / (1000 * _5080) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6844 + 32] == mem[_6844 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6844 + 32]
                            t = 997 * t * _5081 / (1000 * _5080) + (997 * t)
                            continue 
                        mem[mem[_5546] + _5546 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5546] + _5546 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5081 / (1000 * _5080) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5081 / (1000 * _5080) + (997 * t)
                            continue 
                        _6845 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6845] = return_data.size
                        mem[_6845 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5081 / (1000 * _5080) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6845 + 32] == mem[_6845 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6845 + 32]
                        t = 997 * t * _5081 / (1000 * _5080) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _5661 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5661 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5661 + 36 len 28]
                    s = 0
                    while s < mem[_5661]:
                        mem[s + _5661 + 36] = mem[s + _5661 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5661]) <= mem[_5661]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5661] + _5661 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5080 / (1000 * _5081) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5080 / (1000 * _5081) + (997 * t)
                            continue 
                        _6846 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6846] = return_data.size
                        mem[_6846 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5080 / (1000 * _5081) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6846 + 32] == mem[_6846 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6846 + 32]
                        t = 997 * t * _5080 / (1000 * _5081) + (997 * t)
                        continue 
                    mem[mem[_5661] + _5661 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5661] + _5661 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5080 / (1000 * _5081) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5080 / (1000 * _5081) + (997 * t)
                        continue 
                    _6847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6847] = return_data.size
                    mem[_6847 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5080 / (1000 * _5081) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6847 + 32] == mem[_6847 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6847 + 32]
                    t = 997 * t * _5080 / (1000 * _5081) + (997 * t)
                    continue 
                _5005 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_5005] = return_data.size
                mem[_5005 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _5082 = mem[_5005 + 32]
                _5083 = mem[_5005 + 64]
                if not address(s):
                    if mem[_5005 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_5005 + 64] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_5005 + 32]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_5005 + 64] / (1000 * mem[_5005 + 32]) + (997 * t)
                        continue 
                    _5549 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5549 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5549 + 36 len 28]
                    s = 0
                    while s < mem[_5549]:
                        mem[s + _5549 + 36] = mem[s + _5549 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5549]) <= mem[_5549]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5549] + _5549 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5083 / (1000 * _5082) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5083 / (1000 * _5082) + (997 * t)
                            continue 
                        _6848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6848] = return_data.size
                        mem[_6848 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5083 / (1000 * _5082) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6848 + 32] == mem[_6848 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6848 + 32]
                        t = 997 * t * _5083 / (1000 * _5082) + (997 * t)
                        continue 
                    mem[mem[_5549] + _5549 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5549] + _5549 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5083 / (1000 * _5082) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5083 / (1000 * _5082) + (997 * t)
                        continue 
                    _6849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6849] = return_data.size
                    mem[_6849 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5083 / (1000 * _5082) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6849 + 32] == mem[_6849 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6849 + 32]
                    t = 997 * t * _5083 / (1000 * _5082) + (997 * t)
                    continue 
                if mem[_5005 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_5005 + 32] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5005 + 64]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_5005 + 32] / (1000 * mem[_5005 + 64]) + (997 * t)
                    continue 
                _5665 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5665 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5665 + 36 len 28]
                s = 0
                while s < mem[_5665]:
                    mem[s + _5665 + 36] = mem[s + _5665 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5665]) <= mem[_5665]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5665] + _5665 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5082 / (1000 * _5083) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5082 / (1000 * _5083) + (997 * t)
                        continue 
                    _6850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6850] = return_data.size
                    mem[_6850 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5082 / (1000 * _5083) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6850 + 32] == mem[_6850 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6850 + 32]
                    t = 997 * t * _5082 / (1000 * _5083) + (997 * t)
                    continue 
                mem[mem[_5665] + _5665 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5665] + _5665 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5082 / (1000 * _5083) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5082 / (1000 * _5083) + (997 * t)
                    continue 
                _6851 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6851] = return_data.size
                mem[_6851 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5082 / (1000 * _5083) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6851 + 32] == mem[_6851 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6851 + 32]
                t = 997 * t * _5082 / (1000 * _5083) + (997 * t)
                continue 
            require mem[96] >= 32
            _3339 = mem[128]
            require mem[128] == mem[140 len 20]
            _3364 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_3364 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_3364 + 36 len 28]
            u = 0
            while u < mem[_3364]:
                mem[u + _3364 + 36] = mem[u + _3364 + 32]
                u = u + 32
                continue 
            if ceil32(mem[_3364]) <= mem[_3364]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_3364] + _3364 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _5084 = mem[128]
                    _5085 = mem[160]
                    if address(s) == address(_3339):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s) != address(_3339):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = _3339
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _5552 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5552 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5552 + 36 len 28]
                        s = 0
                        while s < mem[_5552]:
                            mem[s + _5552 + 36] = mem[s + _5552 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5552]) <= mem[_5552]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5552] + _5552 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5085 / (1000 * _5084) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5085 / (1000 * _5084) + (997 * t)
                                continue 
                            _6852 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6852] = return_data.size
                            mem[_6852 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5085 / (1000 * _5084) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6852 + 32] == mem[_6852 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6852 + 32]
                            t = 997 * t * _5085 / (1000 * _5084) + (997 * t)
                            continue 
                        mem[mem[_5552] + _5552 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5552] + _5552 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5085 / (1000 * _5084) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5085 / (1000 * _5084) + (997 * t)
                            continue 
                        _6853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6853] = return_data.size
                        mem[_6853 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5085 / (1000 * _5084) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6853 + 32] == mem[_6853 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6853 + 32]
                        t = 997 * t * _5085 / (1000 * _5084) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3339):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3339
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _5669 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5669 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5669 + 36 len 28]
                    s = 0
                    while s < mem[_5669]:
                        mem[s + _5669 + 36] = mem[s + _5669 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5669]) <= mem[_5669]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5669] + _5669 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5084 / (1000 * _5085) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5084 / (1000 * _5085) + (997 * t)
                            continue 
                        _6854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6854] = return_data.size
                        mem[_6854 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5084 / (1000 * _5085) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6854 + 32] == mem[_6854 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6854 + 32]
                        t = 997 * t * _5084 / (1000 * _5085) + (997 * t)
                        continue 
                    mem[mem[_5669] + _5669 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5669] + _5669 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5084 / (1000 * _5085) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5084 / (1000 * _5085) + (997 * t)
                        continue 
                    _6855 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6855] = return_data.size
                    mem[_6855 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5084 / (1000 * _5085) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6855 + 32] == mem[_6855 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6855 + 32]
                    t = 997 * t * _5084 / (1000 * _5085) + (997 * t)
                    continue 
                _5006 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_5006] = return_data.size
                mem[_5006 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _5086 = mem[_5006 + 32]
                _5087 = mem[_5006 + 64]
                if address(s) == address(_3339):
                    if mem[_5006 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_5006 + 64] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_5006 + 32]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3339):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3339
                        t = 997 * t * mem[_5006 + 64] / (1000 * mem[_5006 + 32]) + (997 * t)
                        continue 
                    _5555 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5555 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5555 + 36 len 28]
                    s = 0
                    while s < mem[_5555]:
                        mem[s + _5555 + 36] = mem[s + _5555 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5555]) <= mem[_5555]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5555] + _5555 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5087 / (1000 * _5086) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5087 / (1000 * _5086) + (997 * t)
                            continue 
                        _6856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6856] = return_data.size
                        mem[_6856 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5087 / (1000 * _5086) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6856 + 32] == mem[_6856 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6856 + 32]
                        t = 997 * t * _5087 / (1000 * _5086) + (997 * t)
                        continue 
                    mem[mem[_5555] + _5555 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5555] + _5555 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5087 / (1000 * _5086) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5087 / (1000 * _5086) + (997 * t)
                        continue 
                    _6857 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6857] = return_data.size
                    mem[_6857 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5087 / (1000 * _5086) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6857 + 32] == mem[_6857 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6857 + 32]
                    t = 997 * t * _5087 / (1000 * _5086) + (997 * t)
                    continue 
                if mem[_5006 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_5006 + 32] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5006 + 64]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3339):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3339
                    t = 997 * t * mem[_5006 + 32] / (1000 * mem[_5006 + 64]) + (997 * t)
                    continue 
                _5673 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5673 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5673 + 36 len 28]
                s = 0
                while s < mem[_5673]:
                    mem[s + _5673 + 36] = mem[s + _5673 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5673]) <= mem[_5673]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5673] + _5673 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5086 / (1000 * _5087) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5086 / (1000 * _5087) + (997 * t)
                        continue 
                    _6858 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6858] = return_data.size
                    mem[_6858 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5086 / (1000 * _5087) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6858 + 32] == mem[_6858 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6858 + 32]
                    t = 997 * t * _5086 / (1000 * _5087) + (997 * t)
                    continue 
                mem[mem[_5673] + _5673 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5673] + _5673 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5086 / (1000 * _5087) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5086 / (1000 * _5087) + (997 * t)
                    continue 
                _6859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6859] = return_data.size
                mem[_6859 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5086 / (1000 * _5087) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6859 + 32] == mem[_6859 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6859 + 32]
                t = 997 * t * _5086 / (1000 * _5087) + (997 * t)
                continue 
            mem[mem[_3364] + _3364 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_3364] + _3364 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _5088 = mem[128]
                _5089 = mem[160]
                if address(s) == address(_3339):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[128]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3339):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3339
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _5558 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5558 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5558 + 36 len 28]
                    s = 0
                    while s < mem[_5558]:
                        mem[s + _5558 + 36] = mem[s + _5558 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5558]) <= mem[_5558]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5558] + _5558 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5089 / (1000 * _5088) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5089 / (1000 * _5088) + (997 * t)
                            continue 
                        _6860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6860] = return_data.size
                        mem[_6860 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5089 / (1000 * _5088) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6860 + 32] == mem[_6860 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6860 + 32]
                        t = 997 * t * _5089 / (1000 * _5088) + (997 * t)
                        continue 
                    mem[mem[_5558] + _5558 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5558] + _5558 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5089 / (1000 * _5088) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5089 / (1000 * _5088) + (997 * t)
                        continue 
                    _6861 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6861] = return_data.size
                    mem[_6861 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5089 / (1000 * _5088) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6861 + 32] == mem[_6861 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6861 + 32]
                    t = 997 * t * _5089 / (1000 * _5088) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[160]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3339):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3339
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _5677 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5677 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5677 + 36 len 28]
                s = 0
                while s < mem[_5677]:
                    mem[s + _5677 + 36] = mem[s + _5677 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5677]) <= mem[_5677]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5677] + _5677 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5088 / (1000 * _5089) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5088 / (1000 * _5089) + (997 * t)
                        continue 
                    _6862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6862] = return_data.size
                    mem[_6862 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5088 / (1000 * _5089) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6862 + 32] == mem[_6862 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6862 + 32]
                    t = 997 * t * _5088 / (1000 * _5089) + (997 * t)
                    continue 
                mem[mem[_5677] + _5677 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5677] + _5677 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5088 / (1000 * _5089) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5088 / (1000 * _5089) + (997 * t)
                    continue 
                _6863 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6863] = return_data.size
                mem[_6863 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5088 / (1000 * _5089) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6863 + 32] == mem[_6863 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6863 + 32]
                t = 997 * t * _5088 / (1000 * _5089) + (997 * t)
                continue 
            _5007 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_5007] = return_data.size
            mem[_5007 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _5090 = mem[_5007 + 32]
            _5091 = mem[_5007 + 64]
            if address(s) == address(_3339):
                if mem[_5007 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_5007 + 64] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5007 + 32]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3339):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3339
                    t = 997 * t * mem[_5007 + 64] / (1000 * mem[_5007 + 32]) + (997 * t)
                    continue 
                _5561 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5561 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5561 + 36 len 28]
                s = 0
                while s < mem[_5561]:
                    mem[s + _5561 + 36] = mem[s + _5561 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5561]) <= mem[_5561]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5561] + _5561 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5091 / (1000 * _5090) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5091 / (1000 * _5090) + (997 * t)
                        continue 
                    _6864 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6864] = return_data.size
                    mem[_6864 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5091 / (1000 * _5090) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6864 + 32] == mem[_6864 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6864 + 32]
                    t = 997 * t * _5091 / (1000 * _5090) + (997 * t)
                    continue 
                mem[mem[_5561] + _5561 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5561] + _5561 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5091 / (1000 * _5090) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5091 / (1000 * _5090) + (997 * t)
                    continue 
                _6865 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6865] = return_data.size
                mem[_6865 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5091 / (1000 * _5090) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6865 + 32] == mem[_6865 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6865 + 32]
                t = 997 * t * _5091 / (1000 * _5090) + (997 * t)
                continue 
            if mem[_5007 + 64] <= 0:
                revert with 0, 'l'
            if mem[_5007 + 32] <= 0:
                revert with 0, 'l'
            if not (1000 * mem[_5007 + 64]) + (997 * t):
                revert with 'NH{q', 18
            if address(s) != address(_3339):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _3339
                t = 997 * t * mem[_5007 + 32] / (1000 * mem[_5007 + 64]) + (997 * t)
                continue 
            _5681 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5681 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5681 + 36 len 28]
            s = 0
            while s < mem[_5681]:
                mem[s + _5681 + 36] = mem[s + _5681 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_5681]) <= mem[_5681]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5681] + _5681 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5090 / (1000 * _5091) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5090 / (1000 * _5091) + (997 * t)
                    continue 
                _6866 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6866] = return_data.size
                mem[_6866 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5090 / (1000 * _5091) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6866 + 32] == mem[_6866 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6866 + 32]
                t = 997 * t * _5090 / (1000 * _5091) + (997 * t)
                continue 
            mem[mem[_5681] + _5681 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5681] + _5681 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5090 / (1000 * _5091) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _5090 / (1000 * _5091) + (997 * t)
                continue 
            _6867 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6867] = return_data.size
            mem[_6867 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * _5090 / (1000 * _5091) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_6867 + 32] == mem[_6867 + 44 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_6867 + 32]
            t = 997 * t * _5090 / (1000 * _5091) + (997 * t)
            continue 
        _3323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_3323] = return_data.size
        mem[_3323 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            _3340 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_3340 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_3340 + 36 len 28]
            u = 0
            while u < mem[_3340]:
                mem[u + _3340 + 36] = mem[u + _3340 + 32]
                u = u + 32
                continue 
            if ceil32(mem[_3340]) <= mem[_3340]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_3340] + _3340 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _5092 = mem[128]
                    _5093 = mem[160]
                    if not address(s):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        if not (1000 * mem[128]) + (997 * t):
                            revert with 'NH{q', 18
                        if address(s):
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _5564 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_5564 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5564 + 36 len 28]
                        s = 0
                        while s < mem[_5564]:
                            mem[s + _5564 + 36] = mem[s + _5564 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_5564]) <= mem[_5564]:
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_5564] + _5564 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _5093 / (1000 * _5092) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                require mem[128] == mem[140 len 20]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _5093 / (1000 * _5092) + (997 * t)
                                continue 
                            _6868 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_6868] = return_data.size
                            mem[_6868 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5093 / (1000 * _5092) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            require mem[_6868 + 32] == mem[_6868 + 44 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[_6868 + 32]
                            t = 997 * t * _5093 / (1000 * _5092) + (997 * t)
                            continue 
                        mem[mem[_5564] + _5564 + 36] = 0
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5564] + _5564 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5093 / (1000 * _5092) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5093 / (1000 * _5092) + (997 * t)
                            continue 
                        _6869 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6869] = return_data.size
                        mem[_6869 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5093 / (1000 * _5092) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6869 + 32] == mem[_6869 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6869 + 32]
                        t = 997 * t * _5093 / (1000 * _5092) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[160]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _5685 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5685 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5685 + 36 len 28]
                    s = 0
                    while s < mem[_5685]:
                        mem[s + _5685 + 36] = mem[s + _5685 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5685]) <= mem[_5685]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5685] + _5685 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5092 / (1000 * _5093) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5092 / (1000 * _5093) + (997 * t)
                            continue 
                        _6870 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6870] = return_data.size
                        mem[_6870 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5092 / (1000 * _5093) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6870 + 32] == mem[_6870 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6870 + 32]
                        t = 997 * t * _5092 / (1000 * _5093) + (997 * t)
                        continue 
                    mem[mem[_5685] + _5685 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5685] + _5685 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5092 / (1000 * _5093) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5092 / (1000 * _5093) + (997 * t)
                        continue 
                    _6871 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6871] = return_data.size
                    mem[_6871 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5092 / (1000 * _5093) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6871 + 32] == mem[_6871 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6871 + 32]
                    t = 997 * t * _5092 / (1000 * _5093) + (997 * t)
                    continue 
                _5008 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_5008] = return_data.size
                mem[_5008 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _5094 = mem[_5008 + 32]
                _5095 = mem[_5008 + 64]
                if not address(s):
                    if mem[_5008 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_5008 + 64] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[_5008 + 32]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_5008 + 64] / (1000 * mem[_5008 + 32]) + (997 * t)
                        continue 
                    _5567 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5567 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5567 + 36 len 28]
                    s = 0
                    while s < mem[_5567]:
                        mem[s + _5567 + 36] = mem[s + _5567 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5567]) <= mem[_5567]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5567] + _5567 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5095 / (1000 * _5094) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5095 / (1000 * _5094) + (997 * t)
                            continue 
                        _6872 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6872] = return_data.size
                        mem[_6872 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5095 / (1000 * _5094) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6872 + 32] == mem[_6872 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6872 + 32]
                        t = 997 * t * _5095 / (1000 * _5094) + (997 * t)
                        continue 
                    mem[mem[_5567] + _5567 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5567] + _5567 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5095 / (1000 * _5094) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5095 / (1000 * _5094) + (997 * t)
                        continue 
                    _6873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6873] = return_data.size
                    mem[_6873 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5095 / (1000 * _5094) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6873 + 32] == mem[_6873 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6873 + 32]
                    t = 997 * t * _5095 / (1000 * _5094) + (997 * t)
                    continue 
                if mem[_5008 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_5008 + 32] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5008 + 64]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_5008 + 32] / (1000 * mem[_5008 + 64]) + (997 * t)
                    continue 
                _5689 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5689 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5689 + 36 len 28]
                s = 0
                while s < mem[_5689]:
                    mem[s + _5689 + 36] = mem[s + _5689 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5689]) <= mem[_5689]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5689] + _5689 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5094 / (1000 * _5095) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5094 / (1000 * _5095) + (997 * t)
                        continue 
                    _6874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6874] = return_data.size
                    mem[_6874 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5094 / (1000 * _5095) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6874 + 32] == mem[_6874 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6874 + 32]
                    t = 997 * t * _5094 / (1000 * _5095) + (997 * t)
                    continue 
                mem[mem[_5689] + _5689 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5689] + _5689 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5094 / (1000 * _5095) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5094 / (1000 * _5095) + (997 * t)
                    continue 
                _6875 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6875] = return_data.size
                mem[_6875 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5094 / (1000 * _5095) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6875 + 32] == mem[_6875 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6875 + 32]
                t = 997 * t * _5094 / (1000 * _5095) + (997 * t)
                continue 
            mem[mem[_3340] + _3340 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_3340] + _3340 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _5096 = mem[128]
                _5097 = mem[160]
                if not address(s):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[128]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _5570 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5570 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5570 + 36 len 28]
                    s = 0
                    while s < mem[_5570]:
                        mem[s + _5570 + 36] = mem[s + _5570 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5570]) <= mem[_5570]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5570] + _5570 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5097 / (1000 * _5096) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5097 / (1000 * _5096) + (997 * t)
                            continue 
                        _6876 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6876] = return_data.size
                        mem[_6876 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5097 / (1000 * _5096) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6876 + 32] == mem[_6876 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6876 + 32]
                        t = 997 * t * _5097 / (1000 * _5096) + (997 * t)
                        continue 
                    mem[mem[_5570] + _5570 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5570] + _5570 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5097 / (1000 * _5096) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5097 / (1000 * _5096) + (997 * t)
                        continue 
                    _6877 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6877] = return_data.size
                    mem[_6877 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5097 / (1000 * _5096) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6877 + 32] == mem[_6877 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6877 + 32]
                    t = 997 * t * _5097 / (1000 * _5096) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[160]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _5693 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5693 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5693 + 36 len 28]
                s = 0
                while s < mem[_5693]:
                    mem[s + _5693 + 36] = mem[s + _5693 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5693]) <= mem[_5693]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5693] + _5693 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5096 / (1000 * _5097) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5096 / (1000 * _5097) + (997 * t)
                        continue 
                    _6878 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6878] = return_data.size
                    mem[_6878 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5096 / (1000 * _5097) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6878 + 32] == mem[_6878 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6878 + 32]
                    t = 997 * t * _5096 / (1000 * _5097) + (997 * t)
                    continue 
                mem[mem[_5693] + _5693 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5693] + _5693 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5096 / (1000 * _5097) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5096 / (1000 * _5097) + (997 * t)
                    continue 
                _6879 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6879] = return_data.size
                mem[_6879 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5096 / (1000 * _5097) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6879 + 32] == mem[_6879 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6879 + 32]
                t = 997 * t * _5096 / (1000 * _5097) + (997 * t)
                continue 
            _5009 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_5009] = return_data.size
            mem[_5009 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _5098 = mem[_5009 + 32]
            _5099 = mem[_5009 + 64]
            if not address(s):
                if mem[_5009 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_5009 + 64] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5009 + 32]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_5009 + 64] / (1000 * mem[_5009 + 32]) + (997 * t)
                    continue 
                _5573 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5573 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5573 + 36 len 28]
                s = 0
                while s < mem[_5573]:
                    mem[s + _5573 + 36] = mem[s + _5573 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5573]) <= mem[_5573]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5573] + _5573 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5099 / (1000 * _5098) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5099 / (1000 * _5098) + (997 * t)
                        continue 
                    _6880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6880] = return_data.size
                    mem[_6880 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5099 / (1000 * _5098) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6880 + 32] == mem[_6880 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6880 + 32]
                    t = 997 * t * _5099 / (1000 * _5098) + (997 * t)
                    continue 
                mem[mem[_5573] + _5573 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5573] + _5573 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5099 / (1000 * _5098) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5099 / (1000 * _5098) + (997 * t)
                    continue 
                _6881 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6881] = return_data.size
                mem[_6881 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5099 / (1000 * _5098) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6881 + 32] == mem[_6881 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6881 + 32]
                t = 997 * t * _5099 / (1000 * _5098) + (997 * t)
                continue 
            if mem[_5009 + 64] <= 0:
                revert with 0, 'l'
            if mem[_5009 + 32] <= 0:
                revert with 0, 'l'
            if not (1000 * mem[_5009 + 64]) + (997 * t):
                revert with 'NH{q', 18
            if address(s):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * mem[_5009 + 32] / (1000 * mem[_5009 + 64]) + (997 * t)
                continue 
            _5697 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5697 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5697 + 36 len 28]
            s = 0
            while s < mem[_5697]:
                mem[s + _5697 + 36] = mem[s + _5697 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_5697]) <= mem[_5697]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5697] + _5697 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5098 / (1000 * _5099) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5098 / (1000 * _5099) + (997 * t)
                    continue 
                _6882 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6882] = return_data.size
                mem[_6882 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5098 / (1000 * _5099) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6882 + 32] == mem[_6882 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6882 + 32]
                t = 997 * t * _5098 / (1000 * _5099) + (997 * t)
                continue 
            mem[mem[_5697] + _5697 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5697] + _5697 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5098 / (1000 * _5099) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _5098 / (1000 * _5099) + (997 * t)
                continue 
            _6883 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6883] = return_data.size
            mem[_6883 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * _5098 / (1000 * _5099) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_6883 + 32] == mem[_6883 + 44 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_6883 + 32]
            t = 997 * t * _5098 / (1000 * _5099) + (997 * t)
            continue 
        require return_data.size >= 32
        _3343 = mem[_3323 + 32]
        require mem[_3323 + 32] == mem[_3323 + 44 len 20]
        _3369 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_3369 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_3369 + 36 len 28]
        u = 0
        while u < mem[_3369]:
            mem[u + _3369 + 36] = mem[u + _3369 + 32]
            u = u + 32
            continue 
        if ceil32(mem[_3369]) <= mem[_3369]:
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_3369] + _3369 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _5100 = mem[128]
                _5101 = mem[160]
                if address(s) == address(_3343):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if not (1000 * mem[128]) + (997 * t):
                        revert with 'NH{q', 18
                    if address(s) != address(_3343):
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = _3343
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _5576 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_5576 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5576 + 36 len 28]
                    s = 0
                    while s < mem[_5576]:
                        mem[s + _5576 + 36] = mem[s + _5576 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_5576]) <= mem[_5576]:
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_5576] + _5576 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _5101 / (1000 * _5100) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            require mem[128] == mem[140 len 20]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _5101 / (1000 * _5100) + (997 * t)
                            continue 
                        _6884 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_6884] = return_data.size
                        mem[_6884 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5101 / (1000 * _5100) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        require mem[_6884 + 32] == mem[_6884 + 44 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[_6884 + 32]
                        t = 997 * t * _5101 / (1000 * _5100) + (997 * t)
                        continue 
                    mem[mem[_5576] + _5576 + 36] = 0
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5576] + _5576 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5101 / (1000 * _5100) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5101 / (1000 * _5100) + (997 * t)
                        continue 
                    _6885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6885] = return_data.size
                    mem[_6885 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5101 / (1000 * _5100) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6885 + 32] == mem[_6885 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6885 + 32]
                    t = 997 * t * _5101 / (1000 * _5100) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[160]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3343):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3343
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _5701 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5701 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5701 + 36 len 28]
                s = 0
                while s < mem[_5701]:
                    mem[s + _5701 + 36] = mem[s + _5701 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5701]) <= mem[_5701]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5701] + _5701 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5100 / (1000 * _5101) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5100 / (1000 * _5101) + (997 * t)
                        continue 
                    _6886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6886] = return_data.size
                    mem[_6886 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5100 / (1000 * _5101) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6886 + 32] == mem[_6886 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6886 + 32]
                    t = 997 * t * _5100 / (1000 * _5101) + (997 * t)
                    continue 
                mem[mem[_5701] + _5701 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5701] + _5701 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5100 / (1000 * _5101) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5100 / (1000 * _5101) + (997 * t)
                    continue 
                _6887 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6887] = return_data.size
                mem[_6887 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5100 / (1000 * _5101) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6887 + 32] == mem[_6887 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6887 + 32]
                t = 997 * t * _5100 / (1000 * _5101) + (997 * t)
                continue 
            _5010 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_5010] = return_data.size
            mem[_5010 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _5102 = mem[_5010 + 32]
            _5103 = mem[_5010 + 64]
            if address(s) == address(_3343):
                if mem[_5010 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_5010 + 64] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[_5010 + 32]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3343):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3343
                    t = 997 * t * mem[_5010 + 64] / (1000 * mem[_5010 + 32]) + (997 * t)
                    continue 
                _5579 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5579 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5579 + 36 len 28]
                s = 0
                while s < mem[_5579]:
                    mem[s + _5579 + 36] = mem[s + _5579 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5579]) <= mem[_5579]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5579] + _5579 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5103 / (1000 * _5102) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5103 / (1000 * _5102) + (997 * t)
                        continue 
                    _6888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6888] = return_data.size
                    mem[_6888 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5103 / (1000 * _5102) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6888 + 32] == mem[_6888 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6888 + 32]
                    t = 997 * t * _5103 / (1000 * _5102) + (997 * t)
                    continue 
                mem[mem[_5579] + _5579 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5579] + _5579 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5103 / (1000 * _5102) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5103 / (1000 * _5102) + (997 * t)
                    continue 
                _6889 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6889] = return_data.size
                mem[_6889 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5103 / (1000 * _5102) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6889 + 32] == mem[_6889 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6889 + 32]
                t = 997 * t * _5103 / (1000 * _5102) + (997 * t)
                continue 
            if mem[_5010 + 64] <= 0:
                revert with 0, 'l'
            if mem[_5010 + 32] <= 0:
                revert with 0, 'l'
            if not (1000 * mem[_5010 + 64]) + (997 * t):
                revert with 'NH{q', 18
            if address(s) != address(_3343):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _3343
                t = 997 * t * mem[_5010 + 32] / (1000 * mem[_5010 + 64]) + (997 * t)
                continue 
            _5705 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5705 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5705 + 36 len 28]
            s = 0
            while s < mem[_5705]:
                mem[s + _5705 + 36] = mem[s + _5705 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_5705]) <= mem[_5705]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5705] + _5705 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5102 / (1000 * _5103) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5102 / (1000 * _5103) + (997 * t)
                    continue 
                _6890 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6890] = return_data.size
                mem[_6890 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5102 / (1000 * _5103) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6890 + 32] == mem[_6890 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6890 + 32]
                t = 997 * t * _5102 / (1000 * _5103) + (997 * t)
                continue 
            mem[mem[_5705] + _5705 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5705] + _5705 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5102 / (1000 * _5103) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _5102 / (1000 * _5103) + (997 * t)
                continue 
            _6891 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6891] = return_data.size
            mem[_6891 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * _5102 / (1000 * _5103) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_6891 + 32] == mem[_6891 + 44 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_6891 + 32]
            t = 997 * t * _5102 / (1000 * _5103) + (997 * t)
            continue 
        mem[mem[_3369] + _3369 + 36] = 0
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len mem[_3369] + _3369 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'l'
            require mem[96] >= 64
            _5104 = mem[128]
            _5105 = mem[160]
            if address(s) == address(_3343):
                if mem[128] <= 0:
                    revert with 0, 'l'
                if mem[160] <= 0:
                    revert with 0, 'l'
                if not (1000 * mem[128]) + (997 * t):
                    revert with 'NH{q', 18
                if address(s) != address(_3343):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = _3343
                    t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                    continue 
                _5582 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_5582 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5582 + 36 len 28]
                s = 0
                while s < mem[_5582]:
                    mem[s + _5582 + 36] = mem[s + _5582 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_5582]) <= mem[_5582]:
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_5582] + _5582 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _5105 / (1000 * _5104) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        require mem[128] == mem[140 len 20]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _5105 / (1000 * _5104) + (997 * t)
                        continue 
                    _6892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_6892] = return_data.size
                    mem[_6892 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5105 / (1000 * _5104) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    require mem[_6892 + 32] == mem[_6892 + 44 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[_6892 + 32]
                    t = 997 * t * _5105 / (1000 * _5104) + (997 * t)
                    continue 
                mem[mem[_5582] + _5582 + 36] = 0
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5582] + _5582 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5105 / (1000 * _5104) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5105 / (1000 * _5104) + (997 * t)
                    continue 
                _6893 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6893] = return_data.size
                mem[_6893 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5105 / (1000 * _5104) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6893 + 32] == mem[_6893 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6893 + 32]
                t = 997 * t * _5105 / (1000 * _5104) + (997 * t)
                continue 
            if mem[160] <= 0:
                revert with 0, 'l'
            if mem[128] <= 0:
                revert with 0, 'l'
            if not (1000 * mem[160]) + (997 * t):
                revert with 'NH{q', 18
            if address(s) != address(_3343):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _3343
                t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                continue 
            _5709 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5709 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5709 + 36 len 28]
            s = 0
            while s < mem[_5709]:
                mem[s + _5709 + 36] = mem[s + _5709 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_5709]) <= mem[_5709]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5709] + _5709 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5104 / (1000 * _5105) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5104 / (1000 * _5105) + (997 * t)
                    continue 
                _6894 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6894] = return_data.size
                mem[_6894 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5104 / (1000 * _5105) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6894 + 32] == mem[_6894 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6894 + 32]
                t = 997 * t * _5104 / (1000 * _5105) + (997 * t)
                continue 
            mem[mem[_5709] + _5709 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5709] + _5709 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5104 / (1000 * _5105) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _5104 / (1000 * _5105) + (997 * t)
                continue 
            _6895 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6895] = return_data.size
            mem[_6895 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * _5104 / (1000 * _5105) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_6895 + 32] == mem[_6895 + 44 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_6895 + 32]
            t = 997 * t * _5104 / (1000 * _5105) + (997 * t)
            continue 
        _5011 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_5011] = return_data.size
        mem[_5011 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'l'
        require return_data.size >= 64
        _5106 = mem[_5011 + 32]
        _5107 = mem[_5011 + 64]
        if address(s) == address(_3343):
            if mem[_5011 + 32] <= 0:
                revert with 0, 'l'
            if mem[_5011 + 64] <= 0:
                revert with 0, 'l'
            if not (1000 * mem[_5011 + 32]) + (997 * t):
                revert with 'NH{q', 18
            if address(s) != address(_3343):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _3343
                t = 997 * t * mem[_5011 + 64] / (1000 * mem[_5011 + 32]) + (997 * t)
                continue 
            _5585 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_5585 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5585 + 36 len 28]
            s = 0
            while s < mem[_5585]:
                mem[s + _5585 + 36] = mem[s + _5585 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_5585]) <= mem[_5585]:
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_5585] + _5585 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _5107 / (1000 * _5106) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    require mem[128] == mem[140 len 20]
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _5107 / (1000 * _5106) + (997 * t)
                    continue 
                _6896 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_6896] = return_data.size
                mem[_6896 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5107 / (1000 * _5106) + (997 * t)
                    continue 
                require return_data.size >= 32
                require mem[_6896 + 32] == mem[_6896 + 44 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_6896 + 32]
                t = 997 * t * _5107 / (1000 * _5106) + (997 * t)
                continue 
            mem[mem[_5585] + _5585 + 36] = 0
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5585] + _5585 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5107 / (1000 * _5106) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _5107 / (1000 * _5106) + (997 * t)
                continue 
            _6897 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6897] = return_data.size
            mem[_6897 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * _5107 / (1000 * _5106) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_6897 + 32] == mem[_6897 + 44 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_6897 + 32]
            t = 997 * t * _5107 / (1000 * _5106) + (997 * t)
            continue 
        if mem[_5011 + 64] <= 0:
            revert with 0, 'l'
        if mem[_5011 + 32] <= 0:
            revert with 0, 'l'
        if not (1000 * mem[_5011 + 64]) + (997 * t):
            revert with 'NH{q', 18
        if address(s) != address(_3343):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _3343
            t = 997 * t * mem[_5011 + 32] / (1000 * mem[_5011 + 64]) + (997 * t)
            continue 
        _5713 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_5713 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_5713 + 36 len 28]
        s = 0
        while s < mem[_5713]:
            mem[s + _5713 + 36] = mem[s + _5713 + 32]
            s = s + 32
            continue 
        if ceil32(mem[_5713]) <= mem[_5713]:
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_5713] + _5713 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _5106 / (1000 * _5107) + (997 * t)
                    continue 
                require mem[96] >= 32
                require mem[128] == mem[140 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _5106 / (1000 * _5107) + (997 * t)
                continue 
            _6898 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_6898] = return_data.size
            mem[_6898 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * _5106 / (1000 * _5107) + (997 * t)
                continue 
            require return_data.size >= 32
            require mem[_6898 + 32] == mem[_6898 + 44 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[_6898 + 32]
            t = 997 * t * _5106 / (1000 * _5107) + (997 * t)
            continue 
        mem[mem[_5713] + _5713 + 36] = 0
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len mem[_5713] + _5713 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = 0
                t = 997 * t * _5106 / (1000 * _5107) + (997 * t)
                continue 
            require mem[96] >= 32
            require mem[128] == mem[140 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = mem[128]
            t = 997 * t * _5106 / (1000 * _5107) + (997 * t)
            continue 
        _6899 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_6899] = return_data.size
        mem[_6899 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = 0
            t = 997 * t * _5106 / (1000 * _5107) + (997 * t)
            continue 
        require return_data.size >= 32
        require mem[_6899 + 32] == mem[_6899 + 44 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_6899 + 32]
        t = 997 * t * _5106 / (1000 * _5107) + (997 * t)
        continue 
    return t, address(s)
}



}
