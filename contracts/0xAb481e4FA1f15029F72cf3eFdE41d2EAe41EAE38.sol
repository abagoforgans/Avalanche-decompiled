contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
array of struct stor0;
uint256 viewValue;
address stor3;

function viewValue() {
    return viewValue
}

function sub_a497a698(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    selfdestruct(address(arg1))
}

function getLatestPrice() {
    require ext_code.size(stor3)
    staticcall stor3.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function viewData() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function sub_df16e52d(?) {
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(0xa77230d17318075983913bc2145db16c7366156)
    staticcall 0xa77230d17318075983913bc2145db16c7366156.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] >= 3:
        if ext_call.return_data[31 len 1] <= 3:
            require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
            staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
            staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= 3:
                if ext_call.return_data[31 len 1] <= 3:
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < 3:
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - 3):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - 3) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - 3):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3):
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[31 len 1] - 3)
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
                if not t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / ext_call.return_data[32] / t * s)
            if 3 < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(-ext_call.return_data[31 len 1] + 3):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / ext_call.return_data[32])
            if bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 32)):
                if 10^uint8(-ext_call.return_data[31 len 1] + 3) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3) == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3))
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 3)
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
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * t * s:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / ext_call.return_data[32] * t * s)
        if ext_call.return_data[31 len 1] < 3:
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[31 len 1] - 3):
            require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
            staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
            staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= 3:
                if ext_call.return_data[31 len 1] <= 3:
                    if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / 1 / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < 3:
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - 3):
                    if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / 1 / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - 3) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - 3):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3):
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / 1 / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[31 len 1] - 3)
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
                if not t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / 1 / ext_call.return_data[32] / t * s)
            if 3 < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(-ext_call.return_data[31 len 1] + 3):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / 1 / ext_call.return_data[32])
            if bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 32)):
                if 10^uint8(-ext_call.return_data[31 len 1] + 3) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3) == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / 1 / ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3))
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 3)
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
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * t * s:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / 1 / ext_call.return_data[32] * t * s)
        if bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 32)):
            if 10^uint8(ext_call.return_data[31 len 1] - 3) > -1:
                revert with 'NH{q', 17
            if not 10^uint8(ext_call.return_data[31 len 1] - 3):
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                revert with 'NH{q', 17
            require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
            staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
            staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= 3:
                if ext_call.return_data[31 len 1] <= 3:
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < 3:
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - 3):
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - 3) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - 3):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3):
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                        revert with 'NH{q', 17
                    return (1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[31 len 1] - 3)
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
                if not t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) / ext_call.return_data[32] / t * s)
            if 3 < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(-ext_call.return_data[31 len 1] + 3):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) / ext_call.return_data[32])
            if bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 32)):
                if 10^uint8(-ext_call.return_data[31 len 1] + 3) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3):
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3) == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) / ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3))
            s = 10
            t = 1
            idx = uint8(-ext_call.return_data[31 len 1] + 3)
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
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * t * s:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - 3) / ext_call.return_data[32] * t * s)
        s = 10
        t = 1
        idx = uint8(ext_call.return_data[31 len 1] - 3)
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
        if not t * s:
            revert with 'NH{q', 18
        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
            revert with 'NH{q', 17
        require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
        staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
        staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= 3:
            if ext_call.return_data[31 len 1] <= 3:
                if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / t * s / ext_call.return_data[32])
            if ext_call.return_data[31 len 1] < 3:
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - 3):
                if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 1:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / t * s / ext_call.return_data[32] / 1)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - 3) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - 3):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3):
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3))
            u = 10
            v = 1
            idx = uint8(ext_call.return_data[31 len 1] - 3)
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
            if not v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / v * u:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / t * s / ext_call.return_data[32] / v * u)
        if 3 < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(-ext_call.return_data[31 len 1] + 3):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / t * s / ext_call.return_data[32])
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 32)):
            if 10^uint8(-ext_call.return_data[31 len 1] + 3) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3) == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / t * s / ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3))
        u = 10
        v = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 3)
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
        if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * v * u:
            revert with 'NH{q', 18
        if 1000 * ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
            revert with 'NH{q', 17
        return (1000 * ext_call.return_data[32] / t * s / ext_call.return_data[32] * v * u)
    if 3 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not uint8(-ext_call.return_data[31 len 1] + 3):
        if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
        staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
        staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= 3:
            if ext_call.return_data[31 len 1] <= 3:
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / ext_call.return_data[32])
            if ext_call.return_data[31 len 1] < 3:
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - 3):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 1:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / ext_call.return_data[32] / 1)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - 3) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - 3):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3):
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[31 len 1] - 3)
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
            if not t * s:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / t * s:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / ext_call.return_data[32] / t * s)
        if 3 < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(-ext_call.return_data[31 len 1] + 3):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / ext_call.return_data[32])
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 32)):
            if 10^uint8(-ext_call.return_data[31 len 1] + 3) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3) == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] / ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3))
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 3)
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
        if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * t * s:
            revert with 'NH{q', 18
        if 1000 * ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
            revert with 'NH{q', 17
        return (1000 * ext_call.return_data[32] / ext_call.return_data[32] * t * s)
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 32)):
        if 10^uint8(-ext_call.return_data[31 len 1] + 3) > -1:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-ext_call.return_data[31 len 1] + 3):
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
            revert with 'NH{q', 17
        require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
        staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
        staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= 3:
            if ext_call.return_data[31 len 1] <= 3:
                if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) / ext_call.return_data[32])
            if ext_call.return_data[31 len 1] < 3:
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - 3):
                if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 1:
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) / ext_call.return_data[32] / 1)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - 3) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - 3):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3):
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                    revert with 'NH{q', 17
                return (1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3))
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[31 len 1] - 3)
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
            if not t * s:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / t * s:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) / ext_call.return_data[32] / t * s)
        if 3 < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(-ext_call.return_data[31 len 1] + 3):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) / ext_call.return_data[32])
        if bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 32)):
            if 10^uint8(-ext_call.return_data[31 len 1] + 3) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3):
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3) == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) / ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3))
        s = 10
        t = 1
        idx = uint8(-ext_call.return_data[31 len 1] + 3)
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
        if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0) and ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * t * s:
            revert with 'NH{q', 18
        if 1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
            revert with 'NH{q', 17
        return (1000 * ext_call.return_data[32] * 10^uint8(-uint8(ext_call.return_data[0]) + 3) / ext_call.return_data[32] * t * s)
    s = 10
    t = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 3)
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
    if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
        revert with 'NH{q', 17
    if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
        revert with 'NH{q', 17
    require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
    staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(0x192f2dba961bb0277520c082d6bfa87d5961333e)
    staticcall 0x192f2dba961bb0277520c082d6bfa87d5961333e.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] >= 3:
        if ext_call.return_data[31 len 1] <= 3:
            if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] * t * s / ext_call.return_data[32])
        if ext_call.return_data[31 len 1] < 3:
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[31 len 1] - 3):
            if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / 1:
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] * t * s / ext_call.return_data[32] / 1)
        if bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - 3) < 32)):
            if 10^uint8(ext_call.return_data[31 len 1] - 3) > -1:
                revert with 'NH{q', 17
            if not 10^uint8(ext_call.return_data[31 len 1] - 3):
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3):
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3) == -1:
                revert with 'NH{q', 17
            return (1000 * ext_call.return_data[32] * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - 3))
        u = 10
        v = 1
        idx = uint8(ext_call.return_data[31 len 1] - 3)
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
        if not v * u:
            revert with 'NH{q', 18
        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] / v * u:
            revert with 'NH{q', 18
        if 1000 * ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
            revert with 'NH{q', 17
        return (1000 * ext_call.return_data[32] * t * s / ext_call.return_data[32] / v * u)
    if 3 < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not uint8(-ext_call.return_data[31 len 1] + 3):
        if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if 1000 * ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
            revert with 'NH{q', 17
        return (1000 * ext_call.return_data[32] * t * s / ext_call.return_data[32])
    if bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 78)) or bool(bool(uint8(-ext_call.return_data[31 len 1] + 3) < 32)):
        if 10^uint8(-ext_call.return_data[31 len 1] + 3) > -1:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(-ext_call.return_data[31 len 1] + 3):
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and 10^uint8(-ext_call.return_data[31 len 1] + 3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(-ext_call.return_data[31 len 1] + 3):
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3):
            revert with 'NH{q', 18
        if 1000 * ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3) == -1:
            revert with 'NH{q', 17
        return (1000 * ext_call.return_data[32] * t * s / ext_call.return_data[32] * 10^uint8(-ext_call.return_data[31 len 1] + 3))
    u = 10
    v = 1
    idx = uint8(-ext_call.return_data[31 len 1] + 3)
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
    if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
        revert with 'NH{q', 17
    if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
        revert with 'NH{q', 17
    if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0xffdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cad:
        revert with 'NH{q', 17
    if not ext_call.return_data[32] * v * u:
        revert with 'NH{q', 18
    if 1000 * ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
        revert with 'NH{q', 17
    return (1000 * ext_call.return_data[32] * t * s / ext_call.return_data[32] * v * u)
}

