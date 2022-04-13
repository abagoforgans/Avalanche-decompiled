contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;

function _fallback() payable {
    revert
}

function witdhraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'You are not the owner.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_785e4ba6(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg4))
    staticcall address(arg4).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    call address(arg1).0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])
            else:
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
                if Mask(112, 0, ext_call.return_data[32]) and t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0])
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])
                else:
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
                    if Mask(112, 0, ext_call.return_data[32]) and t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0])
        else:
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
            if Mask(112, 0, ext_call.return_data[32]) and t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[32]) * 10^ext_call.return_data[31 len 1] / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0])
                else:
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
                    if Mask(112, 0, ext_call.return_data[32]) and v * u > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[32]) * v * u / Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    emit 0xf03049b4: ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]), Mask(112, 0, ext_call.return_data[32]) * v * u / Mask(112, 0, ext_call.return_data[0]), 10000 * Mask(112, 0, ext_call.return_data[32]) * t * s / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * v * u / Mask(112, 0, ext_call.return_data[0])
}

function sub_ba5f07b8(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == arg7
    require arg8 == bool(arg8)
    if stor1 != msg.sender:
        revert with 0, 'You are not the owner.'
    require ext_code.size(address(arg5))
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg6))
    staticcall address(arg6).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg1))
    call address(arg1).0x313ce567 with:
         gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if not ext_call.return_data[31 len 1]:
            if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if arg7 > ext_call.return_data[0]:
                revert with 0, 'not enough balance token1'
            mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
            mem[(7 * ceil32(return_data.size)) + 132] = stor0
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), stor0
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'approve failed.'
            mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
            mem[(8 * ceil32(return_data.size)) + 132] = stor0
            require ext_code.size(address(arg2))
            call address(arg2).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg3), stor0
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'approve failed.'
            mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(10 * ceil32(return_data.size)) + 132] = stor0
            require ext_code.size(address(arg1))
            call address(arg1).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg4), stor0
            mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'approve failed.'
            mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
            mem[(11 * ceil32(return_data.size)) + 132] = stor0
            require ext_code.size(address(arg2))
            call address(arg2).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg4), stor0
            mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'approve failed.'
            mem[(12 * ceil32(return_data.size)) + 96] = 2
            mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
            mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
            mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 196] = arg7
            mem[(12 * ceil32(return_data.size)) + 228] = 0
            mem[(12 * ceil32(return_data.size)) + 260] = 160
            mem[(12 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (12 * ceil32(return_data.size)) + 128
            t = (12 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(12 * ceil32(return_data.size)) + 292] = this.address
            mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
            require ext_code.size(address(arg3))
            call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _431 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
            require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
            _438 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                revert with 'NH{q', 65
            if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
            mem[(13 * ceil32(return_data.size)) + 192] = _438
            require _431 + (32 * _438) + 32 <= return_data.size
            idx = 0
            s = (12 * ceil32(return_data.size)) + _431 + 224
            t = (13 * ceil32(return_data.size)) + 224
            while idx < _438:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _740 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _752 = mem[_740]
            require mem[_740] == mem[_740]
            if mem[_740] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            _764 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if 0 >= mem[_764]:
                revert with 'NH{q', 50
            mem[_764 + 32] = address(arg1)
            if 1 >= mem[_764]:
                revert with 'NH{q', 50
            mem[_764 + 64] = address(arg2)
            mem[_764 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_764 + 100] = _752 - ext_call.return_data[0]
            mem[_764 + 132] = 0
            mem[_764 + 164] = 160
            mem[_764 + 260] = mem[_764]
            idx = 0
            s = _764 + 32
            t = _764 + 292
            while idx < mem[_764]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_764 + 196] = this.address
            mem[_764 + 228] = block.timestamp
            require ext_code.size(address(arg4))
            call address(arg4).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _764 + (32 * mem[_764]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1001 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1010 = mem[_1001]
            require mem[_1001] <= test266151307()
            require _1001 + mem[_1001] + 31 < _1001 + return_data.size
            _1016 = mem[_1001 + mem[_1001]]
            if mem[_1001 + mem[_1001]] > test266151307():
                revert with 'NH{q', 65
            if _1001 + ceil32(return_data.size) + floor32(mem[_1001 + mem[_1001]]) + 1 > test266151307() or floor32(mem[_1001 + mem[_1001]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _1001 + ceil32(return_data.size) + floor32(mem[_1001 + mem[_1001]]) + 1
            mem[_1001 + ceil32(return_data.size)] = _1016
            require _1010 + (32 * _1016) + 32 <= return_data.size
            idx = 0
            s = _1001 + _1010 + 32
            t = _1001 + ceil32(return_data.size) + 32
            while idx < _1016:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1184] == mem[_1184]
            if not arg8:
                if mem[_1184] < ext_call.return_data[0]:
                    revert with 0, 'Negative arb after the fact'
            emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1184]
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if arg7 > ext_call.return_data[0]:
                    revert with 0, 'not enough balance token1'
                mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
                mem[(7 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), stor0
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
                mem[(8 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), stor0
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
                mem[(10 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), stor0
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
                mem[(11 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), stor0
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = arg7
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(address(arg3))
                call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _430 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _437 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _437
                require _430 + (32 * _437) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _430 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _437:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _739 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _751 = mem[_739]
                require mem[_739] == mem[_739]
                if mem[_739] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                _763 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_763]:
                    revert with 'NH{q', 50
                mem[_763 + 32] = address(arg1)
                if 1 >= mem[_763]:
                    revert with 'NH{q', 50
                mem[_763 + 64] = address(arg2)
                mem[_763 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_763 + 100] = _751 - ext_call.return_data[0]
                mem[_763 + 132] = 0
                mem[_763 + 164] = 160
                mem[_763 + 260] = mem[_763]
                idx = 0
                s = _763 + 32
                t = _763 + 292
                while idx < mem[_763]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_763 + 196] = this.address
                mem[_763 + 228] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _763 + (32 * mem[_763]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1000 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1009 = mem[_1000]
                require mem[_1000] <= test266151307()
                require _1000 + mem[_1000] + 31 < _1000 + return_data.size
                _1015 = mem[_1000 + mem[_1000]]
                if mem[_1000 + mem[_1000]] > test266151307():
                    revert with 'NH{q', 65
                if _1000 + ceil32(return_data.size) + floor32(mem[_1000 + mem[_1000]]) + 1 > test266151307() or floor32(mem[_1000 + mem[_1000]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1000 + ceil32(return_data.size) + floor32(mem[_1000 + mem[_1000]]) + 1
                mem[_1000 + ceil32(return_data.size)] = _1015
                require _1009 + (32 * _1015) + 32 <= return_data.size
                idx = 0
                s = _1000 + _1009 + 32
                t = _1000 + ceil32(return_data.size) + 32
                while idx < _1015:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1183] == mem[_1183]
                if not arg8:
                    if mem[_1183] < ext_call.return_data[0]:
                        revert with 0, 'Negative arb after the fact'
                emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1183]
            else:
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
                if Mask(112, 0, ext_call.return_data[32]) and t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if arg7 > ext_call.return_data[0]:
                    revert with 0, 'not enough balance token1'
                mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
                mem[(7 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), stor0
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
                mem[(8 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), stor0
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
                mem[(10 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), stor0
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
                mem[(11 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), stor0
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = arg7
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(address(arg3))
                call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _429 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _436 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _436
                require _429 + (32 * _436) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _429 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _436:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _738 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _750 = mem[_738]
                require mem[_738] == mem[_738]
                if mem[_738] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                _762 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_762]:
                    revert with 'NH{q', 50
                mem[_762 + 32] = address(arg1)
                if 1 >= mem[_762]:
                    revert with 'NH{q', 50
                mem[_762 + 64] = address(arg2)
                mem[_762 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_762 + 100] = _750 - ext_call.return_data[0]
                mem[_762 + 132] = 0
                mem[_762 + 164] = 160
                mem[_762 + 260] = mem[_762]
                idx = 0
                s = _762 + 32
                t = _762 + 292
                while idx < mem[_762]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_762 + 196] = this.address
                mem[_762 + 228] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _762 + (32 * mem[_762]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _999 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1008 = mem[_999]
                require mem[_999] <= test266151307()
                require _999 + mem[_999] + 31 < _999 + return_data.size
                _1014 = mem[_999 + mem[_999]]
                if mem[_999 + mem[_999]] > test266151307():
                    revert with 'NH{q', 65
                if _999 + ceil32(return_data.size) + floor32(mem[_999 + mem[_999]]) + 1 > test266151307() or floor32(mem[_999 + mem[_999]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _999 + ceil32(return_data.size) + floor32(mem[_999 + mem[_999]]) + 1
                mem[_999 + ceil32(return_data.size)] = _1014
                require _1008 + (32 * _1014) + 32 <= return_data.size
                idx = 0
                s = _999 + _1008 + 32
                t = _999 + ceil32(return_data.size) + 32
                while idx < _1014:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1182] == mem[_1182]
                if not arg8:
                    if mem[_1182] < ext_call.return_data[0]:
                        revert with 0, 'Negative arb after the fact'
                emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1182]
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if arg7 > ext_call.return_data[0]:
                    revert with 0, 'not enough balance token1'
                mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
                mem[(7 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), stor0
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
                mem[(8 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), stor0
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
                mem[(10 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), stor0
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
                mem[(11 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), stor0
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = arg7
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(address(arg3))
                call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _428 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _435 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _435
                require _428 + (32 * _435) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _428 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _435:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _737 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _749 = mem[_737]
                require mem[_737] == mem[_737]
                if mem[_737] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                _761 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_761]:
                    revert with 'NH{q', 50
                mem[_761 + 32] = address(arg1)
                if 1 >= mem[_761]:
                    revert with 'NH{q', 50
                mem[_761 + 64] = address(arg2)
                mem[_761 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_761 + 100] = _749 - ext_call.return_data[0]
                mem[_761 + 132] = 0
                mem[_761 + 164] = 160
                mem[_761 + 260] = mem[_761]
                idx = 0
                s = _761 + 32
                t = _761 + 292
                while idx < mem[_761]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_761 + 196] = this.address
                mem[_761 + 228] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _761 + (32 * mem[_761]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _998 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1007 = mem[_998]
                require mem[_998] <= test266151307()
                require _998 + mem[_998] + 31 < _998 + return_data.size
                _1013 = mem[_998 + mem[_998]]
                if mem[_998 + mem[_998]] > test266151307():
                    revert with 'NH{q', 65
                if _998 + ceil32(return_data.size) + floor32(mem[_998 + mem[_998]]) + 1 > test266151307() or floor32(mem[_998 + mem[_998]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _998 + ceil32(return_data.size) + floor32(mem[_998 + mem[_998]]) + 1
                mem[_998 + ceil32(return_data.size)] = _1013
                require _1007 + (32 * _1013) + 32 <= return_data.size
                idx = 0
                s = _998 + _1007 + 32
                t = _998 + ceil32(return_data.size) + 32
                while idx < _1013:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1181] == mem[_1181]
                if not arg8:
                    if mem[_1181] < ext_call.return_data[0]:
                        revert with 0, 'Negative arb after the fact'
                emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1181]
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if arg7 > ext_call.return_data[0]:
                        revert with 0, 'not enough balance token1'
                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
                    mem[(7 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg3), stor0
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
                    mem[(8 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg3), stor0
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(10 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor0
                    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(11 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor0
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(12 * ceil32(return_data.size)) + 96] = 2
                    mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
                    mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(12 * ceil32(return_data.size)) + 196] = arg7
                    mem[(12 * ceil32(return_data.size)) + 228] = 0
                    mem[(12 * ceil32(return_data.size)) + 260] = 160
                    mem[(12 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + 128
                    t = (12 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(12 * ceil32(return_data.size)) + 292] = this.address
                    mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(arg3))
                    call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (13 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _427 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
                    require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                    _434 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
                    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
                    mem[(13 * ceil32(return_data.size)) + 192] = _434
                    require _427 + (32 * _434) + 32 <= return_data.size
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + _427 + 224
                    t = (13 * ceil32(return_data.size)) + 224
                    while idx < _434:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _736 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _748 = mem[_736]
                    require mem[_736] == mem[_736]
                    if mem[_736] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    _760 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_760]:
                        revert with 'NH{q', 50
                    mem[_760 + 32] = address(arg1)
                    if 1 >= mem[_760]:
                        revert with 'NH{q', 50
                    mem[_760 + 64] = address(arg2)
                    mem[_760 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_760 + 100] = _748 - ext_call.return_data[0]
                    mem[_760 + 132] = 0
                    mem[_760 + 164] = 160
                    mem[_760 + 260] = mem[_760]
                    idx = 0
                    s = _760 + 32
                    t = _760 + 292
                    while idx < mem[_760]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_760 + 196] = this.address
                    mem[_760 + 228] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _760 + (32 * mem[_760]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _997 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1006 = mem[_997]
                    require mem[_997] <= test266151307()
                    require _997 + mem[_997] + 31 < _997 + return_data.size
                    _1012 = mem[_997 + mem[_997]]
                    if mem[_997 + mem[_997]] > test266151307():
                        revert with 'NH{q', 65
                    if _997 + ceil32(return_data.size) + floor32(mem[_997 + mem[_997]]) + 1 > test266151307() or floor32(mem[_997 + mem[_997]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _997 + ceil32(return_data.size) + floor32(mem[_997 + mem[_997]]) + 1
                    mem[_997 + ceil32(return_data.size)] = _1012
                    require _1006 + (32 * _1012) + 32 <= return_data.size
                    idx = 0
                    s = _997 + _1006 + 32
                    t = _997 + ceil32(return_data.size) + 32
                    while idx < _1012:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1180 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1180] == mem[_1180]
                    if not arg8:
                        if mem[_1180] < ext_call.return_data[0]:
                            revert with 0, 'Negative arb after the fact'
                    emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1180]
                else:
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
                    if Mask(112, 0, ext_call.return_data[32]) and t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if arg7 > ext_call.return_data[0]:
                        revert with 0, 'not enough balance token1'
                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
                    mem[(7 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg3), stor0
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
                    mem[(8 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg3), stor0
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(10 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor0
                    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(11 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor0
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(12 * ceil32(return_data.size)) + 96] = 2
                    mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
                    mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(12 * ceil32(return_data.size)) + 196] = arg7
                    mem[(12 * ceil32(return_data.size)) + 228] = 0
                    mem[(12 * ceil32(return_data.size)) + 260] = 160
                    mem[(12 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + 128
                    t = (12 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(12 * ceil32(return_data.size)) + 292] = this.address
                    mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(arg3))
                    call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (13 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _426 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
                    require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                    _433 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
                    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
                    mem[(13 * ceil32(return_data.size)) + 192] = _433
                    require _426 + (32 * _433) + 32 <= return_data.size
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + _426 + 224
                    t = (13 * ceil32(return_data.size)) + 224
                    while idx < _433:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _735 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _747 = mem[_735]
                    require mem[_735] == mem[_735]
                    if mem[_735] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    _759 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_759]:
                        revert with 'NH{q', 50
                    mem[_759 + 32] = address(arg1)
                    if 1 >= mem[_759]:
                        revert with 'NH{q', 50
                    mem[_759 + 64] = address(arg2)
                    mem[_759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_759 + 100] = _747 - ext_call.return_data[0]
                    mem[_759 + 132] = 0
                    mem[_759 + 164] = 160
                    mem[_759 + 260] = mem[_759]
                    idx = 0
                    s = _759 + 32
                    t = _759 + 292
                    while idx < mem[_759]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_759 + 196] = this.address
                    mem[_759 + 228] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _759 + (32 * mem[_759]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _996 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1005 = mem[_996]
                    require mem[_996] <= test266151307()
                    require _996 + mem[_996] + 31 < _996 + return_data.size
                    _1011 = mem[_996 + mem[_996]]
                    if mem[_996 + mem[_996]] > test266151307():
                        revert with 'NH{q', 65
                    if _996 + ceil32(return_data.size) + floor32(mem[_996 + mem[_996]]) + 1 > test266151307() or floor32(mem[_996 + mem[_996]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _996 + ceil32(return_data.size) + floor32(mem[_996 + mem[_996]]) + 1
                    mem[_996 + ceil32(return_data.size)] = _1011
                    require _1005 + (32 * _1011) + 32 <= return_data.size
                    idx = 0
                    s = _996 + _1005 + 32
                    t = _996 + ceil32(return_data.size) + 32
                    while idx < _1011:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1179] == mem[_1179]
                    if not arg8:
                        if mem[_1179] < ext_call.return_data[0]:
                            revert with 0, 'Negative arb after the fact'
                    emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1179]
        else:
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
            if Mask(112, 0, ext_call.return_data[32]) and t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if not ext_call.return_data[31 len 1]:
                if Mask(112, 0, ext_call.return_data[32]) and 1 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if arg7 > ext_call.return_data[0]:
                    revert with 0, 'not enough balance token1'
                mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
                mem[(7 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), stor0
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
                mem[(8 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), stor0
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
                mem[(10 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg1))
                call address(arg1).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), stor0
                mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
                mem[(11 * ceil32(return_data.size)) + 132] = stor0
                require ext_code.size(address(arg2))
                call address(arg2).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), stor0
                mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve failed.'
                mem[(12 * ceil32(return_data.size)) + 96] = 2
                mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
                mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(12 * ceil32(return_data.size)) + 196] = arg7
                mem[(12 * ceil32(return_data.size)) + 228] = 0
                mem[(12 * ceil32(return_data.size)) + 260] = 160
                mem[(12 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (12 * ceil32(return_data.size)) + 128
                t = (12 * ceil32(return_data.size)) + 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(12 * ceil32(return_data.size)) + 292] = this.address
                mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
                require ext_code.size(address(arg3))
                call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (13 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _746 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
                require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                _755 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
                if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                    revert with 'NH{q', 65
                if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
                mem[(13 * ceil32(return_data.size)) + 192] = _755
                require _746 + (32 * _755) + 32 <= return_data.size
                idx = 0
                s = (12 * ceil32(return_data.size)) + _746 + 224
                t = (13 * ceil32(return_data.size)) + 224
                while idx < _755:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _995 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1004 = mem[_995]
                require mem[_995] == mem[_995]
                if mem[_995] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                _1025 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                if 0 >= mem[_1025]:
                    revert with 'NH{q', 50
                mem[_1025 + 32] = address(arg1)
                if 1 >= mem[_1025]:
                    revert with 'NH{q', 50
                mem[_1025 + 64] = address(arg2)
                mem[_1025 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_1025 + 100] = _1004 - ext_call.return_data[0]
                mem[_1025 + 132] = 0
                mem[_1025 + 164] = 160
                mem[_1025 + 260] = mem[_1025]
                idx = 0
                s = _1025 + 32
                t = _1025 + 292
                while idx < mem[_1025]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1025 + 196] = this.address
                mem[_1025 + 228] = block.timestamp
                require ext_code.size(address(arg4))
                call address(arg4).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1025 + (32 * mem[_1025]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1187 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1190 = mem[_1187]
                require mem[_1187] <= test266151307()
                require _1187 + mem[_1187] + 31 < _1187 + return_data.size
                _1199 = mem[_1187 + mem[_1187]]
                if mem[_1187 + mem[_1187]] > test266151307():
                    revert with 'NH{q', 65
                if _1187 + ceil32(return_data.size) + floor32(mem[_1187 + mem[_1187]]) + 1 > test266151307() or floor32(mem[_1187 + mem[_1187]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _1187 + ceil32(return_data.size) + floor32(mem[_1187 + mem[_1187]]) + 1
                mem[_1187 + ceil32(return_data.size)] = _1199
                require _1190 + (32 * _1199) + 32 <= return_data.size
                idx = 0
                s = _1187 + _1190 + 32
                t = _1187 + ceil32(return_data.size) + 32
                while idx < _1199:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1283 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1283] == mem[_1283]
                if not arg8:
                    if mem[_1283] < ext_call.return_data[0]:
                        revert with 0, 'Negative arb after the fact'
                emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1283]
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if Mask(112, 0, ext_call.return_data[32]) and 10^ext_call.return_data[31 len 1] > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if arg7 > ext_call.return_data[0]:
                        revert with 0, 'not enough balance token1'
                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
                    mem[(7 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg3), stor0
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
                    mem[(8 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg3), stor0
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(10 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor0
                    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(11 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor0
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(12 * ceil32(return_data.size)) + 96] = 2
                    mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
                    mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(12 * ceil32(return_data.size)) + 196] = arg7
                    mem[(12 * ceil32(return_data.size)) + 228] = 0
                    mem[(12 * ceil32(return_data.size)) + 260] = 160
                    mem[(12 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + 128
                    t = (12 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(12 * ceil32(return_data.size)) + 292] = this.address
                    mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(arg3))
                    call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (13 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _745 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
                    require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                    _754 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
                    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
                    mem[(13 * ceil32(return_data.size)) + 192] = _754
                    require _745 + (32 * _754) + 32 <= return_data.size
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + _745 + 224
                    t = (13 * ceil32(return_data.size)) + 224
                    while idx < _754:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _994 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1003 = mem[_994]
                    require mem[_994] == mem[_994]
                    if mem[_994] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    _1024 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1024]:
                        revert with 'NH{q', 50
                    mem[_1024 + 32] = address(arg1)
                    if 1 >= mem[_1024]:
                        revert with 'NH{q', 50
                    mem[_1024 + 64] = address(arg2)
                    mem[_1024 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1024 + 100] = _1003 - ext_call.return_data[0]
                    mem[_1024 + 132] = 0
                    mem[_1024 + 164] = 160
                    mem[_1024 + 260] = mem[_1024]
                    idx = 0
                    s = _1024 + 32
                    t = _1024 + 292
                    while idx < mem[_1024]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1024 + 196] = this.address
                    mem[_1024 + 228] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1024 + (32 * mem[_1024]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1186 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1189 = mem[_1186]
                    require mem[_1186] <= test266151307()
                    require _1186 + mem[_1186] + 31 < _1186 + return_data.size
                    _1198 = mem[_1186 + mem[_1186]]
                    if mem[_1186 + mem[_1186]] > test266151307():
                        revert with 'NH{q', 65
                    if _1186 + ceil32(return_data.size) + floor32(mem[_1186 + mem[_1186]]) + 1 > test266151307() or floor32(mem[_1186 + mem[_1186]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1186 + ceil32(return_data.size) + floor32(mem[_1186 + mem[_1186]]) + 1
                    mem[_1186 + ceil32(return_data.size)] = _1198
                    require _1189 + (32 * _1198) + 32 <= return_data.size
                    idx = 0
                    s = _1186 + _1189 + 32
                    t = _1186 + ceil32(return_data.size) + 32
                    while idx < _1198:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1282 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1282] == mem[_1282]
                    if not arg8:
                        if mem[_1282] < ext_call.return_data[0]:
                            revert with 0, 'Negative arb after the fact'
                    emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1282]
                else:
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
                    if Mask(112, 0, ext_call.return_data[32]) and t * s > -1 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    mem[(4 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 100] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if arg7 > ext_call.return_data[0]:
                        revert with 0, 'not enough balance token1'
                    mem[(7 * ceil32(return_data.size)) + 100] = address(arg3)
                    mem[(7 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg3), stor0
                    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(8 * ceil32(return_data.size)) + 100] = address(arg3)
                    mem[(8 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg3), stor0
                    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(10 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(10 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor0
                    mem[(10 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(11 * ceil32(return_data.size)) + 100] = address(arg4)
                    mem[(11 * ceil32(return_data.size)) + 132] = stor0
                    require ext_code.size(address(arg2))
                    call address(arg2).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor0
                    mem[(11 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'approve failed.'
                    mem[(12 * ceil32(return_data.size)) + 96] = 2
                    mem[(12 * ceil32(return_data.size)) + 128] = address(arg2)
                    mem[(12 * ceil32(return_data.size)) + 160] = address(arg1)
                    mem[(12 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(12 * ceil32(return_data.size)) + 196] = arg7
                    mem[(12 * ceil32(return_data.size)) + 228] = 0
                    mem[(12 * ceil32(return_data.size)) + 260] = 160
                    mem[(12 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + 128
                    t = (12 * ceil32(return_data.size)) + 388
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(12 * ceil32(return_data.size)) + 292] = this.address
                    mem[(12 * ceil32(return_data.size)) + 324] = block.timestamp
                    require ext_code.size(address(arg3))
                    call address(arg3).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args arg7, 0, 160, address(this.address), block.timestamp, 2, mem[(12 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(12 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (13 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _744 = mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32
                    require mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 <= test266151307()
                    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 223 < (12 * ceil32(return_data.size)) + return_data.size + 192
                    _753 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]
                    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192] > test266151307():
                        revert with 'NH{q', 65
                    if (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (13 * ceil32(return_data.size)) + floor32(mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg7) >> 32 + 192]) + 193
                    mem[(13 * ceil32(return_data.size)) + 192] = _753
                    require _744 + (32 * _753) + 32 <= return_data.size
                    idx = 0
                    s = (12 * ceil32(return_data.size)) + _744 + 224
                    t = (13 * ceil32(return_data.size)) + 224
                    while idx < _753:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _993 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1002 = mem[_993]
                    require mem[_993] == mem[_993]
                    if mem[_993] < ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    _1023 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_1023]:
                        revert with 'NH{q', 50
                    mem[_1023 + 32] = address(arg1)
                    if 1 >= mem[_1023]:
                        revert with 'NH{q', 50
                    mem[_1023 + 64] = address(arg2)
                    mem[_1023 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[_1023 + 100] = _1002 - ext_call.return_data[0]
                    mem[_1023 + 132] = 0
                    mem[_1023 + 164] = 160
                    mem[_1023 + 260] = mem[_1023]
                    idx = 0
                    s = _1023 + 32
                    t = _1023 + 292
                    while idx < mem[_1023]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1023 + 196] = this.address
                    mem[_1023 + 228] = block.timestamp
                    require ext_code.size(address(arg4))
                    call address(arg4).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1023 + (32 * mem[_1023]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1185 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1188 = mem[_1185]
                    require mem[_1185] <= test266151307()
                    require _1185 + mem[_1185] + 31 < _1185 + return_data.size
                    _1197 = mem[_1185 + mem[_1185]]
                    if mem[_1185 + mem[_1185]] > test266151307():
                        revert with 'NH{q', 65
                    if _1185 + ceil32(return_data.size) + floor32(mem[_1185 + mem[_1185]]) + 1 > test266151307() or floor32(mem[_1185 + mem[_1185]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _1185 + ceil32(return_data.size) + floor32(mem[_1185 + mem[_1185]]) + 1
                    mem[_1185 + ceil32(return_data.size)] = _1197
                    require _1188 + (32 * _1197) + 32 <= return_data.size
                    idx = 0
                    s = _1185 + _1188 + 32
                    t = _1185 + ceil32(return_data.size) + 32
                    while idx < _1197:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(arg2))
                    staticcall address(arg2).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1281] == mem[_1281]
                    if not arg8:
                        if mem[_1281] < ext_call.return_data[0]:
                            revert with 0, 'Negative arb after the fact'
                    emit 0x2cdf4b1e: address(arg1), address(arg2), ext_call.return_data[0], mem[_1281]
}



}
