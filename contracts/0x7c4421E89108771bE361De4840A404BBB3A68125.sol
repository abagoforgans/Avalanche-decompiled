contract main {




// =====================  Runtime code  =====================


#
#  - sub_048606fd(?)
#  - sub_0773b509(?)
#
address stor0;
mapping of uint8 stor2;

function _fallback() payable {
  stop
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    stor2[address(arg1)] = 1
}

function sub_9886ccd5(?) {
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5b8bfaea(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(arg1)
    call arg1.burn(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_3412b979(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(arg1)
    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args arg2, arg3, msg.sender, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6d9cec22(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(address(arg1 xor msg.sender + arg2 - 3735932941))
    call address(arg1 xor msg.sender + arg2 - 3735932941).skim(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0363e1a8(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(address(arg1 xor msg.sender + arg2 - 275969102669431))
    call address(arg1 xor msg.sender + arg2 - 275969102669431).skim(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fbec2796(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(address(arg1 xor msg.sender + arg2 - 45724226011116378546927736))
    call address(arg1 xor msg.sender + arg2 - 45724226011116378546927736).skim(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function payout(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        if bool(stor2[msg.sender]) != 1:
            revert with 0, 'o'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
}

function sub_7be91022(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 36).length:
        mem[mem[64] + 36] = cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64] + 68] = 96
        mem[mem[64] + 100] = ('cd', 68).length
        mem[mem[64] + 132 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[mem[64] + (32 * ('cd', 68).length) + 132] = 0
        require ext_code.size(this.address)
        staticcall this.address.0x96919a5a with:
                gas gas_remaining wei
               args address(cd[4]), cd[((32 * idx) + cd[36] + 36)], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] <= cd[((32 * idx) + cd[36] + 36)]:
            idx = idx + 1
            continue 
        if ext_call.return_data[0] - cd[((32 * idx) + cd[36] + 36)] > 0:
            idx = idx + 1
            continue 
        if ext_call.return_data[0] - cd[((32 * idx) + cd[36] + 36)] >= 0:
            idx = idx + 1
            continue 
        else:
            return 0
    return 0
}

function sub_96919a5a(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = address(cd[4])
    t = cd[36]
    while idx < ('cd', 68).length:
        _526 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_526 + 32] = 0xdfe168100000000000000000000000000000000000000000000000000000000 or mem[_526 + 36 len 28]
        _529 = mem[_526]
        v = _526 + 32
        w = mem[64]
        u = mem[_526]
        while u >= 32:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u - 32
            continue 
        mem[mem[64] + floor32(mem[_526])] = mem[_526 + floor32(mem[_526]) + -(mem[_526] % 32) + 64 len mem[_526] % 32] or Mask(8 * -(mem[_526] % 32) + 32, -(8 * -(mem[_526] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_526])])
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _529 + _526 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                _1056 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1056 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_1056 + 36 len 28]
                _1059 = mem[_1056]
                v = _1056 + 32
                w = mem[64]
                u = mem[_1056]
                while u >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u - 32
                    continue 
                mem[mem[64] + floor32(mem[_1056])] = mem[_1056 + floor32(mem[_1056]) + -(mem[_1056] % 32) + 64 len mem[_1056] % 32] or Mask(8 * -(mem[_1056] % 32) + 32, -(8 * -(mem[_1056] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1056])])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1059 + _1056 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'l'
                    require mem[96] >= 64
                    _1592 = mem[128]
                    _1593 = mem[160]
                    if not address(s):
                        if mem[128] <= 0:
                            revert with 0, 'l'
                        if mem[160] <= 0:
                            revert with 0, 'l'
                        require (1000 * mem[128]) + (997 * t)
                        if address(s):
                            idx = idx + 1
                            s = 0
                            t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                            continue 
                        _1704 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_1704 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1704 + 36 len 28]
                        if mem[_1704] < 32:
                            mem[_1704 + 36] = Mask(-(8 * -mem[_1704] + 32) + 256, 0, mem[_1704 + 32]) or Mask(8 * -mem[_1704] + 32, -(8 * -mem[_1704] + 32) + 256, 4)
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1704 + 36 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1704 + 40 len mem[_1704] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    idx = idx + 1
                                    s = 0
                                    t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                                    continue 
                                require mem[96] >= 32
                                idx = idx + 1
                                s = mem[128]
                                t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                                continue 
                            mem[64] = _1704 + ceil32(return_data.size) + 37
                            mem[_1704 + 36] = return_data.size
                            mem[_1704 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                                continue 
                            require return_data.size >= 32
                            idx = idx + 1
                            s = mem[_1704 + 68]
                            t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                            continue 
                        mem[_1704 + 36] = mem[_1704 + 32]
                        u = _1704 + 64
                        v = _1704 + 68
                        s = mem[_1704] - 32
                        while s >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            s = s - 32
                            continue 
                        mem[_1704 + floor32(mem[_1704] - 32) + 68] = mem[_1704 + (2 * floor32(mem[_1704] - 32)) + -mem[_1704] + 128 len mem[_1704] + -floor32(mem[_1704] - 32) - 32] or Mask(8 * -mem[_1704] + floor32(mem[_1704] - 32) + 64, -(8 * -mem[_1704] + floor32(mem[_1704] - 32) + 64) + 256, mem[_1704 + floor32(mem[_1704] - 32) + 68])
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1704] + _1704 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                            continue 
                        _2120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2120] = return_data.size
                        mem[_2120 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_2120 + 32]
                        t = 997 * t * _1593 / (1000 * _1592) + (997 * t)
                        continue 
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    require (1000 * mem[160]) + (997 * t)
                    if address(s):
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                        continue 
                    _1740 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1740 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1740 + 36 len 28]
                    if mem[_1740] < 32:
                        mem[_1740 + 36] = Mask(-(8 * -mem[_1740] + 32) + 256, 0, mem[_1740 + 32]) or Mask(8 * -mem[_1740] + 32, -(8 * -mem[_1740] + 32) + 256, 4)
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1740 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1740 + 40 len mem[_1740] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                            continue 
                        mem[64] = _1740 + ceil32(return_data.size) + 37
                        mem[_1740 + 36] = return_data.size
                        mem[_1740 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_1740 + 68]
                        t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                        continue 
                    mem[_1740 + 36] = mem[_1740 + 32]
                    u = _1740 + 64
                    v = _1740 + 68
                    s = mem[_1740] - 32
                    while s >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        s = s - 32
                        continue 
                    mem[_1740 + floor32(mem[_1740] - 32) + 68] = mem[_1740 + (2 * floor32(mem[_1740] - 32)) + -mem[_1740] + 128 len mem[_1740] + -floor32(mem[_1740] - 32) - 32] or Mask(8 * -mem[_1740] + floor32(mem[_1740] - 32) + 64, -(8 * -mem[_1740] + floor32(mem[_1740] - 32) + 64) + 256, mem[_1740 + floor32(mem[_1740] - 32) + 68])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_1740] + _1740 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                        continue 
                    _2121 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2121] = return_data.size
                    mem[_2121 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_2121 + 32]
                    t = 997 * t * _1592 / (1000 * _1593) + (997 * t)
                    continue 
                _1580 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1580] = return_data.size
                mem[_1580 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'l'
                require return_data.size >= 64
                _1594 = mem[_1580 + 32]
                _1595 = mem[_1580 + 64]
                if not address(s):
                    if mem[_1580 + 32] <= 0:
                        revert with 0, 'l'
                    if mem[_1580 + 64] <= 0:
                        revert with 0, 'l'
                    require (1000 * mem[_1580 + 32]) + (997 * t)
                    if address(s):
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[_1580 + 64] / (1000 * mem[_1580 + 32]) + (997 * t)
                        continue 
                    _1708 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1708 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1708 + 36 len 28]
                    if mem[_1708] < 32:
                        mem[_1708 + 36] = Mask(-(8 * -mem[_1708] + 32) + 256, 0, mem[_1708 + 32]) or Mask(8 * -mem[_1708] + 32, -(8 * -mem[_1708] + 32) + 256, 4)
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1708 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1708 + 40 len mem[_1708] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                            continue 
                        mem[64] = _1708 + ceil32(return_data.size) + 37
                        mem[_1708 + 36] = return_data.size
                        mem[_1708 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_1708 + 68]
                        t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                        continue 
                    mem[_1708 + 36] = mem[_1708 + 32]
                    u = _1708 + 64
                    v = _1708 + 68
                    s = mem[_1708] - 32
                    while s >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        s = s - 32
                        continue 
                    mem[_1708 + floor32(mem[_1708] - 32) + 68] = mem[_1708 + (2 * floor32(mem[_1708] - 32)) + -mem[_1708] + 128 len mem[_1708] + -floor32(mem[_1708] - 32) - 32] or Mask(8 * -mem[_1708] + floor32(mem[_1708] - 32) + 64, -(8 * -mem[_1708] + floor32(mem[_1708] - 32) + 64) + 256, mem[_1708 + floor32(mem[_1708] - 32) + 68])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_1708] + _1708 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                        continue 
                    _2122 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2122] = return_data.size
                    mem[_2122 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_2122 + 32]
                    t = 997 * t * _1595 / (1000 * _1594) + (997 * t)
                    continue 
                if mem[_1580 + 64] <= 0:
                    revert with 0, 'l'
                if mem[_1580 + 32] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[_1580 + 64]) + (997 * t)
                if address(s):
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_1580 + 32] / (1000 * mem[_1580 + 64]) + (997 * t)
                    continue 
                _1748 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1748 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1748 + 36 len 28]
                if mem[_1748] < 32:
                    mem[_1748 + 36] = Mask(-(8 * -mem[_1748] + 32) + 256, 0, mem[_1748 + 32]) or Mask(8 * -mem[_1748] + 32, -(8 * -mem[_1748] + 32) + 256, 4)
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1748 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1748 + 40 len mem[_1748] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                        continue 
                    mem[64] = _1748 + ceil32(return_data.size) + 37
                    mem[_1748 + 36] = return_data.size
                    mem[_1748 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_1748 + 68]
                    t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                    continue 
                mem[_1748 + 36] = mem[_1748 + 32]
                u = _1748 + 64
                v = _1748 + 68
                s = mem[_1748] - 32
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
                mem[_1748 + floor32(mem[_1748] - 32) + 68] = mem[_1748 + (2 * floor32(mem[_1748] - 32)) + -mem[_1748] + 128 len mem[_1748] + -floor32(mem[_1748] - 32) - 32] or Mask(8 * -mem[_1748] + floor32(mem[_1748] - 32) + 64, -(8 * -mem[_1748] + floor32(mem[_1748] - 32) + 64) + 256, mem[_1748 + floor32(mem[_1748] - 32) + 68])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_1748] + _1748 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                    continue 
                _2123 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2123] = return_data.size
                mem[_2123 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_2123 + 32]
                t = 997 * t * _1594 / (1000 * _1595) + (997 * t)
                continue 
            require mem[96] >= 32
            _1054 = mem[128]
            _1068 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_1068 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_1068 + 36 len 28]
            _1071 = mem[_1068]
            v = _1068 + 32
            w = mem[64]
            u = mem[_1068]
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[mem[64] + floor32(mem[_1068])] = mem[_1068 + floor32(mem[_1068]) + -(mem[_1068] % 32) + 64 len mem[_1068] % 32] or Mask(8 * -(mem[_1068] % 32) + 32, -(8 * -(mem[_1068] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1068])])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1071 + _1068 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _1596 = mem[128]
                _1597 = mem[160]
                if address(s) == address(_1054):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    require (1000 * mem[128]) + (997 * t)
                    if address(s) != address(_1054):
                        idx = idx + 1
                        s = _1054
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _1712 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1712 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1712 + 36 len 28]
                    if mem[_1712] < 32:
                        mem[_1712 + 36] = Mask(-(8 * -mem[_1712] + 32) + 256, 0, mem[_1712 + 32]) or Mask(8 * -mem[_1712] + 32, -(8 * -mem[_1712] + 32) + 256, 4)
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1712 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1712 + 40 len mem[_1712] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                            continue 
                        mem[64] = _1712 + ceil32(return_data.size) + 37
                        mem[_1712 + 36] = return_data.size
                        mem[_1712 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_1712 + 68]
                        t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                        continue 
                    mem[_1712 + 36] = mem[_1712 + 32]
                    u = _1712 + 64
                    v = _1712 + 68
                    s = mem[_1712] - 32
                    while s >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        s = s - 32
                        continue 
                    mem[_1712 + floor32(mem[_1712] - 32) + 68] = mem[_1712 + (2 * floor32(mem[_1712] - 32)) + -mem[_1712] + 128 len mem[_1712] + -floor32(mem[_1712] - 32) - 32] or Mask(8 * -mem[_1712] + floor32(mem[_1712] - 32) + 64, -(8 * -mem[_1712] + floor32(mem[_1712] - 32) + 64) + 256, mem[_1712 + floor32(mem[_1712] - 32) + 68])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_1712] + _1712 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                        continue 
                    _2124 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2124] = return_data.size
                    mem[_2124 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_2124 + 32]
                    t = 997 * t * _1597 / (1000 * _1596) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[160]) + (997 * t)
                if address(s) != address(_1054):
                    idx = idx + 1
                    s = _1054
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _1756 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1756 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1756 + 36 len 28]
                if mem[_1756] < 32:
                    mem[_1756 + 36] = Mask(-(8 * -mem[_1756] + 32) + 256, 0, mem[_1756 + 32]) or Mask(8 * -mem[_1756] + 32, -(8 * -mem[_1756] + 32) + 256, 4)
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1756 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1756 + 40 len mem[_1756] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                        continue 
                    mem[64] = _1756 + ceil32(return_data.size) + 37
                    mem[_1756 + 36] = return_data.size
                    mem[_1756 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_1756 + 68]
                    t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                    continue 
                mem[_1756 + 36] = mem[_1756 + 32]
                u = _1756 + 64
                v = _1756 + 68
                s = mem[_1756] - 32
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
                mem[_1756 + floor32(mem[_1756] - 32) + 68] = mem[_1756 + (2 * floor32(mem[_1756] - 32)) + -mem[_1756] + 128 len mem[_1756] + -floor32(mem[_1756] - 32) - 32] or Mask(8 * -mem[_1756] + floor32(mem[_1756] - 32) + 64, -(8 * -mem[_1756] + floor32(mem[_1756] - 32) + 64) + 256, mem[_1756 + floor32(mem[_1756] - 32) + 68])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_1756] + _1756 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                    continue 
                _2125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2125] = return_data.size
                mem[_2125 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_2125 + 32]
                t = 997 * t * _1596 / (1000 * _1597) + (997 * t)
                continue 
            _1581 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1581] = return_data.size
            mem[_1581 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _1598 = mem[_1581 + 32]
            _1599 = mem[_1581 + 64]
            if address(s) == address(_1054):
                if mem[_1581 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_1581 + 64] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[_1581 + 32]) + (997 * t)
                if address(s) != address(_1054):
                    idx = idx + 1
                    s = _1054
                    t = 997 * t * mem[_1581 + 64] / (1000 * mem[_1581 + 32]) + (997 * t)
                    continue 
                _1716 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1716 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1716 + 36 len 28]
                if mem[_1716] < 32:
                    mem[_1716 + 36] = Mask(-(8 * -mem[_1716] + 32) + 256, 0, mem[_1716 + 32]) or Mask(8 * -mem[_1716] + 32, -(8 * -mem[_1716] + 32) + 256, 4)
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1716 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1716 + 40 len mem[_1716] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                        continue 
                    mem[64] = _1716 + ceil32(return_data.size) + 37
                    mem[_1716 + 36] = return_data.size
                    mem[_1716 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_1716 + 68]
                    t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                    continue 
                mem[_1716 + 36] = mem[_1716 + 32]
                u = _1716 + 64
                v = _1716 + 68
                s = mem[_1716] - 32
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
                mem[_1716 + floor32(mem[_1716] - 32) + 68] = mem[_1716 + (2 * floor32(mem[_1716] - 32)) + -mem[_1716] + 128 len mem[_1716] + -floor32(mem[_1716] - 32) - 32] or Mask(8 * -mem[_1716] + floor32(mem[_1716] - 32) + 64, -(8 * -mem[_1716] + floor32(mem[_1716] - 32) + 64) + 256, mem[_1716 + floor32(mem[_1716] - 32) + 68])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_1716] + _1716 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                    continue 
                _2126 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2126] = return_data.size
                mem[_2126 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_2126 + 32]
                t = 997 * t * _1599 / (1000 * _1598) + (997 * t)
                continue 
            if mem[_1581 + 64] <= 0:
                revert with 0, 'l'
            if mem[_1581 + 32] <= 0:
                revert with 0, 'l'
            require (1000 * mem[_1581 + 64]) + (997 * t)
            if address(s) != address(_1054):
                idx = idx + 1
                s = _1054
                t = 997 * t * mem[_1581 + 32] / (1000 * mem[_1581 + 64]) + (997 * t)
                continue 
            _1764 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_1764 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1764 + 36 len 28]
            if mem[_1764] < 32:
                mem[_1764 + 36] = Mask(-(8 * -mem[_1764] + 32) + 256, 0, mem[_1764 + 32]) or Mask(8 * -mem[_1764] + 32, -(8 * -mem[_1764] + 32) + 256, 4)
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1764 + 36 len 4] with:
                        gas gas_remaining wei
                       args mem[_1764 + 40 len mem[_1764] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                    continue 
                mem[64] = _1764 + ceil32(return_data.size) + 37
                mem[_1764 + 36] = return_data.size
                mem[_1764 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_1764 + 68]
                t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                continue 
            mem[_1764 + 36] = mem[_1764 + 32]
            u = _1764 + 64
            v = _1764 + 68
            s = mem[_1764] - 32
            while s >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                s = s - 32
                continue 
            mem[_1764 + floor32(mem[_1764] - 32) + 68] = mem[_1764 + (2 * floor32(mem[_1764] - 32)) + -mem[_1764] + 128 len mem[_1764] + -floor32(mem[_1764] - 32) - 32] or Mask(8 * -mem[_1764] + floor32(mem[_1764] - 32) + 64, -(8 * -mem[_1764] + floor32(mem[_1764] - 32) + 64) + 256, mem[_1764 + floor32(mem[_1764] - 32) + 68])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_1764] + _1764 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                continue 
            _2127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2127] = return_data.size
            mem[_2127 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_2127 + 32]
            t = 997 * t * _1598 / (1000 * _1599) + (997 * t)
            continue 
        _1051 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1051] = return_data.size
        mem[_1051 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            _1060 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_1060 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_1060 + 36 len 28]
            _1063 = mem[_1060]
            v = _1060 + 32
            w = mem[64]
            u = mem[_1060]
            while u >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u - 32
                continue 
            mem[mem[64] + floor32(mem[_1060])] = mem[_1060 + floor32(mem[_1060]) + -(mem[_1060] % 32) + 64 len mem[_1060] % 32] or Mask(8 * -(mem[_1060] % 32) + 32, -(8 * -(mem[_1060] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1060])])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _1063 + _1060 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'l'
                require mem[96] >= 64
                _1600 = mem[128]
                _1601 = mem[160]
                if not address(s):
                    if mem[128] <= 0:
                        revert with 0, 'l'
                    if mem[160] <= 0:
                        revert with 0, 'l'
                    require (1000 * mem[128]) + (997 * t)
                    if address(s):
                        idx = idx + 1
                        s = 0
                        t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                        continue 
                    _1720 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1720 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1720 + 36 len 28]
                    if mem[_1720] < 32:
                        mem[_1720 + 36] = Mask(-(8 * -mem[_1720] + 32) + 256, 0, mem[_1720 + 32]) or Mask(8 * -mem[_1720] + 32, -(8 * -mem[_1720] + 32) + 256, 4)
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1720 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1720 + 40 len mem[_1720] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                idx = idx + 1
                                s = 0
                                t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                                continue 
                            require mem[96] >= 32
                            idx = idx + 1
                            s = mem[128]
                            t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                            continue 
                        mem[64] = _1720 + ceil32(return_data.size) + 37
                        mem[_1720 + 36] = return_data.size
                        mem[_1720 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                            continue 
                        require return_data.size >= 32
                        idx = idx + 1
                        s = mem[_1720 + 68]
                        t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                        continue 
                    mem[_1720 + 36] = mem[_1720 + 32]
                    u = _1720 + 64
                    v = _1720 + 68
                    s = mem[_1720] - 32
                    while s >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        s = s - 32
                        continue 
                    mem[_1720 + floor32(mem[_1720] - 32) + 68] = mem[_1720 + (2 * floor32(mem[_1720] - 32)) + -mem[_1720] + 128 len mem[_1720] + -floor32(mem[_1720] - 32) - 32] or Mask(8 * -mem[_1720] + floor32(mem[_1720] - 32) + 64, -(8 * -mem[_1720] + floor32(mem[_1720] - 32) + 64) + 256, mem[_1720 + floor32(mem[_1720] - 32) + 68])
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_1720] + _1720 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                        continue 
                    _2128 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2128] = return_data.size
                    mem[_2128 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_2128 + 32]
                    t = 997 * t * _1601 / (1000 * _1600) + (997 * t)
                    continue 
                if mem[160] <= 0:
                    revert with 0, 'l'
                if mem[128] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[160]) + (997 * t)
                if address(s):
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                    continue 
                _1772 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1772 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1772 + 36 len 28]
                if mem[_1772] < 32:
                    mem[_1772 + 36] = Mask(-(8 * -mem[_1772] + 32) + 256, 0, mem[_1772 + 32]) or Mask(8 * -mem[_1772] + 32, -(8 * -mem[_1772] + 32) + 256, 4)
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1772 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1772 + 40 len mem[_1772] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                        continue 
                    mem[64] = _1772 + ceil32(return_data.size) + 37
                    mem[_1772 + 36] = return_data.size
                    mem[_1772 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_1772 + 68]
                    t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                    continue 
                mem[_1772 + 36] = mem[_1772 + 32]
                u = _1772 + 64
                v = _1772 + 68
                s = mem[_1772] - 32
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
                mem[_1772 + floor32(mem[_1772] - 32) + 68] = mem[_1772 + (2 * floor32(mem[_1772] - 32)) + -mem[_1772] + 128 len mem[_1772] + -floor32(mem[_1772] - 32) - 32] or Mask(8 * -mem[_1772] + floor32(mem[_1772] - 32) + 64, -(8 * -mem[_1772] + floor32(mem[_1772] - 32) + 64) + 256, mem[_1772 + floor32(mem[_1772] - 32) + 68])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_1772] + _1772 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                    continue 
                _2129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2129] = return_data.size
                mem[_2129 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_2129 + 32]
                t = 997 * t * _1600 / (1000 * _1601) + (997 * t)
                continue 
            _1582 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1582] = return_data.size
            mem[_1582 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'l'
            require return_data.size >= 64
            _1602 = mem[_1582 + 32]
            _1603 = mem[_1582 + 64]
            if not address(s):
                if mem[_1582 + 32] <= 0:
                    revert with 0, 'l'
                if mem[_1582 + 64] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[_1582 + 32]) + (997 * t)
                if address(s):
                    idx = idx + 1
                    s = 0
                    t = 997 * t * mem[_1582 + 64] / (1000 * mem[_1582 + 32]) + (997 * t)
                    continue 
                _1724 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1724 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1724 + 36 len 28]
                if mem[_1724] < 32:
                    mem[_1724 + 36] = Mask(-(8 * -mem[_1724] + 32) + 256, 0, mem[_1724 + 32]) or Mask(8 * -mem[_1724] + 32, -(8 * -mem[_1724] + 32) + 256, 4)
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1724 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1724 + 40 len mem[_1724] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                        continue 
                    mem[64] = _1724 + ceil32(return_data.size) + 37
                    mem[_1724 + 36] = return_data.size
                    mem[_1724 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_1724 + 68]
                    t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                    continue 
                mem[_1724 + 36] = mem[_1724 + 32]
                u = _1724 + 64
                v = _1724 + 68
                s = mem[_1724] - 32
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
                mem[_1724 + floor32(mem[_1724] - 32) + 68] = mem[_1724 + (2 * floor32(mem[_1724] - 32)) + -mem[_1724] + 128 len mem[_1724] + -floor32(mem[_1724] - 32) - 32] or Mask(8 * -mem[_1724] + floor32(mem[_1724] - 32) + 64, -(8 * -mem[_1724] + floor32(mem[_1724] - 32) + 64) + 256, mem[_1724 + floor32(mem[_1724] - 32) + 68])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_1724] + _1724 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                    continue 
                _2130 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2130] = return_data.size
                mem[_2130 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_2130 + 32]
                t = 997 * t * _1603 / (1000 * _1602) + (997 * t)
                continue 
            if mem[_1582 + 64] <= 0:
                revert with 0, 'l'
            if mem[_1582 + 32] <= 0:
                revert with 0, 'l'
            require (1000 * mem[_1582 + 64]) + (997 * t)
            if address(s):
                idx = idx + 1
                s = 0
                t = 997 * t * mem[_1582 + 32] / (1000 * mem[_1582 + 64]) + (997 * t)
                continue 
            _1780 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_1780 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1780 + 36 len 28]
            if mem[_1780] < 32:
                mem[_1780 + 36] = Mask(-(8 * -mem[_1780] + 32) + 256, 0, mem[_1780 + 32]) or Mask(8 * -mem[_1780] + 32, -(8 * -mem[_1780] + 32) + 256, 4)
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1780 + 36 len 4] with:
                        gas gas_remaining wei
                       args mem[_1780 + 40 len mem[_1780] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                    continue 
                mem[64] = _1780 + ceil32(return_data.size) + 37
                mem[_1780 + 36] = return_data.size
                mem[_1780 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_1780 + 68]
                t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                continue 
            mem[_1780 + 36] = mem[_1780 + 32]
            u = _1780 + 64
            v = _1780 + 68
            s = mem[_1780] - 32
            while s >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                s = s - 32
                continue 
            mem[_1780 + floor32(mem[_1780] - 32) + 68] = mem[_1780 + (2 * floor32(mem[_1780] - 32)) + -mem[_1780] + 128 len mem[_1780] + -floor32(mem[_1780] - 32) - 32] or Mask(8 * -mem[_1780] + floor32(mem[_1780] - 32) + 64, -(8 * -mem[_1780] + floor32(mem[_1780] - 32) + 64) + 256, mem[_1780 + floor32(mem[_1780] - 32) + 68])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_1780] + _1780 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                continue 
            _2131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2131] = return_data.size
            mem[_2131 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_2131 + 32]
            t = 997 * t * _1602 / (1000 * _1603) + (997 * t)
            continue 
        require return_data.size >= 32
        _1055 = mem[_1051 + 32]
        _1076 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_1076 + 32] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 or mem[_1076 + 36 len 28]
        _1079 = mem[_1076]
        v = _1076 + 32
        w = mem[64]
        u = mem[_1076]
        while u >= 32:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u - 32
            continue 
        mem[mem[64] + floor32(mem[_1076])] = mem[_1076 + floor32(mem[_1076]) + -(mem[_1076] % 32) + 64 len mem[_1076] % 32] or Mask(8 * -(mem[_1076] % 32) + 32, -(8 * -(mem[_1076] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1076])])
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _1079 + _1076 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'l'
            require mem[96] >= 64
            _1604 = mem[128]
            _1605 = mem[160]
            if address(s) == address(_1055):
                if mem[128] <= 0:
                    revert with 0, 'l'
                if mem[160] <= 0:
                    revert with 0, 'l'
                require (1000 * mem[128]) + (997 * t)
                if address(s) != address(_1055):
                    idx = idx + 1
                    s = _1055
                    t = 997 * t * mem[160] / (1000 * mem[128]) + (997 * t)
                    continue 
                _1728 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1728 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1728 + 36 len 28]
                if mem[_1728] < 32:
                    mem[_1728 + 36] = Mask(-(8 * -mem[_1728] + 32) + 256, 0, mem[_1728 + 32]) or Mask(8 * -mem[_1728] + 32, -(8 * -mem[_1728] + 32) + 256, 4)
                    staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1728 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1728 + 40 len mem[_1728] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            idx = idx + 1
                            s = 0
                            t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                            continue 
                        require mem[96] >= 32
                        idx = idx + 1
                        s = mem[128]
                        t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                        continue 
                    mem[64] = _1728 + ceil32(return_data.size) + 37
                    mem[_1728 + 36] = return_data.size
                    mem[_1728 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                        continue 
                    require return_data.size >= 32
                    idx = idx + 1
                    s = mem[_1728 + 68]
                    t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                    continue 
                mem[_1728 + 36] = mem[_1728 + 32]
                u = _1728 + 64
                v = _1728 + 68
                s = mem[_1728] - 32
                while s >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    s = s - 32
                    continue 
                mem[_1728 + floor32(mem[_1728] - 32) + 68] = mem[_1728 + (2 * floor32(mem[_1728] - 32)) + -mem[_1728] + 128 len mem[_1728] + -floor32(mem[_1728] - 32) - 32] or Mask(8 * -mem[_1728] + floor32(mem[_1728] - 32) + 64, -(8 * -mem[_1728] + floor32(mem[_1728] - 32) + 64) + 256, mem[_1728 + floor32(mem[_1728] - 32) + 68])
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len mem[_1728] + _1728 + -mem[64] + 32]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                    continue 
                _2132 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2132] = return_data.size
                mem[_2132 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_2132 + 32]
                t = 997 * t * _1605 / (1000 * _1604) + (997 * t)
                continue 
            if mem[160] <= 0:
                revert with 0, 'l'
            if mem[128] <= 0:
                revert with 0, 'l'
            require (1000 * mem[160]) + (997 * t)
            if address(s) != address(_1055):
                idx = idx + 1
                s = _1055
                t = 997 * t * mem[128] / (1000 * mem[160]) + (997 * t)
                continue 
            _1788 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_1788 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1788 + 36 len 28]
            if mem[_1788] < 32:
                mem[_1788 + 36] = Mask(-(8 * -mem[_1788] + 32) + 256, 0, mem[_1788 + 32]) or Mask(8 * -mem[_1788] + 32, -(8 * -mem[_1788] + 32) + 256, 4)
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1788 + 36 len 4] with:
                        gas gas_remaining wei
                       args mem[_1788 + 40 len mem[_1788] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                    continue 
                mem[64] = _1788 + ceil32(return_data.size) + 37
                mem[_1788 + 36] = return_data.size
                mem[_1788 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_1788 + 68]
                t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                continue 
            mem[_1788 + 36] = mem[_1788 + 32]
            u = _1788 + 64
            v = _1788 + 68
            s = mem[_1788] - 32
            while s >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                s = s - 32
                continue 
            mem[_1788 + floor32(mem[_1788] - 32) + 68] = mem[_1788 + (2 * floor32(mem[_1788] - 32)) + -mem[_1788] + 128 len mem[_1788] + -floor32(mem[_1788] - 32) - 32] or Mask(8 * -mem[_1788] + floor32(mem[_1788] - 32) + 64, -(8 * -mem[_1788] + floor32(mem[_1788] - 32) + 64) + 256, mem[_1788 + floor32(mem[_1788] - 32) + 68])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_1788] + _1788 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                continue 
            _2133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2133] = return_data.size
            mem[_2133 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_2133 + 32]
            t = 997 * t * _1604 / (1000 * _1605) + (997 * t)
            continue 
        _1583 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_1583] = return_data.size
        mem[_1583 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'l'
        require return_data.size >= 64
        _1606 = mem[_1583 + 32]
        _1607 = mem[_1583 + 64]
        if address(s) == address(_1055):
            if mem[_1583 + 32] <= 0:
                revert with 0, 'l'
            if mem[_1583 + 64] <= 0:
                revert with 0, 'l'
            require (1000 * mem[_1583 + 32]) + (997 * t)
            if address(s) != address(_1055):
                idx = idx + 1
                s = _1055
                t = 997 * t * mem[_1583 + 64] / (1000 * mem[_1583 + 32]) + (997 * t)
                continue 
            _1732 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[_1732 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1732 + 36 len 28]
            if mem[_1732] < 32:
                mem[_1732 + 36] = Mask(-(8 * -mem[_1732] + 32) + 256, 0, mem[_1732 + 32]) or Mask(8 * -mem[_1732] + 32, -(8 * -mem[_1732] + 32) + 256, 4)
                staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1732 + 36 len 4] with:
                        gas gas_remaining wei
                       args mem[_1732 + 40 len mem[_1732] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        idx = idx + 1
                        s = 0
                        t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                        continue 
                    require mem[96] >= 32
                    idx = idx + 1
                    s = mem[128]
                    t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                    continue 
                mem[64] = _1732 + ceil32(return_data.size) + 37
                mem[_1732 + 36] = return_data.size
                mem[_1732 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                    continue 
                require return_data.size >= 32
                idx = idx + 1
                s = mem[_1732 + 68]
                t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                continue 
            mem[_1732 + 36] = mem[_1732 + 32]
            u = _1732 + 64
            v = _1732 + 68
            s = mem[_1732] - 32
            while s >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                s = s - 32
                continue 
            mem[_1732 + floor32(mem[_1732] - 32) + 68] = mem[_1732 + (2 * floor32(mem[_1732] - 32)) + -mem[_1732] + 128 len mem[_1732] + -floor32(mem[_1732] - 32) - 32] or Mask(8 * -mem[_1732] + floor32(mem[_1732] - 32) + 64, -(8 * -mem[_1732] + floor32(mem[_1732] - 32) + 64) + 256, mem[_1732 + floor32(mem[_1732] - 32) + 68])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len mem[_1732] + _1732 + -mem[64] + 32]
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                continue 
            _2134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_2134] = return_data.size
            mem[_2134 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_2134 + 32]
            t = 997 * t * _1607 / (1000 * _1606) + (997 * t)
            continue 
        if mem[_1583 + 64] <= 0:
            revert with 0, 'l'
        if mem[_1583 + 32] <= 0:
            revert with 0, 'l'
        require (1000 * mem[_1583 + 64]) + (997 * t)
        if address(s) != address(_1055):
            idx = idx + 1
            s = _1055
            t = 997 * t * mem[_1583 + 32] / (1000 * mem[_1583 + 64]) + (997 * t)
            continue 
        _1796 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        mem[_1796 + 32] = 0xd21220a700000000000000000000000000000000000000000000000000000000 or mem[_1796 + 36 len 28]
        if mem[_1796] < 32:
            mem[_1796 + 36] = Mask(-(8 * -mem[_1796] + 32) + 256, 0, mem[_1796 + 32]) or Mask(8 * -mem[_1796] + 32, -(8 * -mem[_1796] + 32) + 256, 4)
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[_1796 + 36 len 4] with:
                    gas gas_remaining wei
                   args mem[_1796 + 40 len mem[_1796] - 4]
            if not return_data.size:
                if not ext_call.success:
                    idx = idx + 1
                    s = 0
                    t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
                    continue 
                require mem[96] >= 32
                idx = idx + 1
                s = mem[128]
                t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
                continue 
            mem[64] = _1796 + ceil32(return_data.size) + 37
            mem[_1796 + 36] = return_data.size
            mem[_1796 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
                continue 
            require return_data.size >= 32
            idx = idx + 1
            s = mem[_1796 + 68]
            t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
            continue 
        mem[_1796 + 36] = mem[_1796 + 32]
        u = _1796 + 64
        v = _1796 + 68
        s = mem[_1796] - 32
        while s >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            s = s - 32
            continue 
        mem[_1796 + floor32(mem[_1796] - 32) + 68] = mem[_1796 + (2 * floor32(mem[_1796] - 32)) + -mem[_1796] + 128 len mem[_1796] + -floor32(mem[_1796] - 32) - 32] or Mask(8 * -mem[_1796] + floor32(mem[_1796] - 32) + 64, -(8 * -mem[_1796] + floor32(mem[_1796] - 32) + 64) + 256, mem[_1796 + floor32(mem[_1796] - 32) + 68])
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len mem[_1796] + _1796 + -mem[64] + 32]
        if not return_data.size:
            if not ext_call.success:
                idx = idx + 1
                s = 0
                t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
                continue 
            require mem[96] >= 32
            idx = idx + 1
            s = mem[128]
            t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
            continue 
        _2135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_2135] = return_data.size
        mem[_2135 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            idx = idx + 1
            s = 0
            t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
            continue 
        require return_data.size >= 32
        idx = idx + 1
        s = mem[_2135 + 32]
        t = 997 * t * _1606 / (1000 * _1607) + (997 * t)
        continue 
    return t, address(s)
}



}
