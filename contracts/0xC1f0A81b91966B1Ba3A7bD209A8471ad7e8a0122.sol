contract main {




// =====================  Runtime code  =====================


address sub_c7cd8144Address;
address sub_1928346aAddress;

function sub_1928346a(?) payable {
    return sub_1928346aAddress
}

function sub_c7cd8144(?) payable {
    return sub_c7cd8144Address
}

function _fallback() payable {
    revert
}

function getPrice(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_c7cd8144Address)
    staticcall sub_c7cd8144Address.0x9185f6ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_c7cd8144Address)
    if ext_call.return_data[0]:
        staticcall sub_c7cd8144Address.0x9185f6ec with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ext_code.size(arg2)
            staticcall arg2.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not uint8(ext_call.return_data[0]):
                if not ext_call.return_data[31 len 1]:
                    return 10^18, block.timestamp
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if 10^ext_call.return_data[31 len 1] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    return 10^18 * 10^ext_call.return_data[31 len 1], block.timestamp
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
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
                if t * s > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                return 10^18 * t * s, block.timestamp
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if 10^uint8(ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if not ext_call.return_data[31 len 1]:
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    return 10^18 / 10^uint8(ext_call.return_data[0]), block.timestamp
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if 10^ext_call.return_data[31 len 1] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    return 10^18 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]), block.timestamp
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
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
                if t * s > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 'NH{q', 18
                return 10^18 * t * s / 10^uint8(ext_call.return_data[0]), block.timestamp
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
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
            if not ext_call.return_data[31 len 1]:
                if not t * s:
                    revert with 'NH{q', 18
                return 10^18 / t * s, block.timestamp
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if 10^ext_call.return_data[31 len 1] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                return 10^18 * 10^ext_call.return_data[31 len 1] / t * s, block.timestamp
            u = 10
            v = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if u > -1 / u:
                    revert with 'NH{q', 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = v * u
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 'NH{q', 17
            if v * u > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not t * s:
                revert with 'NH{q', 18
            return 10^18 * v * u / t * s, block.timestamp
    staticcall sub_c7cd8144Address.0x9185f6ec with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_c7cd8144Address)
    if ext_call.return_data[0]:
        staticcall sub_c7cd8144Address.0xac41865a with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        return ext_call.return_data[0], ext_call.return_data[32]
    staticcall sub_c7cd8144Address.0x9185f6ec with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_c7cd8144Address)
    if ext_call.return_data[0]:
        staticcall sub_c7cd8144Address.0xac41865a with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        return ext_call.return_data[0], ext_call.return_data[32]
    staticcall sub_c7cd8144Address.0xac41865a with:
            gas gas_remaining wei
           args address(arg1), sub_1928346aAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_code.size(sub_c7cd8144Address)
    staticcall sub_c7cd8144Address.0xac41865a with:
            gas gas_remaining wei
           args address(arg2), sub_1928346aAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if arg1 <= sub_1928346aAddress:
        if arg2 <= sub_1928346aAddress:
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            return 10^18 * ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[32]
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if arg1 <= arg2:
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 18
            return 10^18 * ext_call.return_data[0] / 1000000000000000000 * 10^18 / ext_call.return_data[0], ext_call.return_data[32]
        if 1000000000000000000 * 10^18 / ext_call.return_data[0] and 10^18 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return 10^18 * 1000000000000000000 * 10^18 / ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[32]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg2 <= sub_1928346aAddress:
        if arg1 <= arg2:
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] and 10^18 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            return 10^18 * 1000000000000000000 * 10^18 / ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[32]
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
            revert with 'NH{q', 18
        return 10^18 * ext_call.return_data[0] / 1000000000000000000 * 10^18 / ext_call.return_data[0], ext_call.return_data[32]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if 1000000000000000000 * 10^18 / ext_call.return_data[0] and 10^18 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 1000000000000000000 * 10^18 / ext_call.return_data[0]:
        revert with 'NH{q', 18
    return 10^18 * 1000000000000000000 * 10^18 / ext_call.return_data[0] / 1000000000000000000 * 10^18 / ext_call.return_data[0], 
           ext_call.return_data[32]
}



}