function sub_97436655(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == uint8(arg3)
    if uint8(arg3) <= 0:
        revert with 0, 'Invalid _decimals'
    if uint8(arg3) > 18:
        revert with 0, 'Invalid _decimals'
    if not uint8(arg3):
        require ext_code.size(address(arg1))
        staticcall address(arg1).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= uint8(arg3):
            if ext_call.return_data[31 len 1] <= uint8(arg3):
                require ext_code.size(address(arg2))
                staticcall address(arg2).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[96]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[31 len 1] >= uint8(arg3):
                    if ext_call.return_data[31 len 1] <= uint8(arg3):
                        if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / ext_call.return_data[32])
                    if ext_call.return_data[31 len 1] < uint8(arg3):
                        revert with 'NH{q', 17
                    if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 1:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / ext_call.return_data[32] / 1)
                    if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                        if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                    if not t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / ext_call.return_data[32] / t * s)
                if uint8(arg3) < ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 17
                if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / ext_call.return_data[32])
                if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                    if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / ext_call.return_data[32] * t * s)
            if ext_call.return_data[31 len 1] < uint8(arg3):
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                require ext_code.size(address(arg2))
                staticcall address(arg2).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[96]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[31 len 1] >= uint8(arg3):
                    if ext_call.return_data[31 len 1] <= uint8(arg3):
                        if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 1 / ext_call.return_data[32])
                    if ext_call.return_data[31 len 1] < uint8(arg3):
                        revert with 'NH{q', 17
                    if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 1:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 1 / ext_call.return_data[32] / 1)
                    if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                        if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 1 / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                    if not t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 / ext_call.return_data[32] / t * s)
                if uint8(arg3) < ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 17
                if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 / ext_call.return_data[32])
                if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                    if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 1 > 0) and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 1 < 0) and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 1 == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 1 / ext_call.return_data[32] * t * s)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[96]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[31 len 1] >= uint8(arg3):
                    if ext_call.return_data[31 len 1] <= uint8(arg3):
                        if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) / ext_call.return_data[32])
                    if ext_call.return_data[31 len 1] < uint8(arg3):
                        revert with 'NH{q', 17
                    if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 1:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) / ext_call.return_data[32] / 1)
                    if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                        if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                    if not t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) / ext_call.return_data[32] / t * s)
                if uint8(arg3) < ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 17
                if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) / ext_call.return_data[32])
                if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                    if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0) and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) / ext_call.return_data[32] * t * s)
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
            if not t * s:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / t * s / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / t * s / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                u = 10
                v = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / t * s / ext_call.return_data[32] / v * u)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / t * s / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            u = 10
            v = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / t * s > 0) and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] / t * s < 0) and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] / t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] / t * s / ext_call.return_data[32] * v * u)
        if uint8(arg3) < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / ext_call.return_data[32] / t * s)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * t * s:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] / ext_call.return_data[32] * t * s)
        if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
            if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) / ext_call.return_data[32] / t * s)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0) and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * t * s:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) / ext_call.return_data[32] * t * s)
        s = 10
        t = 1
        idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
        if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= uint8(arg3):
            if ext_call.return_data[31 len 1] <= uint8(arg3):
                if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32])
            if ext_call.return_data[31 len 1] < uint8(arg3):
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 1:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / 1)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
            u = 10
            v = 1
            idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
            if not v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / v * u)
        if uint8(arg3) < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s / ext_call.return_data[32])
        if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
            if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
        u = 10
        v = 1
        idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
        if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * t * s > 0) and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] * t * s < 0) and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * v * u:
            revert with 'NH{q', 18
        if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
            revert with 'NH{q', 17
        return (ext_call.return_data[32] * t * s / ext_call.return_data[32] * v * u)
    if bool(bool(uint8(arg3) < 78)) or bool(bool(uint8(arg3) < 32)):
        if 10^uint8(arg3) > -1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg1))
        staticcall address(arg1).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= uint8(arg3):
            if ext_call.return_data[31 len 1] <= uint8(arg3):
                require ext_code.size(address(arg2))
                staticcall address(arg2).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[96]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[31 len 1] >= uint8(arg3):
                    if ext_call.return_data[31 len 1] <= uint8(arg3):
                        if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32])
                    if ext_call.return_data[31 len 1] < uint8(arg3):
                        revert with 'NH{q', 17
                    if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 1:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] / 1)
                    if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                        if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                    if not t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] / t * s)
                if uint8(arg3) < ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 17
                if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32])
                if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                    if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] * t * s)
            if ext_call.return_data[31 len 1] < uint8(arg3):
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                require ext_code.size(address(arg2))
                staticcall address(arg2).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[96]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[31 len 1] >= uint8(arg3):
                    if ext_call.return_data[31 len 1] <= uint8(arg3):
                        if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 1 * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 1 * 10^uint8(arg3) / ext_call.return_data[32])
                    if ext_call.return_data[31 len 1] < uint8(arg3):
                        revert with 'NH{q', 17
                    if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 1:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 1 * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 1 * 10^uint8(arg3) / ext_call.return_data[32] / 1)
                    if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                        if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 1 * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 1 * 10^uint8(arg3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                    if not t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 * 10^uint8(arg3) / ext_call.return_data[32] / t * s)
                if uint8(arg3) < ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 17
                if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 * 10^uint8(arg3) / ext_call.return_data[32])
                if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                    if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 * 10^uint8(arg3) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 1 * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 1 * 10^uint8(arg3) / ext_call.return_data[32] * t * s)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                require ext_code.size(address(arg2))
                staticcall address(arg2).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_call.return_data[64] == ext_call.return_data[64]
                require ext_call.return_data[96] == ext_call.return_data[96]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[31 len 1] >= uint8(arg3):
                    if ext_call.return_data[31 len 1] <= uint8(arg3):
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32]:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) / ext_call.return_data[32])
                    if ext_call.return_data[31 len 1] < uint8(arg3):
                        revert with 'NH{q', 17
                    if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 1:
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) / ext_call.return_data[32] / 1)
                    if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                        if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                            revert with 'NH{q', 18
                        if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                            revert with 'NH{q', 17
                        return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                    s = 10
                    t = 1
                    idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                    if not t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) / ext_call.return_data[32] / t * s)
                if uint8(arg3) < ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 17
                if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) / ext_call.return_data[32])
                if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                    if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
                s = 10
                t = 1
                idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * 10^uint8(arg3) / ext_call.return_data[32] * t * s)
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
            if not t * s:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / t * s * 10^uint8(arg3) / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / t * s * 10^uint8(arg3) / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / t * s * 10^uint8(arg3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                u = 10
                v = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / t * s * 10^uint8(arg3) / ext_call.return_data[32] / v * u)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / t * s * 10^uint8(arg3) / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / t * s * 10^uint8(arg3) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            u = 10
            v = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] / t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] / t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] / t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] / t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] / t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] / t * s * 10^uint8(arg3) / ext_call.return_data[32] * v * u)
        if uint8(arg3) < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] / t * s)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * t * s:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * 10^uint8(arg3) / ext_call.return_data[32] * t * s)
        if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
            if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and t * s == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / t * s:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / t * s == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) / ext_call.return_data[32] / t * s)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            s = 10
            t = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * t * s:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * t * s == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * 10^uint8(arg3) / ext_call.return_data[32] * t * s)
        s = 10
        t = 1
        idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
        if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= uint8(arg3):
            if ext_call.return_data[31 len 1] <= uint8(arg3):
                if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s * 10^uint8(arg3) / ext_call.return_data[32])
            if ext_call.return_data[31 len 1] < uint8(arg3):
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 1:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s * 10^uint8(arg3) / ext_call.return_data[32] / 1)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s * 10^uint8(arg3) / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
            u = 10
            v = 1
            idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
            if not v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s * 10^uint8(arg3) / ext_call.return_data[32] / v * u)
        if uint8(arg3) < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s * 10^uint8(arg3) / ext_call.return_data[32])
        if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
            if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s * 10^uint8(arg3) / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
        u = 10
        v = 1
        idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
        if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
            revert with 'NH{q', 17
        if ext_call.return_data[32] * t * s > 0 and 10^uint8(arg3) < 0 and 10^uint8(arg3) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) > 0 and ext_call.return_data[32] * t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(arg3):
            revert with 'NH{q', 17
        if ext_call.return_data[32] * t * s < 0 and 10^uint8(arg3) < 0 and ext_call.return_data[32] * t * s < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(arg3):
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * v * u:
            revert with 'NH{q', 18
        if ext_call.return_data[32] * t * s * 10^uint8(arg3) == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
            revert with 'NH{q', 17
        return (ext_call.return_data[32] * t * s * 10^uint8(arg3) / ext_call.return_data[32] * v * u)
    s = 10
    t = 1
    idx = uint8(arg3)
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
    require ext_code.size(address(arg1))
    staticcall address(arg1).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] >= uint8(arg3):
        if ext_call.return_data[31 len 1] <= uint8(arg3):
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * t * s / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                u = 10
                v = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / v * u)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            u = 10
            v = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s / ext_call.return_data[32] * v * u)
        if ext_call.return_data[31 len 1] < uint8(arg3):
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if ext_call.return_data[32] / 1 > 0 and t * s > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and t * s > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and t * s < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 * t * s / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if ext_call.return_data[32] / 1 > 0 and t * s > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and t * s > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and t * s < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 * t * s / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and t * s > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and t * s > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 1 < 0 and t * s < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 1 * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 1 * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                u = 10
                v = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 > 0 and t * s > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 < 0 and t * s > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 < 0 and t * s < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 1 * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 1 * t * s / ext_call.return_data[32] / v * u)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 > 0 and t * s > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 < 0 and t * s > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 < 0 and t * s < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 1 * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 1 * t * s / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 > 0 and t * s > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 < 0 and t * s > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 1 < 0 and t * s < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 1 * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 1 * t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            u = 10
            v = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / 1 > 0 and t * s > 0 and ext_call.return_data[32] / 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / 1 > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / 1 < 0 and t * s > 0 and ext_call.return_data[32] / 1 < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / 1 < 0 and t * s < 0 and ext_call.return_data[32] / 1 < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] / 1 * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] / 1 * t * s / ext_call.return_data[32] * v * u)
        if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
            if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                revert with 'NH{q', 17
            if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                revert with 'NH{q', 17
            require ext_code.size(address(arg2))
            staticcall address(arg2).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] >= uint8(arg3):
                if ext_call.return_data[31 len 1] <= uint8(arg3):
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32]:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s / ext_call.return_data[32])
                if ext_call.return_data[31 len 1] < uint8(arg3):
                    revert with 'NH{q', 17
                if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 1:
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s / ext_call.return_data[32] / 1)
                if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                    if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                        revert with 'NH{q', 17
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                        revert with 'NH{q', 18
                    if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                        revert with 'NH{q', 17
                    return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
                u = 10
                v = 1
                idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
                if not v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / v * u:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s / ext_call.return_data[32] / v * u)
            if uint8(arg3) < ext_call.return_data[31 len 1]:
                revert with 'NH{q', 17
            if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s / ext_call.return_data[32])
            if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
                if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
            u = 10
            v = 1
            idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
            if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)):
                revert with 'NH{q', 17
            if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s > 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0 and t * s < 0 and ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] / 10^uint8(uint8(ext_call.return_data[0]) - uint8(arg3)) * t * s / ext_call.return_data[32] * v * u)
        u = 10
        v = 1
        idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
        if not v * u:
            revert with 'NH{q', 18
        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= uint8(arg3):
            if ext_call.return_data[31 len 1] <= uint8(arg3):
                if ext_call.return_data[32] / v * u > 0 and t * s > 0 and ext_call.return_data[32] / v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / v * u:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u < 0 and t * s > 0 and ext_call.return_data[32] / v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u < 0 and t * s < 0 and ext_call.return_data[32] / v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / v * u * t * s / ext_call.return_data[32])
            if ext_call.return_data[31 len 1] < uint8(arg3):
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                if ext_call.return_data[32] / v * u > 0 and t * s > 0 and ext_call.return_data[32] / v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / v * u:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u < 0 and t * s > 0 and ext_call.return_data[32] / v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u < 0 and t * s < 0 and ext_call.return_data[32] / v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 1:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / v * u * t * s / ext_call.return_data[32] / 1)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u > 0 and t * s > 0 and ext_call.return_data[32] / v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / v * u:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u < 0 and t * s > 0 and ext_call.return_data[32] / v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] / v * u < 0 and t * s < 0 and ext_call.return_data[32] / v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] / v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] / v * u * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
            w = 10
            x = 1
            idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
            while idx > 1:
                if w > -1 / w:
                    revert with 'NH{q', 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = x * w
                idx = uint255(idx) * 0.5
                continue 
            if x > -1 / w:
                revert with 'NH{q', 17
            if not x * w:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and x * w == -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u > 0 and t * s > 0 and ext_call.return_data[32] / v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u < 0 and t * s > 0 and ext_call.return_data[32] / v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u < 0 and t * s < 0 and ext_call.return_data[32] / v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / x * w:
                revert with 'NH{q', 18
            if ext_call.return_data[32] / v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / x * w == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] / v * u * t * s / ext_call.return_data[32] / x * w)
        if uint8(arg3) < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u > 0 and t * s > 0 and ext_call.return_data[32] / v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u < 0 and t * s > 0 and ext_call.return_data[32] / v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u < 0 and t * s < 0 and ext_call.return_data[32] / v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if ext_call.return_data[32] / v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] / v * u * t * s / ext_call.return_data[32])
        if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
            if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u > 0 and t * s > 0 and ext_call.return_data[32] / v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u < 0 and t * s > 0 and ext_call.return_data[32] / v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] / v * u < 0 and t * s < 0 and ext_call.return_data[32] / v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 18
            if ext_call.return_data[32] / v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] / v * u * t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
        w = 10
        x = 1
        idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
        while idx > 1:
            if w > -1 / w:
                revert with 'NH{q', 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = x * w
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and x * w > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / x * w:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and x * w < 0 and x * w < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and x * w > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / x * w:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and x * w < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / x * w:
            revert with 'NH{q', 17
        if ext_call.return_data[32] / v * u > 0 and t * s > 0 and ext_call.return_data[32] / v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] / v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] / v * u < 0 and t * s > 0 and ext_call.return_data[32] / v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] / v * u < 0 and t * s < 0 and ext_call.return_data[32] / v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * x * w:
            revert with 'NH{q', 18
        if ext_call.return_data[32] / v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * x * w == -1:
            revert with 'NH{q', 17
        return (ext_call.return_data[32] / v * u * t * s / ext_call.return_data[32] * x * w)
    if uint8(arg3) < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
        if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= uint8(arg3):
            if ext_call.return_data[31 len 1] <= uint8(arg3):
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32])
            if ext_call.return_data[31 len 1] < uint8(arg3):
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 1:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / 1)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
            u = 10
            v = 1
            idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
            if not v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s / ext_call.return_data[32] / v * u)
        if uint8(arg3) < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s / ext_call.return_data[32])
        if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
            if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 18
            if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
        u = 10
        v = 1
        idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
        if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and t * s > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and t * s < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * v * u:
            revert with 'NH{q', 18
        if ext_call.return_data[32] * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
            revert with 'NH{q', 17
        return (ext_call.return_data[32] * t * s / ext_call.return_data[32] * v * u)
    if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
        if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            revert with 'NH{q', 17
        require ext_code.size(address(arg2))
        staticcall address(arg2).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] >= uint8(arg3):
            if ext_call.return_data[31 len 1] <= uint8(arg3):
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32]:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s / ext_call.return_data[32])
            if ext_call.return_data[31 len 1] < uint8(arg3):
                revert with 'NH{q', 17
            if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 1:
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s / ext_call.return_data[32] / 1)
            if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
                if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                    revert with 'NH{q', 17
                if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                    revert with 'NH{q', 17
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                    revert with 'NH{q', 17
                if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                    revert with 'NH{q', 18
                if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                    revert with 'NH{q', 17
                return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
            u = 10
            v = 1
            idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
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
            if not v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and v * u == -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / v * u:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / v * u == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s / ext_call.return_data[32] / v * u)
        if uint8(arg3) < ext_call.return_data[31 len 1]:
            revert with 'NH{q', 17
        if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s / ext_call.return_data[32])
        if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
            if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
                revert with 'NH{q', 18
            if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
        u = 10
        v = 1
        idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
        if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])):
            revert with 'NH{q', 17
        if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s > 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0 and t * s < 0 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * v * u:
            revert with 'NH{q', 18
        if ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * v * u == -1:
            revert with 'NH{q', 17
        return (ext_call.return_data[32] * 10^uint8(uint8(arg3) - uint8(ext_call.return_data[0])) * t * s / ext_call.return_data[32] * v * u)
    u = 10
    v = 1
    idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
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
    if ext_call.return_data[32] > 0 and v * u > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
        revert with 'NH{q', 17
    if ext_call.return_data[32] > 0 and v * u < 0 and v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < 0 and v * u > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / v * u:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < 0 and v * u < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v * u:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] >= uint8(arg3):
        if ext_call.return_data[31 len 1] <= uint8(arg3):
            if ext_call.return_data[32] * v * u > 0 and t * s > 0 and ext_call.return_data[32] * v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u < 0 and t * s > 0 and ext_call.return_data[32] * v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u < 0 and t * s < 0 and ext_call.return_data[32] * v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * v * u * t * s / ext_call.return_data[32])
        if ext_call.return_data[31 len 1] < uint8(arg3):
            revert with 'NH{q', 17
        if not uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
            if ext_call.return_data[32] * v * u > 0 and t * s > 0 and ext_call.return_data[32] * v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u < 0 and t * s > 0 and ext_call.return_data[32] * v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u < 0 and t * s < 0 and ext_call.return_data[32] * v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / 1:
                revert with 'NH{q', 18
            if ext_call.return_data[32] * v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 1 == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * v * u * t * s / ext_call.return_data[32] / 1)
        if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(arg3)) < 32)):
            if 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) > -1:
                revert with 'NH{q', 17
            if not 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                revert with 'NH{q', 18
            if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u > 0 and t * s > 0 and ext_call.return_data[32] * v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * v * u:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u < 0 and t * s > 0 and ext_call.return_data[32] * v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[32] * v * u < 0 and t * s < 0 and ext_call.return_data[32] * v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
                revert with 'NH{q', 17
            if not ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)):
                revert with 'NH{q', 18
            if ext_call.return_data[32] * v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)) == -1:
                revert with 'NH{q', 17
            return (ext_call.return_data[32] * v * u * t * s / ext_call.return_data[32] / 10^uint8(ext_call.return_data[31 len 1] - uint8(arg3)))
        w = 10
        x = 1
        idx = uint8(ext_call.return_data[31 len 1] - uint8(arg3))
        while idx > 1:
            if w > -1 / w:
                revert with 'NH{q', 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = x * w
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 'NH{q', 17
        if not x * w:
            revert with 'NH{q', 18
        if ext_call.return_data[32] == 0x8000000000000000000000000000000000000000000000000000000000000000 and x * w == -1:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u > 0 and t * s > 0 and ext_call.return_data[32] * v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u < 0 and t * s > 0 and ext_call.return_data[32] * v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u < 0 and t * s < 0 and ext_call.return_data[32] * v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] / x * w:
            revert with 'NH{q', 18
        if ext_call.return_data[32] * v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] / x * w == -1:
            revert with 'NH{q', 17
        return (ext_call.return_data[32] * v * u * t * s / ext_call.return_data[32] / x * w)
    if uint8(arg3) < ext_call.return_data[31 len 1]:
        revert with 'NH{q', 17
    if not uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
        if bool(ext_call.return_data[32] > 0) and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if bool(ext_call.return_data[32] < 0) and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u > 0 and t * s > 0 and ext_call.return_data[32] * v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u < 0 and t * s > 0 and ext_call.return_data[32] * v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u < 0 and t * s < 0 and ext_call.return_data[32] * v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if ext_call.return_data[32] * v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] == -1:
            revert with 'NH{q', 17
        return (ext_call.return_data[32] * v * u * t * s / ext_call.return_data[32])
    if bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 32)):
        if 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > -1:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            revert with 'NH{q', 17
        if ext_call.return_data[32] > 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            revert with 'NH{q', 17
        if ext_call.return_data[32] < 0 and 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u > 0 and t * s > 0 and ext_call.return_data[32] * v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * v * u:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u < 0 and t * s > 0 and ext_call.return_data[32] * v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * v * u < 0 and t * s < 0 and ext_call.return_data[32] * v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
            revert with 'NH{q', 17
        if not ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]):
            revert with 'NH{q', 18
        if ext_call.return_data[32] * v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]) == -1:
            revert with 'NH{q', 17
        return (ext_call.return_data[32] * v * u * t * s / ext_call.return_data[32] * 10^uint8(uint8(arg3) - ext_call.return_data[31 len 1]))
    w = 10
    x = 1
    idx = uint8(uint8(arg3) - ext_call.return_data[31 len 1])
    while idx > 1:
        if w > -1 / w:
            revert with 'NH{q', 17
        if not bool(idx):
            w = w * w
            x = x
            idx = uint255(idx) * 0.5
            continue 
        w = w * w
        x = x * w
        idx = uint255(idx) * 0.5
        continue 
    if x > -1 / w:
        revert with 'NH{q', 17
    if ext_call.return_data[32] > 0 and x * w > 0 and ext_call.return_data[32] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / x * w:
        revert with 'NH{q', 17
    if ext_call.return_data[32] > 0 and x * w < 0 and x * w < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < 0 and x * w > 0 and ext_call.return_data[32] < 0x8000000000000000000000000000000000000000000000000000000000000000 / x * w:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < 0 and x * w < 0 and ext_call.return_data[32] < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / x * w:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * v * u > 0 and t * s > 0 and ext_call.return_data[32] * v * u > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * v * u > 0 and t * s < 0 and t * s < 0x8000000000000000000000000000000000000000000000000000000000000000 / ext_call.return_data[32] * v * u:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * v * u < 0 and t * s > 0 and ext_call.return_data[32] * v * u < 0x8000000000000000000000000000000000000000000000000000000000000000 / t * s:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * v * u < 0 and t * s < 0 and ext_call.return_data[32] * v * u < 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / t * s:
        revert with 'NH{q', 17
    if not ext_call.return_data[32] * x * w:
        revert with 'NH{q', 18
    if ext_call.return_data[32] * v * u * t * s == 0x8000000000000000000000000000000000000000000000000000000000000000 and ext_call.return_data[32] * x * w == -1:
        revert with 'NH{q', 17
    return (ext_call.return_data[32] * v * u * t * s / ext_call.return_data[32] * x * w)
}



}
