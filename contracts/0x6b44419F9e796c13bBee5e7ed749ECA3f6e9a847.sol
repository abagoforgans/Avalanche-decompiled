contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function shutdown() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_1bd60cd0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x5dfc2562 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xf927fffa with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
}

function sub_19b5d9ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x1f8c6fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x27895eb9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xfd02230 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).maxQueueSize() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    mem[192] = ext_call.return_data[30 len 2]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x87433926 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(address(arg1))
    staticcall address(arg1).isPaused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           mem[222 len 2],
           ext_call.return_data[64],
           ext_call.return_data[0],
           bool(ext_call.return_data[0])
}

function sub_f24861f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).custodian() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).quoteToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).custodian() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).isPaused() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], bool(ext_call.return_data[0])
}

function sub_ae7901ac(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + 97
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if ('cd', 68).length < 2:
        revert with 0, 'INVALID_PATH'
    if var73001 < 1:
        revert with 0, 17
    if var77002 >= var77001:
        return var77003
    if var79001 < ('cd', 68).length:
        if 1 > !var83002:
            revert with 0, 17
        idx = var85003 + 1
        s = var85006
        t = var85010
        u = var85011
        while idx < ('cd', 68).length:
            _269 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = address(_269)
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(s), address(_269)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _273 = mem[_272]
            require mem[_272] == mem[_272 + 12 len 20]
            require ext_code.size(mem[_272 + 12 len 20])
            staticcall mem[_272 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _277 = mem[_276]
            require mem[_276] == mem[_276 + 18 len 14]
            _278 = mem[_276 + 32]
            require mem[_276 + 32] == mem[_276 + 50 len 14]
            require mem[_276 + 64] == mem[_276 + 92 len 4]
            if t >= mem[96]:
                revert with 0, 50
            _281 = mem[(32 * t) + 128]
            require ext_code.size(address(_273))
            staticcall address(_273).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_284] == mem[_284 + 12 len 20]
            if mem[_284 + 12 len 20] == address(_281):
                if u and Mask(112, 0, _278) > -1 / u:
                    revert with 0, 17
                if not Mask(112, 0, _277):
                    revert with 0, 18
                if t == -1:
                    revert with 0, 17
                if mem[96] < 1:
                    revert with 0, 17
                if t + 1 >= mem[96] - 1:
                    return (u * Mask(112, 0, _278) / Mask(112, 0, _277))
                if t + 1 >= mem[96]:
                    revert with 0, 50
                if 1 > !(t + 1):
                    revert with 0, 17
                idx = t + 2
                s = mem[(32 * t + 1) + 128]
                t = t + 1
                u = u * Mask(112, 0, _278) / Mask(112, 0, _277)
                continue 
            if u and Mask(112, 0, _277) > -1 / u:
                revert with 0, 17
            if not Mask(112, 0, _278):
                revert with 0, 18
            if t == -1:
                revert with 0, 17
            if mem[96] < 1:
                revert with 0, 17
            if t + 1 >= mem[96] - 1:
                return (u * Mask(112, 0, _277) / Mask(112, 0, _278))
            if t + 1 >= mem[96]:
                revert with 0, 50
            if 1 > !(t + 1):
                revert with 0, 17
            idx = t + 2
            s = mem[(32 * t + 1) + 128]
            t = t + 1
            u = u * Mask(112, 0, _277) / Mask(112, 0, _278)
            continue 
    revert with 0, 50
}

function sub_011fa4f5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 36).length) + 257] = 0
    mem[ceil32(32 * ('cd', 36).length) + 289] = 0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0xa8aa1b31 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0xab3ee11 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 321 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[ceil32(32 * ('cd', 36).length) + 193] = ext_call.return_data[50 len 14]
    mem[ceil32(32 * ('cd', 36).length) + 161] = ext_call.return_data[18 len 14]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(32 * ('cd', 36).length) + 225] = ext_call.return_data[0]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).token0() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).mainToken() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (8 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0xf887ea40 with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (10 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].factory() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (11 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + (12 * ceil32(return_data.size)) + 321] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 36).length) + (13 * ceil32(return_data.size)) + 321
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if ('cd', 36).length < 2:
            if Mask(112, 0, ext_call.return_data[0]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0] << 144,
                   ext_call.return_data[50 len 14],
                   ext_call.return_data[0],
                   2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 10^18,
                   2 * Mask(112, 0, ext_call.return_data[0])
        if ('cd', 36).length < 2:
            revert with 0, 'INVALID_PATH'
        if var165001 < 1:
            revert with 0, 17
        if var169002 < var169001:
            if var171001 < ('cd', 36).length:
                if 1 > !var175002:
                    revert with 0, 17
                idx = var177003 + 1
                s = var177006
                t = var177010
                u = var177011
                while idx < ('cd', 36).length:
                    _1975 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_1975)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), address(_1975)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1983 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1991 = mem[_1983]
                    require mem[_1983] == mem[_1983 + 12 len 20]
                    require ext_code.size(mem[_1983 + 12 len 20])
                    staticcall mem[_1983 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2002 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2008 = mem[_2002]
                    require mem[_2002] == mem[_2002 + 18 len 14]
                    _2012 = mem[_2002 + 32]
                    require mem[_2002 + 32] == mem[_2002 + 50 len 14]
                    require mem[_2002 + 64] == mem[_2002 + 92 len 4]
                    if t >= mem[96]:
                        revert with 0, 50
                    _2022 = mem[(32 * t) + 128]
                    require ext_code.size(address(_1991))
                    staticcall address(_1991).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2030 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2030] == mem[_2030 + 12 len 20]
                    if mem[_2030 + 12 len 20] == address(_2022):
                        if u and Mask(112, 0, _2012) > -1 / u:
                            revert with 0, 17
                        if not Mask(112, 0, _2008):
                            revert with 0, 18
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            u = u * Mask(112, 0, _2012) / Mask(112, 0, _2008)
                            continue 
                        mem[ceil32(32 * ('cd', 36).length) + 257] = u * Mask(112, 0, _2012) / Mask(112, 0, _2008)
                        if Mask(112, 0, ext_call.return_data[0]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if mem[96] < 2:
                            revert with 0, 'INVALID_PATH'
                        if var236001 < 1:
                            revert with 0, 17
                        if var240002 < var240001:
                            if var242001 < mem[96]:
                                if 1 > !var246002:
                                    revert with 0, 17
                                _3820 = mem[96]
                                idx = var248003 + 1
                                s = var248006
                                t = var248010
                                u = var248011
                                while idx < _3820:
                                    _3824 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = address(s)
                                    mem[mem[64] + 36] = address(_3824)
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(s), address(_3824)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3836 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3840 = mem[_3836]
                                    require mem[_3836] == mem[_3836 + 12 len 20]
                                    require ext_code.size(mem[_3836 + 12 len 20])
                                    staticcall mem[_3836 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3852 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3856 = mem[_3852]
                                    require mem[_3852] == mem[_3852 + 18 len 14]
                                    _3860 = mem[_3852 + 32]
                                    require mem[_3852 + 32] == mem[_3852 + 50 len 14]
                                    require mem[_3852 + 64] == mem[_3852 + 92 len 4]
                                    if t >= mem[96]:
                                        revert with 0, 50
                                    _3872 = mem[(32 * t) + 128]
                                    require ext_code.size(address(_3840))
                                    staticcall address(_3840).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3884 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3884] == mem[_3884 + 12 len 20]
                                    if mem[_3884 + 12 len 20] == address(_3872):
                                        if u and Mask(112, 0, _3860) > -1 / u:
                                            revert with 0, 17
                                        if not Mask(112, 0, _3856):
                                            revert with 0, 18
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[96] - 1:
                                            if t + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            _3820 = mem[96]
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + 128]
                                            t = t + 1
                                            u = u * Mask(112, 0, _3860) / Mask(112, 0, _3856)
                                            continue 
                                        mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _3860) / Mask(112, 0, _3856)
                                        mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                                        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                                        mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                                        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                                        mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                                        return mem[mem[64] len 192], u * Mask(112, 0, _3860) / Mask(112, 0, _3856)
                                    if u and Mask(112, 0, _3856) > -1 / u:
                                        revert with 0, 17
                                    if not Mask(112, 0, _3860):
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        _3820 = mem[96]
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        u = u * Mask(112, 0, _3856) / Mask(112, 0, _3860)
                                        continue 
                                    mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _3856) / Mask(112, 0, _3860)
                                    mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                                    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                                    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                                    mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                                    return mem[mem[64] len 192], u * Mask(112, 0, _3856) / Mask(112, 0, _3860)
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 36).length) + 289] = var240003
                        mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                        mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                        return mem[mem[64] len 160], u * Mask(112, 0, _2012) / Mask(112, 0, _2008), var240003
                    if u and Mask(112, 0, _2008) > -1 / u:
                        revert with 0, 17
                    if not Mask(112, 0, _2012):
                        revert with 0, 18
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 < mem[96] - 1:
                        if t + 1 >= mem[96]:
                            revert with 0, 50
                        if 1 > !(t + 1):
                            revert with 0, 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        u = u * Mask(112, 0, _2008) / Mask(112, 0, _2012)
                        continue 
                    mem[ceil32(32 * ('cd', 36).length) + 257] = u * Mask(112, 0, _2008) / Mask(112, 0, _2012)
                    if Mask(112, 0, ext_call.return_data[0]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if mem[96] < 2:
                        revert with 0, 'INVALID_PATH'
                    if var236001 < 1:
                        revert with 0, 17
                    if var240002 < var240001:
                        if var242001 < mem[96]:
                            if 1 > !var246002:
                                revert with 0, 17
                            _3821 = mem[96]
                            idx = var248003 + 1
                            s = var248006
                            t = var248010
                            u = var248011
                            while idx < _3821:
                                _3826 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = address(s)
                                mem[mem[64] + 36] = address(_3826)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(s), address(_3826)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3837 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3841 = mem[_3837]
                                require mem[_3837] == mem[_3837 + 12 len 20]
                                require ext_code.size(mem[_3837 + 12 len 20])
                                staticcall mem[_3837 + 12 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3853 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3857 = mem[_3853]
                                require mem[_3853] == mem[_3853 + 18 len 14]
                                _3861 = mem[_3853 + 32]
                                require mem[_3853 + 32] == mem[_3853 + 50 len 14]
                                require mem[_3853 + 64] == mem[_3853 + 92 len 4]
                                if t >= mem[96]:
                                    revert with 0, 50
                                _3875 = mem[(32 * t) + 128]
                                require ext_code.size(address(_3841))
                                staticcall address(_3841).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3885 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3885] == mem[_3885 + 12 len 20]
                                if mem[_3885 + 12 len 20] == address(_3875):
                                    if u and Mask(112, 0, _3861) > -1 / u:
                                        revert with 0, 17
                                    if not Mask(112, 0, _3857):
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        _3821 = mem[96]
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        u = u * Mask(112, 0, _3861) / Mask(112, 0, _3857)
                                        continue 
                                    mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _3861) / Mask(112, 0, _3857)
                                    mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                                    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                                    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                                    mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                                    return mem[mem[64] len 192], u * Mask(112, 0, _3861) / Mask(112, 0, _3857)
                                if u and Mask(112, 0, _3857) > -1 / u:
                                    revert with 0, 17
                                if not Mask(112, 0, _3861):
                                    revert with 0, 18
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    _3821 = mem[96]
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    u = u * Mask(112, 0, _3857) / Mask(112, 0, _3861)
                                    continue 
                                mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _3857) / Mask(112, 0, _3861)
                                mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                                mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                                mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                                mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                                return mem[mem[64] len 192], u * Mask(112, 0, _3857) / Mask(112, 0, _3861)
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 36).length) + 289] = var240003
                    mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                    return mem[mem[64] len 160], u * Mask(112, 0, _2008) / Mask(112, 0, _2012), var240003
        else:
            mem[ceil32(32 * ('cd', 36).length) + 257] = var169003
            if Mask(112, 0, ext_call.return_data[0]) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if ('cd', 36).length < 2:
                revert with 0, 'INVALID_PATH'
            if var180001 < 1:
                revert with 0, 17
            if var184002 >= var184001:
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[0] << 144,
                       ext_call.return_data[50 len 14],
                       ext_call.return_data[0],
                       var169003,
                       var184003
            if var186001 < ('cd', 36).length:
                if 1 > !var190002:
                    revert with 0, 17
                idx = var192003 + 1
                s = var192006
                t = var192010
                u = var192011
                while idx < ('cd', 36).length:
                    _2866 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_2866)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), address(_2866)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2922 = mem[_2880]
                    require mem[_2880] == mem[_2880 + 12 len 20]
                    require ext_code.size(mem[_2880 + 12 len 20])
                    staticcall mem[_2880 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2948 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2950 = mem[_2948]
                    require mem[_2948] == mem[_2948 + 18 len 14]
                    _2964 = mem[_2948 + 32]
                    require mem[_2948 + 32] == mem[_2948 + 50 len 14]
                    require mem[_2948 + 64] == mem[_2948 + 92 len 4]
                    if t >= mem[96]:
                        revert with 0, 50
                    _2974 = mem[(32 * t) + 128]
                    require ext_code.size(address(_2922))
                    staticcall address(_2922).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2984 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2984] == mem[_2984 + 12 len 20]
                    if mem[_2984 + 12 len 20] == address(_2974):
                        if u and Mask(112, 0, _2964) > -1 / u:
                            revert with 0, 17
                        if not Mask(112, 0, _2950):
                            revert with 0, 18
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            u = u * Mask(112, 0, _2964) / Mask(112, 0, _2950)
                            continue 
                        mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _2964) / Mask(112, 0, _2950)
                        mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                        mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                        mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                        return mem[mem[64] len 192], u * Mask(112, 0, _2964) / Mask(112, 0, _2950)
                    if u and Mask(112, 0, _2950) > -1 / u:
                        revert with 0, 17
                    if not Mask(112, 0, _2964):
                        revert with 0, 18
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 < mem[96] - 1:
                        if t + 1 >= mem[96]:
                            revert with 0, 50
                        if 1 > !(t + 1):
                            revert with 0, 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        u = u * Mask(112, 0, _2950) / Mask(112, 0, _2964)
                        continue 
                    mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _2950) / Mask(112, 0, _2964)
                    mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                    mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                    return mem[mem[64] len 192], u * Mask(112, 0, _2950) / Mask(112, 0, _2964)
    else:
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and ext_call.return_data[50 len 14] > -1 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[50 len 14] / 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if ('cd', 36).length < 2:
            if ext_call.return_data[50 len 14] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return ext_call.return_data[0], 
                   ext_call.return_data[0],
                   ext_call.return_data[0] << 144,
                   ext_call.return_data[50 len 14],
                   ext_call.return_data[0],
                   2 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[50 len 14] / 10^18,
                   2 * ext_call.return_data[50 len 14]
        if ('cd', 36).length < 2:
            revert with 0, 'INVALID_PATH'
        if var165001 < 1:
            revert with 0, 17
        if var169002 < var169001:
            if var171001 < ('cd', 36).length:
                if 1 > !var175002:
                    revert with 0, 17
                idx = var177003 + 1
                s = var177006
                t = var177010
                u = var177011
                while idx < ('cd', 36).length:
                    _1978 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_1978)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), address(_1978)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1993 = mem[_1985]
                    require mem[_1985] == mem[_1985 + 12 len 20]
                    require ext_code.size(mem[_1985 + 12 len 20])
                    staticcall mem[_1985 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2003 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2009 = mem[_2003]
                    require mem[_2003] == mem[_2003 + 18 len 14]
                    _2013 = mem[_2003 + 32]
                    require mem[_2003 + 32] == mem[_2003 + 50 len 14]
                    require mem[_2003 + 64] == mem[_2003 + 92 len 4]
                    if t >= mem[96]:
                        revert with 0, 50
                    _2025 = mem[(32 * t) + 128]
                    require ext_code.size(address(_1993))
                    staticcall address(_1993).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2031 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2031] == mem[_2031 + 12 len 20]
                    if mem[_2031 + 12 len 20] == address(_2025):
                        if u and Mask(112, 0, _2013) > -1 / u:
                            revert with 0, 17
                        if not Mask(112, 0, _2009):
                            revert with 0, 18
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            u = u * Mask(112, 0, _2013) / Mask(112, 0, _2009)
                            continue 
                        mem[ceil32(32 * ('cd', 36).length) + 257] = u * Mask(112, 0, _2013) / Mask(112, 0, _2009)
                        if ext_call.return_data[50 len 14] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if mem[96] < 2:
                            revert with 0, 'INVALID_PATH'
                        if var236001 < 1:
                            revert with 0, 17
                        if var240002 < var240001:
                            if var242001 < mem[96]:
                                if 1 > !var246002:
                                    revert with 0, 17
                                _3822 = mem[96]
                                idx = var248003 + 1
                                s = var248006
                                t = var248010
                                u = var248011
                                while idx < _3822:
                                    _3828 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = address(s)
                                    mem[mem[64] + 36] = address(_3828)
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                            gas gas_remaining wei
                                           args address(s), address(_3828)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3838 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _3842 = mem[_3838]
                                    require mem[_3838] == mem[_3838 + 12 len 20]
                                    require ext_code.size(mem[_3838 + 12 len 20])
                                    staticcall mem[_3838 + 12 len 20].getReserves() with:
                                            gas gas_remaining wei
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3854 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    _3858 = mem[_3854]
                                    require mem[_3854] == mem[_3854 + 18 len 14]
                                    _3862 = mem[_3854 + 32]
                                    require mem[_3854 + 32] == mem[_3854 + 50 len 14]
                                    require mem[_3854 + 64] == mem[_3854 + 92 len 4]
                                    if t >= mem[96]:
                                        revert with 0, 50
                                    _3878 = mem[(32 * t) + 128]
                                    require ext_code.size(address(_3842))
                                    staticcall address(_3842).token0() with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3886 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3886] == mem[_3886 + 12 len 20]
                                    if mem[_3886 + 12 len 20] == address(_3878):
                                        if u and Mask(112, 0, _3862) > -1 / u:
                                            revert with 0, 17
                                        if not Mask(112, 0, _3858):
                                            revert with 0, 18
                                        if t == -1:
                                            revert with 0, 17
                                        if mem[96] < 1:
                                            revert with 0, 17
                                        if t + 1 < mem[96] - 1:
                                            if t + 1 >= mem[96]:
                                                revert with 0, 50
                                            if 1 > !(t + 1):
                                                revert with 0, 17
                                            _3822 = mem[96]
                                            idx = t + 2
                                            s = mem[(32 * t + 1) + 128]
                                            t = t + 1
                                            u = u * Mask(112, 0, _3862) / Mask(112, 0, _3858)
                                            continue 
                                        mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _3862) / Mask(112, 0, _3858)
                                        mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                                        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                                        mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                                        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                                        mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                                        return mem[mem[64] len 192], u * Mask(112, 0, _3862) / Mask(112, 0, _3858)
                                    if u and Mask(112, 0, _3858) > -1 / u:
                                        revert with 0, 17
                                    if not Mask(112, 0, _3862):
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        _3822 = mem[96]
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        u = u * Mask(112, 0, _3858) / Mask(112, 0, _3862)
                                        continue 
                                    mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _3858) / Mask(112, 0, _3862)
                                    mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                                    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                                    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                                    mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                                    return mem[mem[64] len 192], u * Mask(112, 0, _3858) / Mask(112, 0, _3862)
                            revert with 0, 50
                        mem[ceil32(32 * ('cd', 36).length) + 289] = var240003
                        mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                        mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                        return mem[mem[64] len 160], u * Mask(112, 0, _2013) / Mask(112, 0, _2009), var240003
                    if u and Mask(112, 0, _2009) > -1 / u:
                        revert with 0, 17
                    if not Mask(112, 0, _2013):
                        revert with 0, 18
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 < mem[96] - 1:
                        if t + 1 >= mem[96]:
                            revert with 0, 50
                        if 1 > !(t + 1):
                            revert with 0, 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        u = u * Mask(112, 0, _2009) / Mask(112, 0, _2013)
                        continue 
                    mem[ceil32(32 * ('cd', 36).length) + 257] = u * Mask(112, 0, _2009) / Mask(112, 0, _2013)
                    if ext_call.return_data[50 len 14] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if mem[96] < 2:
                        revert with 0, 'INVALID_PATH'
                    if var236001 < 1:
                        revert with 0, 17
                    if var240002 < var240001:
                        if var242001 < mem[96]:
                            if 1 > !var246002:
                                revert with 0, 17
                            _3823 = mem[96]
                            idx = var248003 + 1
                            s = var248006
                            t = var248010
                            u = var248011
                            while idx < _3823:
                                _3830 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = address(s)
                                mem[mem[64] + 36] = address(_3830)
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                        gas gas_remaining wei
                                       args address(s), address(_3830)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3839 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3843 = mem[_3839]
                                require mem[_3839] == mem[_3839 + 12 len 20]
                                require ext_code.size(mem[_3839 + 12 len 20])
                                staticcall mem[_3839 + 12 len 20].getReserves() with:
                                        gas gas_remaining wei
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3855 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 96
                                _3859 = mem[_3855]
                                require mem[_3855] == mem[_3855 + 18 len 14]
                                _3863 = mem[_3855 + 32]
                                require mem[_3855 + 32] == mem[_3855 + 50 len 14]
                                require mem[_3855 + 64] == mem[_3855 + 92 len 4]
                                if t >= mem[96]:
                                    revert with 0, 50
                                _3881 = mem[(32 * t) + 128]
                                require ext_code.size(address(_3843))
                                staticcall address(_3843).token0() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3887 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3887] == mem[_3887 + 12 len 20]
                                if mem[_3887 + 12 len 20] == address(_3881):
                                    if u and Mask(112, 0, _3863) > -1 / u:
                                        revert with 0, 17
                                    if not Mask(112, 0, _3859):
                                        revert with 0, 18
                                    if t == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if t + 1 < mem[96] - 1:
                                        if t + 1 >= mem[96]:
                                            revert with 0, 50
                                        if 1 > !(t + 1):
                                            revert with 0, 17
                                        _3823 = mem[96]
                                        idx = t + 2
                                        s = mem[(32 * t + 1) + 128]
                                        t = t + 1
                                        u = u * Mask(112, 0, _3863) / Mask(112, 0, _3859)
                                        continue 
                                    mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _3863) / Mask(112, 0, _3859)
                                    mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                                    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                                    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                                    mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                                    return mem[mem[64] len 192], u * Mask(112, 0, _3863) / Mask(112, 0, _3859)
                                if u and Mask(112, 0, _3859) > -1 / u:
                                    revert with 0, 17
                                if not Mask(112, 0, _3863):
                                    revert with 0, 18
                                if t == -1:
                                    revert with 0, 17
                                if mem[96] < 1:
                                    revert with 0, 17
                                if t + 1 < mem[96] - 1:
                                    if t + 1 >= mem[96]:
                                        revert with 0, 50
                                    if 1 > !(t + 1):
                                        revert with 0, 17
                                    _3823 = mem[96]
                                    idx = t + 2
                                    s = mem[(32 * t + 1) + 128]
                                    t = t + 1
                                    u = u * Mask(112, 0, _3859) / Mask(112, 0, _3863)
                                    continue 
                                mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _3859) / Mask(112, 0, _3863)
                                mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                                mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                                mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                                mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                                mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                                return mem[mem[64] len 192], u * Mask(112, 0, _3859) / Mask(112, 0, _3863)
                        revert with 0, 50
                    mem[ceil32(32 * ('cd', 36).length) + 289] = var240003
                    mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                    return mem[mem[64] len 160], u * Mask(112, 0, _2009) / Mask(112, 0, _2013), var240003
        else:
            mem[ceil32(32 * ('cd', 36).length) + 257] = var169003
            if ext_call.return_data[50 len 14] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if ('cd', 36).length < 2:
                revert with 0, 'INVALID_PATH'
            if var180001 < 1:
                revert with 0, 17
            if var184002 >= var184001:
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[0] << 144,
                       ext_call.return_data[50 len 14],
                       ext_call.return_data[0],
                       var169003,
                       var184003
            if var186001 < ('cd', 36).length:
                if 1 > !var190002:
                    revert with 0, 17
                idx = var192003 + 1
                s = var192006
                t = var192010
                u = var192011
                while idx < ('cd', 36).length:
                    _2870 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_2870)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(s), address(_2870)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2897 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2927 = mem[_2897]
                    require mem[_2897] == mem[_2897 + 12 len 20]
                    require ext_code.size(mem[_2897 + 12 len 20])
                    staticcall mem[_2897 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2949 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2955 = mem[_2949]
                    require mem[_2949] == mem[_2949 + 18 len 14]
                    _2965 = mem[_2949 + 32]
                    require mem[_2949 + 32] == mem[_2949 + 50 len 14]
                    require mem[_2949 + 64] == mem[_2949 + 92 len 4]
                    if t >= mem[96]:
                        revert with 0, 50
                    _2979 = mem[(32 * t) + 128]
                    require ext_code.size(address(_2927))
                    staticcall address(_2927).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2987 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2987] == mem[_2987 + 12 len 20]
                    if mem[_2987 + 12 len 20] == address(_2979):
                        if u and Mask(112, 0, _2965) > -1 / u:
                            revert with 0, 17
                        if not Mask(112, 0, _2955):
                            revert with 0, 18
                        if t == -1:
                            revert with 0, 17
                        if mem[96] < 1:
                            revert with 0, 17
                        if t + 1 < mem[96] - 1:
                            if t + 1 >= mem[96]:
                                revert with 0, 50
                            if 1 > !(t + 1):
                                revert with 0, 17
                            idx = t + 2
                            s = mem[(32 * t + 1) + 128]
                            t = t + 1
                            u = u * Mask(112, 0, _2965) / Mask(112, 0, _2955)
                            continue 
                        mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _2965) / Mask(112, 0, _2955)
                        mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                        mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                        mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                        return mem[mem[64] len 192], u * Mask(112, 0, _2965) / Mask(112, 0, _2955)
                    if u and Mask(112, 0, _2955) > -1 / u:
                        revert with 0, 17
                    if not Mask(112, 0, _2965):
                        revert with 0, 18
                    if t == -1:
                        revert with 0, 17
                    if mem[96] < 1:
                        revert with 0, 17
                    if t + 1 < mem[96] - 1:
                        if t + 1 >= mem[96]:
                            revert with 0, 50
                        if 1 > !(t + 1):
                            revert with 0, 17
                        idx = t + 2
                        s = mem[(32 * t + 1) + 128]
                        t = t + 1
                        u = u * Mask(112, 0, _2955) / Mask(112, 0, _2965)
                        continue 
                    mem[ceil32(32 * ('cd', 36).length) + 289] = u * Mask(112, 0, _2955) / Mask(112, 0, _2965)
                    mem[mem[64]] = mem[ceil32(32 * ('cd', 36).length) + 97]
                    mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 129]
                    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 36).length) + 161]
                    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 36).length) + 193]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 36).length) + 225]
                    mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + 257]
                    return mem[mem[64] len 192], u * Mask(112, 0, _2955) / Mask(112, 0, _2965)
    revert with 0, 50
}



}
