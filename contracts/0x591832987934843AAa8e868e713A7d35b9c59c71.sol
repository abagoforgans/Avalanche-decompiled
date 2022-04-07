contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address owner;
address sub_3cec7549Address;
address collateral_address;
address sub_27daf4f8Address;
address sub_c7e5b79eAddress;
address uniswap_routerAddress;
uint256 scale;
uint256 sub_5ebf2439;
uint256 deadline;
array of address sub_e73393ab;
array of address sub_8e2b472d;
uint256 sub_e9655b5b;

function collateral_address() {
    return collateral_address
}

function sub_27daf4f8(?) {
    return sub_27daf4f8Address
}

function deadline() {
    return deadline
}

function sub_3cec7549(?) {
    return sub_3cec7549Address
}

function sub_5ebf2439(?) {
    return sub_5ebf2439
}

function owner() {
    return owner
}

function sub_8e2b472d(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_8e2b472d.length
    return sub_8e2b472d[arg1]
}

function uniswap_router() {
    return uniswap_routerAddress
}

function sub_c7e5b79e(?) {
    return sub_c7e5b79eAddress
}

function sub_e73393ab(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e73393ab.length
    return sub_e73393ab[arg1]
}

function sub_e9655b5b(?) {
    return sub_e9655b5b
}

function scale() {
    return scale
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setwhileTimes(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e9655b5b = arg1
    emit WhileTimesSet(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getAmountsInDeusToCollateral(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    idx = sub_e9655b5b
    s = 0
    t = arg2
    while idx:
        if t and arg1 > -1 / t:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if s > !(t * arg1 / scale):
            revert with 'NH{q', 17
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = t * arg1 / scale
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_8e2b472d.length
        mem[0] = 10
        u = 0
        v = sha3(10)
        w = mem[64] + 100
        while u < sub_8e2b472d.length:
            mem[w] = stor[v]
            u = u + 1
            v = v + 1
            w = w + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args t * arg1 / scale, Array(len=sub_8e2b472d.length, data=mem[mem[64] + 100 len 32 * sub_8e2b472d.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        require mem[_28] <= test266151307()
        require _28 + return_data.size > _28 + mem[_28] + 31
        _30 = mem[_28 + mem[_28]]
        if mem[_28 + mem[_28]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_28 + mem[_28]]) + 1 < 0 or _28 + ceil32(return_data.size) + ceil32(32 * mem[_28 + mem[_28]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _28 + ceil32(return_data.size) + ceil32(32 * mem[_28 + mem[_28]]) + 1
        mem[_28 + ceil32(return_data.size)] = _30
        require _29 + (32 * _30) + 32 <= return_data.size
        v = _28 + _29 + 32
        w = _28 + ceil32(return_data.size) + 32
        u = 0
        while u < _30:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u + 1
            continue 
        if _30 < 1:
            revert with 'NH{q', 17
        if _30 - 1 >= _30:
            revert with 'NH{q', 50
        if scale < arg1:
            revert with 'NH{q', 17
        if mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] and scale - arg1 > -1 / mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        if not arg3:
            revert with 'NH{q', 18
        if (scale * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]) - (arg1 * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]) / arg3 > !(t * arg1 / scale):
            revert with 'NH{q', 17
        if t < ((scale * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]) - (arg1 * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]) / arg3) + (t * arg1 / scale):
            revert with 'NH{q', 17
        if idx < 1:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + (t * arg1 / scale)
        t = t - ((scale * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]) - (arg1 * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]) / arg3) - (t * arg1 / scale)
        continue 
    return s
}

function getAmountsInCollateralToDeus(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    idx = sub_e9655b5b
    s = 0
    t = arg2
    while idx:
        if scale < arg1:
            revert with 'NH{q', 17
        if t and scale - arg1 > -1 / t:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if s > !((scale * t) - (arg1 * t) / scale):
            revert with 'NH{q', 17
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (scale * t) - (arg1 * t) / scale
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_e73393ab.length
        mem[0] = 9
        u = 0
        v = sha3(9)
        w = mem[64] + 100
        while u < sub_e73393ab.length:
            mem[w] = stor[v]
            u = u + 1
            v = v + 1
            w = w + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args (scale * t) - (arg1 * t) / scale, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        require mem[_28] <= test266151307()
        require _28 + return_data.size > _28 + mem[_28] + 31
        _30 = mem[_28 + mem[_28]]
        if mem[_28 + mem[_28]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_28 + mem[_28]]) + 1 < 0 or _28 + ceil32(return_data.size) + ceil32(32 * mem[_28 + mem[_28]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _28 + ceil32(return_data.size) + ceil32(32 * mem[_28 + mem[_28]]) + 1
        mem[_28 + ceil32(return_data.size)] = _30
        require _29 + (32 * _30) + 32 <= return_data.size
        v = _28 + _29 + 32
        w = _28 + ceil32(return_data.size) + 32
        u = 0
        while u < _30:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u + 1
            continue 
        if _30 < 1:
            revert with 'NH{q', 17
        if _30 - 1 >= _30:
            revert with 'NH{q', 50
        if scale and sub_5ebf2439 > -1 / scale:
            revert with 'NH{q', 17
        if mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] and arg3 > -1 / mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        if not scale * sub_5ebf2439:
            revert with 'NH{q', 18
        if scale < arg1:
            revert with 'NH{q', 17
        if arg1 and mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] * arg3 / scale * sub_5ebf2439 > -1 / arg1:
            revert with 'NH{q', 17
        if not scale - arg1:
            revert with 'NH{q', 18
        if mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] * arg3 / scale * sub_5ebf2439 > !(arg1 * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] * arg3 / scale * sub_5ebf2439 / scale - arg1):
            revert with 'NH{q', 17
        if t < (mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] * arg3 / scale * sub_5ebf2439) + (arg1 * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] * arg3 / scale * sub_5ebf2439 / scale - arg1):
            revert with 'NH{q', 17
        if idx < 1:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + ((scale * t) - (arg1 * t) / scale)
        t = t - (mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] * arg3 / scale * sub_5ebf2439) - (arg1 * mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32] * arg3 / scale * sub_5ebf2439 / scale - arg1)
        continue 
    return s
}

function getAmountsOutDeusToDei(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.global_collateral_ratio() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if 10^6 == ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg1
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = sub_8e2b472d.length
        mem[0] = 10
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 196
        while idx < sub_8e2b472d.length:
            mem[t] = sub_8e2b472d[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg1, Array(len=sub_8e2b472d.length, data=mem[ceil32(return_data.size) + 196 len 32 * sub_8e2b472d.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _60 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127
        _62 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        require _60 + (32 * _62) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _62] = mem[ceil32(return_data.size) + _60 + 128 len 32 * _62]
        if _62 < 1:
            revert with 'NH{q', 17
        if _62 - 1 >= _62:
            revert with 'NH{q', 50
        if mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] and sub_5ebf2439 > -1 / mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128]:
            revert with 'NH{q', 17
        require ext_code.size(sub_c7e5b79eAddress)
        staticcall sub_c7e5b79eAddress.minting_fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _113 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 10^6 < mem[_113]:
            revert with 'NH{q', 17
        if mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] * sub_5ebf2439 and -mem[_113] + 10^6 > -1 / mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] * sub_5ebf2439:
            revert with 'NH{q', 17
        mem[mem[64]] = (10^6 * mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] * sub_5ebf2439) - (mem[_113] * mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] * sub_5ebf2439) / 10^6
    else:
        if not ext_call.return_data[0]:
            if arg1 and arg2 > -1 / arg1:
                revert with 'NH{q', 17
            if not scale:
                revert with 'NH{q', 18
            require ext_code.size(sub_c7e5b79eAddress)
            staticcall sub_c7e5b79eAddress.minting_fee() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^6 < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if arg1 * arg2 / scale and -ext_call.return_data[0] + 10^6 > -1 / arg1 * arg2 / scale:
                revert with 'NH{q', 17
            return ((10^6 * arg1 * arg2 / scale) - (ext_call.return_data[0] * arg1 * arg2 / scale) / 10^6)
        idx = sub_e9655b5b
        s = 0
        t = arg1
        while idx:
            if t and ext_call.return_data[0] > -1 / t:
                revert with 'NH{q', 17
            if not scale:
                revert with 'NH{q', 18
            if s > !(t * ext_call.return_data[0] / scale):
                revert with 'NH{q', 17
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = t * ext_call.return_data[0] / scale
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_8e2b472d.length
            mem[0] = 10
            u = 0
            v = sha3(10)
            w = mem[64] + 100
            while u < sub_8e2b472d.length:
                mem[w] = stor[v]
                u = u + 1
                v = v + 1
                w = w + 32
                continue 
            require ext_code.size(uniswap_routerAddress)
            staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args t * ext_call.return_data[0] / scale, Array(len=sub_8e2b472d.length, data=mem[mem[64] + 100 len 32 * sub_8e2b472d.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_104]
            require mem[_104] <= test266151307()
            require _104 + return_data.size > _104 + mem[_104] + 31
            _110 = mem[_104 + mem[_104]]
            if mem[_104 + mem[_104]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_104 + mem[_104]]) + 1 < 0 or _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1
            mem[_104 + ceil32(return_data.size)] = _110
            require _108 + (32 * _110) + 32 <= return_data.size
            v = _104 + _108 + 32
            w = _104 + ceil32(return_data.size) + 32
            u = 0
            while u < _110:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u + 1
                continue 
            if _110 < 1:
                revert with 'NH{q', 17
            if _110 - 1 >= _110:
                revert with 'NH{q', 50
            if scale < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] and scale - ext_call.return_data[0] > -1 / mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if (scale * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32]) - (ext_call.return_data[0] * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32]) / arg2 > !(t * ext_call.return_data[0] / scale):
                revert with 'NH{q', 17
            if t < ((scale * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32]) - (ext_call.return_data[0] * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32]) / arg2) + (t * ext_call.return_data[0] / scale):
                revert with 'NH{q', 17
            if idx < 1:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s + (t * ext_call.return_data[0] / scale)
            t = t - ((scale * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32]) - (ext_call.return_data[0] * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32]) / arg2) - (t * ext_call.return_data[0] / scale)
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_e73393ab.length
        mem[0] = 9
        idx = 0
        t = 0
        u = mem[64] + 100
        while idx < sub_e73393ab.length:
            mem[u] = sub_e73393ab[t]
            idx = idx + 1
            t = t + 1
            u = u + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_103]
        require mem[_103] <= test266151307()
        require _103 + return_data.size > _103 + mem[_103] + 31
        _109 = mem[_103 + mem[_103]]
        if mem[_103 + mem[_103]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_103 + mem[_103]]) + 1 < 0 or _103 + ceil32(return_data.size) + ceil32(32 * mem[_103 + mem[_103]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _103 + ceil32(return_data.size) + ceil32(32 * mem[_103 + mem[_103]]) + 1
        mem[_103 + ceil32(return_data.size)] = _109
        require _107 + (32 * _109) + 32 <= return_data.size
        mem[_103 + ceil32(return_data.size) + 32 len 32 * _109] = mem[_103 + _107 + 32 len 32 * _109]
        if _109 < 1:
            revert with 'NH{q', 17
        if _109 - 1 >= _109:
            revert with 'NH{q', 50
        if mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] and sub_5ebf2439 > -1 / mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        if arg1 < s:
            revert with 'NH{q', 17
        if arg1 - s and arg2 > -1 / arg1 - s:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if (arg1 * arg2) - (s * arg2) / scale > !(mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * sub_5ebf2439):
            revert with 'NH{q', 17
        require ext_code.size(sub_c7e5b79eAddress)
        staticcall sub_c7e5b79eAddress.minting_fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _143 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 10^6 < mem[_143]:
            revert with 'NH{q', 17
        if ((arg1 * arg2) - (s * arg2) / scale) + (mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * sub_5ebf2439) and -mem[_143] + 10^6 > -1 / ((arg1 * arg2) - (s * arg2) / scale) + (mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * sub_5ebf2439):
            revert with 'NH{q', 17
        mem[mem[64]] = (10^6 * (arg1 * arg2) - (s * arg2) / scale) - (mem[_143] * (arg1 * arg2) - (s * arg2) / scale) + (10^6 * mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * sub_5ebf2439) - (mem[_143] * mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * sub_5ebf2439) / 10^6
    return memory
      from mem[64]
       len 32
}

function getAmountsOutCollateralToDei(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.global_collateral_ratio() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if 10^6 == ext_call.return_data[0]:
        if arg1 and sub_5ebf2439 > -1 / arg1:
            revert with 'NH{q', 17
        require ext_code.size(sub_c7e5b79eAddress)
        staticcall sub_c7e5b79eAddress.minting_fee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 10^6 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        if arg1 * sub_5ebf2439 and -ext_call.return_data[0] + 10^6 > -1 / arg1 * sub_5ebf2439:
            revert with 'NH{q', 17
        return ((10^6 * arg1 * sub_5ebf2439) - (ext_call.return_data[0] * arg1 * sub_5ebf2439) / 10^6)
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 100] = arg1
        mem[ceil32(return_data.size) + 132] = 64
        mem[ceil32(return_data.size) + 164] = sub_e73393ab.length
        mem[0] = 9
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 196
        while idx < sub_e73393ab.length:
            mem[t] = sub_e73393ab[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg1, Array(len=sub_e73393ab.length, data=mem[ceil32(return_data.size) + 196 len 32 * sub_e73393ab.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _60 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127
        _62 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        require _60 + (32 * _62) + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + 128 len 32 * _62] = mem[ceil32(return_data.size) + _60 + 128 len 32 * _62]
        if _62 < 1:
            revert with 'NH{q', 17
        if _62 - 1 >= _62:
            revert with 'NH{q', 50
        if mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] and arg2 > -1 / mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128]:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        require ext_code.size(sub_c7e5b79eAddress)
        staticcall sub_c7e5b79eAddress.minting_fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 10^6 < mem[_115]:
            revert with 'NH{q', 17
        if mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] * arg2 / scale and -mem[_115] + 10^6 > -1 / mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] * arg2 / scale:
            revert with 'NH{q', 17
        mem[mem[64]] = (10^6 * mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] * arg2 / scale) - (mem[_115] * mem[(32 * _62 - 1) + (2 * ceil32(return_data.size)) + 128] * arg2 / scale) / 10^6
    else:
        idx = sub_e9655b5b
        s = 0
        t = arg1
        while idx:
            if scale < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if t and scale - ext_call.return_data[0] > -1 / t:
                revert with 'NH{q', 17
            if not scale:
                revert with 'NH{q', 18
            if s > !((scale * t) - (ext_call.return_data[0] * t) / scale):
                revert with 'NH{q', 17
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (scale * t) - (ext_call.return_data[0] * t) / scale
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_e73393ab.length
            mem[0] = 9
            u = 0
            v = sha3(9)
            w = mem[64] + 100
            while u < sub_e73393ab.length:
                mem[w] = stor[v]
                u = u + 1
                v = v + 1
                w = w + 32
                continue 
            require ext_code.size(uniswap_routerAddress)
            staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args (scale * t) - (ext_call.return_data[0] * t) / scale, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _108 = mem[_104]
            require mem[_104] <= test266151307()
            require _104 + return_data.size > _104 + mem[_104] + 31
            _110 = mem[_104 + mem[_104]]
            if mem[_104 + mem[_104]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_104 + mem[_104]]) + 1 < 0 or _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _104 + ceil32(return_data.size) + ceil32(32 * mem[_104 + mem[_104]]) + 1
            mem[_104 + ceil32(return_data.size)] = _110
            require _108 + (32 * _110) + 32 <= return_data.size
            v = _104 + _108 + 32
            w = _104 + ceil32(return_data.size) + 32
            u = 0
            while u < _110:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                u = u + 1
                continue 
            if _110 < 1:
                revert with 'NH{q', 17
            if _110 - 1 >= _110:
                revert with 'NH{q', 50
            if scale and sub_5ebf2439 > -1 / scale:
                revert with 'NH{q', 17
            if mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] and arg2 > -1 / mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            if not scale * sub_5ebf2439:
                revert with 'NH{q', 18
            if scale < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] and mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] * arg2 / scale * sub_5ebf2439 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not scale - ext_call.return_data[0]:
                revert with 'NH{q', 18
            if mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] * arg2 / scale * sub_5ebf2439 > !(ext_call.return_data[0] * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] * arg2 / scale * sub_5ebf2439 / scale - ext_call.return_data[0]):
                revert with 'NH{q', 17
            if t < (mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] * arg2 / scale * sub_5ebf2439) + (ext_call.return_data[0] * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] * arg2 / scale * sub_5ebf2439 / scale - ext_call.return_data[0]):
                revert with 'NH{q', 17
            if idx < 1:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s + ((scale * t) - (ext_call.return_data[0] * t) / scale)
            t = t - (mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] * arg2 / scale * sub_5ebf2439) - (ext_call.return_data[0] * mem[(32 * _110 - 1) + _104 + ceil32(return_data.size) + 32] * arg2 / scale * sub_5ebf2439 / scale - ext_call.return_data[0])
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_e73393ab.length
        mem[0] = 9
        idx = 0
        t = 0
        u = mem[64] + 100
        while idx < sub_e73393ab.length:
            mem[u] = sub_e73393ab[t]
            idx = idx + 1
            t = t + 1
            u = u + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args s, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_103]
        require mem[_103] <= test266151307()
        require _103 + return_data.size > _103 + mem[_103] + 31
        _109 = mem[_103 + mem[_103]]
        if mem[_103 + mem[_103]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_103 + mem[_103]]) + 1 < 0 or _103 + ceil32(return_data.size) + ceil32(32 * mem[_103 + mem[_103]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _103 + ceil32(return_data.size) + ceil32(32 * mem[_103 + mem[_103]]) + 1
        mem[_103 + ceil32(return_data.size)] = _109
        require _107 + (32 * _109) + 32 <= return_data.size
        mem[_103 + ceil32(return_data.size) + 32 len 32 * _109] = mem[_103 + _107 + 32 len 32 * _109]
        if _109 < 1:
            revert with 'NH{q', 17
        if _109 - 1 >= _109:
            revert with 'NH{q', 50
        if mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] and arg2 > -1 / mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if arg1 < s:
            revert with 'NH{q', 17
        if arg1 - s and sub_5ebf2439 > -1 / arg1 - s:
            revert with 'NH{q', 17
        if (arg1 * sub_5ebf2439) - (s * sub_5ebf2439) > !(mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * arg2 / scale):
            revert with 'NH{q', 17
        require ext_code.size(sub_c7e5b79eAddress)
        staticcall sub_c7e5b79eAddress.minting_fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _143 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 10^6 < mem[_143]:
            revert with 'NH{q', 17
        if (arg1 * sub_5ebf2439) - (s * sub_5ebf2439) + (mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * arg2 / scale) and -mem[_143] + 10^6 > -1 / (arg1 * sub_5ebf2439) - (s * sub_5ebf2439) + (mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * arg2 / scale):
            revert with 'NH{q', 17
        mem[mem[64]] = (10^6 * arg1 * sub_5ebf2439) - (mem[_143] * arg1 * sub_5ebf2439) - (10^6 * s * sub_5ebf2439) + (mem[_143] * s * sub_5ebf2439) + (10^6 * mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * arg2 / scale) - (mem[_143] * mem[(32 * _109 - 1) + _103 + ceil32(return_data.size) + 32] * arg2 / scale) / 10^6
    return memory
      from mem[64]
       len 32
}

function sub_3f20ff04(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 68).length
    idx = 0
    s = 196
    t = cd[68] + 36
    while idx < ('cd', 68).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswap_routerAddress)
    staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _68 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127
    _69 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _69
    require _68 + (32 * _69) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _69] = mem[_68 + 128 len 32 * _69]
    if _69 < 1:
        revert with 'NH{q', 17
    if _69 - 1 >= _69:
        revert with 'NH{q', 50
    _133 = mem[(32 * _69 - 1) + ceil32(return_data.size) + 128]
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.global_collateral_ratio() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _136 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _137 = mem[_136]
    if 10^6 == mem[_136]:
        if mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] and sub_5ebf2439 > -1 / mem[(32 * _69 - 1) + ceil32(return_data.size) + 128]:
            revert with 'NH{q', 17
        require ext_code.size(sub_c7e5b79eAddress)
        staticcall sub_c7e5b79eAddress.minting_fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _143 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 10^6 < mem[_143]:
            revert with 'NH{q', 17
        if mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] * sub_5ebf2439 and -mem[_143] + 10^6 > -1 / mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] * sub_5ebf2439:
            revert with 'NH{q', 17
        mem[mem[64]] = (10^6 * mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] * sub_5ebf2439) - (mem[_143] * mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] * sub_5ebf2439) / 10^6
    else:
        if not mem[_136]:
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[(32 * _69 - 1) + ceil32(return_data.size) + 128]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_e73393ab.length
            mem[0] = 9
            idx = 0
            s = 0
            t = mem[64] + 100
            while idx < sub_e73393ab.length:
                mem[t] = sub_e73393ab[s]
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(uniswap_routerAddress)
            staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _192 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_192]
            require mem[_192] <= test266151307()
            require _192 + return_data.size > _192 + mem[_192] + 31
            _195 = mem[_192 + mem[_192]]
            if mem[_192 + mem[_192]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_192 + mem[_192]]) + 1 < 0 or _192 + ceil32(return_data.size) + ceil32(32 * mem[_192 + mem[_192]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _192 + ceil32(return_data.size) + ceil32(32 * mem[_192 + mem[_192]]) + 1
            mem[_192 + ceil32(return_data.size)] = _195
            require _193 + (32 * _195) + 32 <= return_data.size
            mem[_192 + ceil32(return_data.size) + 32 len 32 * _195] = mem[_192 + _193 + 32 len 32 * _195]
            if _195 < 1:
                revert with 'NH{q', 17
            if _195 - 1 >= _195:
                revert with 'NH{q', 50
            _239 = mem[(32 * _195 - 1) + _192 + ceil32(return_data.size) + 32]
            if mem[(32 * _195 - 1) + _192 + ceil32(return_data.size) + 32] and cd[36] > -1 / mem[(32 * _195 - 1) + _192 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            if not scale:
                revert with 'NH{q', 18
            require ext_code.size(sub_c7e5b79eAddress)
            staticcall sub_c7e5b79eAddress.minting_fee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _248 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 10^6 < mem[_248]:
                revert with 'NH{q', 17
            if _239 * cd[36] / scale and -mem[_248] + 10^6 > -1 / _239 * cd[36] / scale:
                revert with 'NH{q', 17
            mem[mem[64]] = (10^6 * _239 * cd[36] / scale) - (mem[_248] * _239 * cd[36] / scale) / 10^6
        else:
            idx = sub_e9655b5b
            s = 0
            t = mem[(32 * _69 - 1) + ceil32(return_data.size) + 128]
            while idx:
                if scale < _137:
                    revert with 'NH{q', 17
                if t and scale - _137 > -1 / t:
                    revert with 'NH{q', 17
                if not scale:
                    revert with 'NH{q', 18
                if s > !((scale * t) - (_137 * t) / scale):
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = (scale * t) - (_137 * t) / scale
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = sub_e73393ab.length
                mem[0] = 9
                u = 0
                v = sha3(9)
                w = mem[64] + 100
                while u < sub_e73393ab.length:
                    mem[w] = stor[v]
                    u = u + 1
                    v = v + 1
                    w = w + 32
                    continue 
                require ext_code.size(uniswap_routerAddress)
                staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args (scale * t) - (_137 * t) / scale, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _241 = mem[_237]
                require mem[_237] <= test266151307()
                require _237 + return_data.size > _237 + mem[_237] + 31
                _243 = mem[_237 + mem[_237]]
                if mem[_237 + mem[_237]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_237 + mem[_237]]) + 1 < 0 or _237 + ceil32(return_data.size) + ceil32(32 * mem[_237 + mem[_237]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _237 + ceil32(return_data.size) + ceil32(32 * mem[_237 + mem[_237]]) + 1
                mem[_237 + ceil32(return_data.size)] = _243
                require _241 + (32 * _243) + 32 <= return_data.size
                v = _237 + _241 + 32
                w = _237 + ceil32(return_data.size) + 32
                u = 0
                while u < _243:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u + 1
                    continue 
                if _243 < 1:
                    revert with 'NH{q', 17
                if _243 - 1 >= _243:
                    revert with 'NH{q', 50
                if scale and sub_5ebf2439 > -1 / scale:
                    revert with 'NH{q', 17
                if mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] and cd[36] > -1 / mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                if not scale * sub_5ebf2439:
                    revert with 'NH{q', 18
                if scale < _137:
                    revert with 'NH{q', 17
                if _137 and mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 > -1 / _137:
                    revert with 'NH{q', 17
                if not scale - _137:
                    revert with 'NH{q', 18
                if mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 > !(_137 * mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 / scale - _137):
                    revert with 'NH{q', 17
                if t < (mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439) + (_137 * mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 / scale - _137):
                    revert with 'NH{q', 17
                if idx < 1:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s + ((scale * t) - (_137 * t) / scale)
                t = t - (mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439) - (_137 * mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 / scale - _137)
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_e73393ab.length
            mem[0] = 9
            idx = 0
            t = 0
            u = mem[64] + 100
            while idx < sub_e73393ab.length:
                mem[u] = sub_e73393ab[t]
                idx = idx + 1
                t = t + 1
                u = u + 32
                continue 
            require ext_code.size(uniswap_routerAddress)
            staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _240 = mem[_236]
            require mem[_236] <= test266151307()
            require _236 + return_data.size > _236 + mem[_236] + 31
            _242 = mem[_236 + mem[_236]]
            if mem[_236 + mem[_236]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_236 + mem[_236]]) + 1 < 0 or _236 + ceil32(return_data.size) + ceil32(32 * mem[_236 + mem[_236]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _236 + ceil32(return_data.size) + ceil32(32 * mem[_236 + mem[_236]]) + 1
            mem[_236 + ceil32(return_data.size)] = _242
            require _240 + (32 * _242) + 32 <= return_data.size
            mem[_236 + ceil32(return_data.size) + 32 len 32 * _242] = mem[_236 + _240 + 32 len 32 * _242]
            if _242 < 1:
                revert with 'NH{q', 17
            if _242 - 1 >= _242:
                revert with 'NH{q', 50
            if mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] and cd[36] > -1 / mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            if not scale:
                revert with 'NH{q', 18
            if _133 < s:
                revert with 'NH{q', 17
            if _133 - s and sub_5ebf2439 > -1 / _133 - s:
                revert with 'NH{q', 17
            if (_133 * sub_5ebf2439) - (s * sub_5ebf2439) > !(mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale):
                revert with 'NH{q', 17
            require ext_code.size(sub_c7e5b79eAddress)
            staticcall sub_c7e5b79eAddress.minting_fee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 10^6 < mem[_276]:
                revert with 'NH{q', 17
            if (_133 * sub_5ebf2439) - (s * sub_5ebf2439) + (mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale) and -mem[_276] + 10^6 > -1 / (_133 * sub_5ebf2439) - (s * sub_5ebf2439) + (mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale):
                revert with 'NH{q', 17
            mem[mem[64]] = (10^6 * _133 * sub_5ebf2439) - (mem[_276] * _133 * sub_5ebf2439) - (10^6 * s * sub_5ebf2439) + (mem[_276] * s * sub_5ebf2439) + (10^6 * mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale) - (mem[_276] * mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale) / 10^6
    return memory
      from mem[64]
       len 32
}

function sub_3fb64e0d(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 68).length
    idx = 0
    s = 196
    t = cd[68] + 36
    while idx < ('cd', 68).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(uniswap_routerAddress)
    staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _68 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127
    _69 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _69
    require _68 + (32 * _69) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len 32 * _69] = mem[_68 + 128 len 32 * _69]
    if _69 < 1:
        revert with 'NH{q', 17
    if _69 - 1 >= _69:
        revert with 'NH{q', 50
    _133 = mem[(32 * _69 - 1) + ceil32(return_data.size) + 128]
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.global_collateral_ratio() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _136 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _137 = mem[_136]
    if 10^6 == mem[_136]:
        if mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] and sub_5ebf2439 > -1 / mem[(32 * _69 - 1) + ceil32(return_data.size) + 128]:
            revert with 'NH{q', 17
        require ext_code.size(sub_c7e5b79eAddress)
        staticcall sub_c7e5b79eAddress.minting_fee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _143 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 10^6 < mem[_143]:
            revert with 'NH{q', 17
        if mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] * sub_5ebf2439 and -mem[_143] + 10^6 > -1 / mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] * sub_5ebf2439:
            revert with 'NH{q', 17
        mem[mem[64]] = (10^6 * mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] * sub_5ebf2439) - (mem[_143] * mem[(32 * _69 - 1) + ceil32(return_data.size) + 128] * sub_5ebf2439) / 10^6
    else:
        if not mem[_136]:
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[(32 * _69 - 1) + ceil32(return_data.size) + 128]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_e73393ab.length
            mem[0] = 9
            idx = 0
            s = 0
            t = mem[64] + 100
            while idx < sub_e73393ab.length:
                mem[t] = sub_e73393ab[s]
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            require ext_code.size(uniswap_routerAddress)
            staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _192 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _193 = mem[_192]
            require mem[_192] <= test266151307()
            require _192 + return_data.size > _192 + mem[_192] + 31
            _195 = mem[_192 + mem[_192]]
            if mem[_192 + mem[_192]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_192 + mem[_192]]) + 1 < 0 or _192 + ceil32(return_data.size) + ceil32(32 * mem[_192 + mem[_192]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _192 + ceil32(return_data.size) + ceil32(32 * mem[_192 + mem[_192]]) + 1
            mem[_192 + ceil32(return_data.size)] = _195
            require _193 + (32 * _195) + 32 <= return_data.size
            mem[_192 + ceil32(return_data.size) + 32 len 32 * _195] = mem[_192 + _193 + 32 len 32 * _195]
            if _195 < 1:
                revert with 'NH{q', 17
            if _195 - 1 >= _195:
                revert with 'NH{q', 50
            _239 = mem[(32 * _195 - 1) + _192 + ceil32(return_data.size) + 32]
            if mem[(32 * _195 - 1) + _192 + ceil32(return_data.size) + 32] and cd[36] > -1 / mem[(32 * _195 - 1) + _192 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            if not scale:
                revert with 'NH{q', 18
            require ext_code.size(sub_c7e5b79eAddress)
            staticcall sub_c7e5b79eAddress.minting_fee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _248 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 10^6 < mem[_248]:
                revert with 'NH{q', 17
            if _239 * cd[36] / scale and -mem[_248] + 10^6 > -1 / _239 * cd[36] / scale:
                revert with 'NH{q', 17
            mem[mem[64]] = (10^6 * _239 * cd[36] / scale) - (mem[_248] * _239 * cd[36] / scale) / 10^6
        else:
            idx = sub_e9655b5b
            s = 0
            t = mem[(32 * _69 - 1) + ceil32(return_data.size) + 128]
            while idx:
                if scale < _137:
                    revert with 'NH{q', 17
                if t and scale - _137 > -1 / t:
                    revert with 'NH{q', 17
                if not scale:
                    revert with 'NH{q', 18
                if s > !((scale * t) - (_137 * t) / scale):
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = (scale * t) - (_137 * t) / scale
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = sub_e73393ab.length
                mem[0] = 9
                u = 0
                v = sha3(9)
                w = mem[64] + 100
                while u < sub_e73393ab.length:
                    mem[w] = stor[v]
                    u = u + 1
                    v = v + 1
                    w = w + 32
                    continue 
                require ext_code.size(uniswap_routerAddress)
                staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args (scale * t) - (_137 * t) / scale, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _237 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _241 = mem[_237]
                require mem[_237] <= test266151307()
                require _237 + return_data.size > _237 + mem[_237] + 31
                _243 = mem[_237 + mem[_237]]
                if mem[_237 + mem[_237]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_237 + mem[_237]]) + 1 < 0 or _237 + ceil32(return_data.size) + ceil32(32 * mem[_237 + mem[_237]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _237 + ceil32(return_data.size) + ceil32(32 * mem[_237 + mem[_237]]) + 1
                mem[_237 + ceil32(return_data.size)] = _243
                require _241 + (32 * _243) + 32 <= return_data.size
                v = _237 + _241 + 32
                w = _237 + ceil32(return_data.size) + 32
                u = 0
                while u < _243:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u + 1
                    continue 
                if _243 < 1:
                    revert with 'NH{q', 17
                if _243 - 1 >= _243:
                    revert with 'NH{q', 50
                if scale and sub_5ebf2439 > -1 / scale:
                    revert with 'NH{q', 17
                if mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] and cd[36] > -1 / mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                if not scale * sub_5ebf2439:
                    revert with 'NH{q', 18
                if scale < _137:
                    revert with 'NH{q', 17
                if _137 and mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 > -1 / _137:
                    revert with 'NH{q', 17
                if not scale - _137:
                    revert with 'NH{q', 18
                if mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 > !(_137 * mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 / scale - _137):
                    revert with 'NH{q', 17
                if t < (mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439) + (_137 * mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 / scale - _137):
                    revert with 'NH{q', 17
                if idx < 1:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s + ((scale * t) - (_137 * t) / scale)
                t = t - (mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439) - (_137 * mem[(32 * _243 - 1) + _237 + ceil32(return_data.size) + 32] * cd[36] / scale * sub_5ebf2439 / scale - _137)
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = sub_e73393ab.length
            mem[0] = 9
            idx = 0
            t = 0
            u = mem[64] + 100
            while idx < sub_e73393ab.length:
                mem[u] = sub_e73393ab[t]
                idx = idx + 1
                t = t + 1
                u = u + 32
                continue 
            require ext_code.size(uniswap_routerAddress)
            staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args s, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _240 = mem[_236]
            require mem[_236] <= test266151307()
            require _236 + return_data.size > _236 + mem[_236] + 31
            _242 = mem[_236 + mem[_236]]
            if mem[_236 + mem[_236]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_236 + mem[_236]]) + 1 < 0 or _236 + ceil32(return_data.size) + ceil32(32 * mem[_236 + mem[_236]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _236 + ceil32(return_data.size) + ceil32(32 * mem[_236 + mem[_236]]) + 1
            mem[_236 + ceil32(return_data.size)] = _242
            require _240 + (32 * _242) + 32 <= return_data.size
            mem[_236 + ceil32(return_data.size) + 32 len 32 * _242] = mem[_236 + _240 + 32 len 32 * _242]
            if _242 < 1:
                revert with 'NH{q', 17
            if _242 - 1 >= _242:
                revert with 'NH{q', 50
            if mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] and cd[36] > -1 / mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            if not scale:
                revert with 'NH{q', 18
            if _133 < s:
                revert with 'NH{q', 17
            if _133 - s and sub_5ebf2439 > -1 / _133 - s:
                revert with 'NH{q', 17
            if (_133 * sub_5ebf2439) - (s * sub_5ebf2439) > !(mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale):
                revert with 'NH{q', 17
            require ext_code.size(sub_c7e5b79eAddress)
            staticcall sub_c7e5b79eAddress.minting_fee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _276 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 10^6 < mem[_276]:
                revert with 'NH{q', 17
            if (_133 * sub_5ebf2439) - (s * sub_5ebf2439) + (mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale) and -mem[_276] + 10^6 > -1 / (_133 * sub_5ebf2439) - (s * sub_5ebf2439) + (mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale):
                revert with 'NH{q', 17
            mem[mem[64]] = (10^6 * _133 * sub_5ebf2439) - (mem[_276] * _133 * sub_5ebf2439) - (10^6 * s * sub_5ebf2439) + (mem[_276] * s * sub_5ebf2439) + (10^6 * mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale) - (mem[_276] * mem[(32 * _242 - 1) + _236 + ceil32(return_data.size) + 32] * cd[36] / scale) / 10^6
    return memory
      from mem[64]
       len 32
}

function sub_463b65d6(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321 < 320 or ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321
    mem[320] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = 352
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[3] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _246 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1
        mem[_246] = cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[3] + cd[s] + cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] + 68 <= calldata.size
        mem[_246 + 32 len cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]] = call.data[cd[4] + ('cd', 4)[3] + cd[s] + 68 len cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]]
        mem[_246 + cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] + 32] = 0
        mem[t] = _246
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = 320
    require ('cd', 4)[4] == bool(('cd', 4)[4])
    mem[256] = ('cd', 4)[4]
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > test266151307():
        revert with 'NH{q', 65
    _247 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1
    mem[_247] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[4] + ('cd', 4)[5] + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[5] + 36
    t = _247 + 32
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[288] = _247
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[36]
    require ext_code.size(collateral_address)
    call collateral_address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[36]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _491 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_491] == bool(mem[_491])
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.global_collateral_ratio() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _495 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _496 = mem[_495]
    if 10^6 == mem[_495]:
        _497 = mem[96]
        _498 = mem[160]
        _499 = mem[224]
        _500 = mem[64]
        mem[mem[64]] = 0x32ad1ee400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[36]
        mem[mem[64] + 36] = _497
        mem[mem[64] + 68] = _498
        mem[mem[64] + 100] = 128
        _503 = mem[_499]
        mem[mem[64] + 132] = mem[_499]
        idx = 0
        s = _499 + 32
        t = mem[64] + (32 * _503) + 164
        u = mem[64] + 164
        while idx < _503:
            mem[u] = t + -_500 - 164
            _730 = mem[s]
            _731 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _731:
                mem[v + t + 32] = mem[v + _730 + 32]
                v = v + 32
                continue 
            if ceil32(_731) > _731:
                mem[t + _731 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_731) + t + 32
            u = u + 32
            continue 
        require ext_code.size(sub_c7e5b79eAddress)
        call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(collateral_address)
        staticcall collateral_address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _742 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _745 = mem[_742]
        if not mem[256]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _758 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _761 = mem[_758]
            if mem[_758] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _761
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _761
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _778 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_778] == bool(mem[_778])
            emit Swap(collateral_address, cd[36], _761, mem[128], _496);
            return _761
        if mem[_742] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _759 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _765 = mem[_759]
            if mem[_759] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _765
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _765
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _781 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_781] == bool(mem[_781])
            emit Swap(collateral_address, cd[36], _765, mem[128], _496);
            return _765
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _745
        require ext_code.size(collateral_address)
        call collateral_address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _745
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _760 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_760] == bool(mem[_760])
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _796 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _803 = mem[_796]
        if mem[_796] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _803
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _803
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _825 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_825] == bool(mem[_825])
        emit Swap(collateral_address, cd[36], _803, mem[128], _496);
        return _803
    if not mem[_495]:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[36]
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = sub_e73393ab.length
        mem[0] = 9
        idx = 0
        s = 0
        t = mem[64] + 196
        while idx < sub_e73393ab.length:
            mem[t] = sub_e73393ab[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = deadline
        require ext_code.size(uniswap_routerAddress)
        call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], 1, Array(len=sub_e73393ab.length, data=mem[mem[64] + 196 len 32 * sub_e73393ab.length]), address(this.address), deadline
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _737 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _740 = mem[_737]
        require mem[_737] <= test266151307()
        require _737 + return_data.size > _737 + mem[_737] + 31
        _743 = mem[_737 + mem[_737]]
        if mem[_737 + mem[_737]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_737 + mem[_737]]) + 1 < 0 or _737 + ceil32(return_data.size) + ceil32(32 * mem[_737 + mem[_737]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _737 + ceil32(return_data.size) + ceil32(32 * mem[_737 + mem[_737]]) + 1
        mem[_737 + ceil32(return_data.size)] = _743
        require _740 + (32 * _743) + 32 <= return_data.size
        mem[_737 + ceil32(return_data.size) + 32 len 32 * _743] = mem[_737 + _740 + 32 len 32 * _743]
        if _743 < 1:
            revert with 'NH{q', 17
        if _743 - 1 >= _743:
            revert with 'NH{q', 50
        _964 = mem[128]
        _965 = mem[160]
        _966 = mem[224]
        _967 = mem[64]
        mem[mem[64]] = 0xc6301e5d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[(32 * _743 - 1) + _737 + ceil32(return_data.size) + 32]
        mem[mem[64] + 36] = _964
        mem[mem[64] + 68] = _965
        mem[mem[64] + 100] = 128
        _970 = mem[_966]
        mem[mem[64] + 132] = mem[_966]
        idx = 0
        s = _966 + 32
        t = mem[64] + (32 * _970) + 164
        u = mem[64] + 164
        while idx < _970:
            mem[u] = t + -_967 - 164
            _1113 = mem[s]
            _1114 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1114:
                mem[v + t + 32] = mem[v + _1113 + 32]
                v = v + 32
                continue 
            if ceil32(_1114) > _1114:
                mem[t + _1114 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1114) + t + 32
            u = u + 32
            continue 
        require ext_code.size(sub_c7e5b79eAddress)
        call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(collateral_address)
        staticcall collateral_address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1131 = mem[_1125]
        if not mem[256]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1144 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1147 = mem[_1144]
            if mem[_1144] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1147
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1147
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1162] == bool(mem[_1162])
            emit Swap(collateral_address, cd[36], _1147, mem[128], _496);
            return _1147
        if mem[_1125] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1151 = mem[_1145]
            if mem[_1145] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1151
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1151
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1165] == bool(mem[_1165])
            emit Swap(collateral_address, cd[36], _1151, mem[128], _496);
            return _1151
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1131
        require ext_code.size(collateral_address)
        call collateral_address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1131
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1146] == bool(mem[_1146])
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1182 = mem[_1173]
        if mem[_1173] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1182
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1182
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1205] == bool(mem[_1205])
        emit Swap(collateral_address, cd[36], _1182, mem[128], _496);
        return _1182
    _501 = mem[128]
    idx = sub_e9655b5b
    s = 0
    t = cd[36]
    while idx:
        if scale < _496:
            revert with 'NH{q', 17
        if t and scale - _496 > -1 / t:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if s > !((scale * t) - (_496 * t) / scale):
            revert with 'NH{q', 17
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (scale * t) - (_496 * t) / scale
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_e73393ab.length
        mem[0] = 9
        u = 0
        v = sha3(9)
        w = mem[64] + 100
        while u < sub_e73393ab.length:
            mem[w] = stor[v]
            u = u + 1
            v = v + 1
            w = w + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args (scale * t) - (_496 * t) / scale, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _961 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _969 = mem[_961]
        require mem[_961] <= test266151307()
        require _961 + return_data.size > _961 + mem[_961] + 31
        _972 = mem[_961 + mem[_961]]
        if mem[_961 + mem[_961]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_961 + mem[_961]]) + 1 < 0 or _961 + ceil32(return_data.size) + ceil32(32 * mem[_961 + mem[_961]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _961 + ceil32(return_data.size) + ceil32(32 * mem[_961 + mem[_961]]) + 1
        mem[_961 + ceil32(return_data.size)] = _972
        require _969 + (32 * _972) + 32 <= return_data.size
        v = _961 + _969 + 32
        w = _961 + ceil32(return_data.size) + 32
        u = 0
        while u < _972:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u + 1
            continue 
        if _972 < 1:
            revert with 'NH{q', 17
        if _972 - 1 >= _972:
            revert with 'NH{q', 50
        if scale and sub_5ebf2439 > -1 / scale:
            revert with 'NH{q', 17
        if mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32] and _501 > -1 / mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        if not scale * sub_5ebf2439:
            revert with 'NH{q', 18
        if scale < _496:
            revert with 'NH{q', 17
        if _496 and mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32] * _501 / scale * sub_5ebf2439 > -1 / _496:
            revert with 'NH{q', 17
        if not scale - _496:
            revert with 'NH{q', 18
        if mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32] * _501 / scale * sub_5ebf2439 > !(_496 * mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32] * _501 / scale * sub_5ebf2439 / scale - _496):
            revert with 'NH{q', 17
        if t < (mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32] * _501 / scale * sub_5ebf2439) + (_496 * mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32] * _501 / scale * sub_5ebf2439 / scale - _496):
            revert with 'NH{q', 17
        if idx < 1:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + ((scale * t) - (_496 * t) / scale)
        t = t - (mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32] * _501 / scale * sub_5ebf2439) - (_496 * mem[(32 * _972 - 1) + _961 + ceil32(return_data.size) + 32] * _501 / scale * sub_5ebf2439 / scale - _496)
        continue 
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = s
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = sub_e73393ab.length
    mem[0] = 9
    idx = 0
    t = 0
    u = mem[64] + 196
    while idx < sub_e73393ab.length:
        mem[u] = sub_e73393ab[t]
        idx = idx + 1
        t = t + 1
        u = u + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = deadline
    require ext_code.size(uniswap_routerAddress)
    call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args s, 1, Array(len=sub_e73393ab.length, data=mem[mem[64] + 196 len 32 * sub_e73393ab.length]), address(this.address), deadline
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _960 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _968 = mem[_960]
    require mem[_960] <= test266151307()
    require _960 + return_data.size > _960 + mem[_960] + 31
    _971 = mem[_960 + mem[_960]]
    if mem[_960 + mem[_960]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[_960 + mem[_960]]) + 1 < 0 or _960 + ceil32(return_data.size) + ceil32(32 * mem[_960 + mem[_960]]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _960 + ceil32(return_data.size) + ceil32(32 * mem[_960 + mem[_960]]) + 1
    mem[_960 + ceil32(return_data.size)] = _971
    require _968 + (32 * _971) + 32 <= return_data.size
    mem[_960 + ceil32(return_data.size) + 32 len 32 * _971] = mem[_960 + _968 + 32 len 32 * _971]
    if _971 < 1:
        revert with 'NH{q', 17
    if _971 - 1 >= _971:
        revert with 'NH{q', 50
    if cd[36] < s:
        revert with 'NH{q', 17
    _1126 = mem[96]
    _1127 = mem[128]
    _1128 = mem[160]
    _1129 = mem[224]
    _1130 = mem[64]
    mem[mem[64]] = 0x54f9769d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[36] - s
    mem[mem[64] + 36] = mem[(32 * _971 - 1) + _960 + ceil32(return_data.size) + 32]
    mem[mem[64] + 68] = _1126
    mem[mem[64] + 100] = _1127
    mem[mem[64] + 132] = _1128
    mem[mem[64] + 164] = 192
    _1132 = mem[_1129]
    mem[mem[64] + 196] = mem[_1129]
    idx = 0
    s = _1129 + 32
    t = mem[64] + (32 * _1132) + 228
    u = mem[64] + 228
    while idx < _1132:
        mem[u] = t + -_1130 - 228
        _1247 = mem[s]
        _1248 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _1248:
            mem[v + t + 32] = mem[v + _1247 + 32]
            v = v + 32
            continue 
        if ceil32(_1248) > _1248:
            mem[t + _1248 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1248) + t + 32
        u = u + 32
        continue 
    require ext_code.size(sub_c7e5b79eAddress)
    call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(collateral_address)
    staticcall collateral_address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1254 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1255 = mem[_1254]
    if not mem[256]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1266 = mem[_1263]
        if mem[_1263] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1266
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1266
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1278 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1278] == bool(mem[_1278])
        emit Swap(collateral_address, cd[36], _1266, mem[128], _496);
        return _1266
    if mem[_1254] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1264 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1268 = mem[_1264]
        if mem[_1264] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1268
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1268
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1280 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1280] == bool(mem[_1280])
        emit Swap(collateral_address, cd[36], _1268, mem[128], _496);
        return _1268
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _1255
    require ext_code.size(collateral_address)
    call collateral_address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _1255
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1265 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1265] == bool(mem[_1265])
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1285 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1289 = mem[_1285]
    if mem[_1285] <= mem[192]:
        revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _1289
    require ext_code.size(sub_3cec7549Address)
    call sub_3cec7549Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _1289
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1302 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1302] == bool(mem[_1302])
    emit Swap(collateral_address, cd[36], _1289, mem[128], _496);
    return _1289
}

function sub_700e02b3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321 < 320 or ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321
    mem[320] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = 352
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[3] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _255 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1
        mem[_255] = cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[3] + cd[s] + cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] + 68 <= calldata.size
        mem[_255 + 32 len cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]] = call.data[cd[4] + ('cd', 4)[3] + cd[s] + 68 len cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]]
        mem[_255 + cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] + 32] = 0
        mem[t] = _255
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = 320
    require ('cd', 4)[4] == bool(('cd', 4)[4])
    mem[256] = ('cd', 4)[4]
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > test266151307():
        revert with 'NH{q', 65
    _256 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1
    mem[_256] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[4] + ('cd', 4)[5] + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[5] + 36
    t = _256 + 32
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[288] = _256
    mem[mem[64]] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 1
    mem[mem[64] + 36] = 128
    mem[mem[64] + 132] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    idx = 0
    s = _256 + 32
    t = mem[64] + 164
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = deadline
    require ext_code.size(uniswap_routerAddress)
    call uniswap_routerAddress.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, Array(len=cd[(cd[4] + ('cd', 4)[5] + 4)], data=mem[mem[64] + 164 len 32 * cd[(cd[4] + ('cd', 4)[5] + 4)]]), address(this.address), deadline
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _759 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _760 = mem[_759]
    require mem[_759] <= test266151307()
    require _759 + return_data.size > _759 + mem[_759] + 31
    _761 = mem[_759 + mem[_759]]
    if mem[_759 + mem[_759]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[_759 + mem[_759]]) + 1 < 0 or _759 + ceil32(return_data.size) + ceil32(32 * mem[_759 + mem[_759]]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _759 + ceil32(return_data.size) + ceil32(32 * mem[_759 + mem[_759]]) + 1
    mem[_759 + ceil32(return_data.size)] = _761
    require _760 + (32 * _761) + 32 <= return_data.size
    mem[_759 + ceil32(return_data.size) + 32 len 32 * _761] = mem[_759 + _760 + 32 len 32 * _761]
    if _761 < 1:
        revert with 'NH{q', 17
    if _761 - 1 >= _761:
        revert with 'NH{q', 50
    _1007 = mem[(32 * _761 - 1) + _759 + ceil32(return_data.size) + 32]
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.global_collateral_ratio() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1010 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1011 = mem[_1010]
    if 10^6 == mem[_1010]:
        _1012 = mem[96]
        _1013 = mem[160]
        _1014 = mem[224]
        _1015 = mem[64]
        mem[mem[64]] = 0x32ad1ee400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1007
        mem[mem[64] + 36] = _1012
        mem[mem[64] + 68] = _1013
        mem[mem[64] + 100] = 128
        _1018 = mem[_1014]
        mem[mem[64] + 132] = mem[_1014]
        idx = 0
        s = _1014 + 32
        t = mem[64] + (32 * _1018) + 164
        u = mem[64] + 164
        while idx < _1018:
            mem[u] = t + -_1015 - 164
            _1245 = mem[s]
            _1246 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1246:
                mem[v + t + 32] = mem[v + _1245 + 32]
                v = v + 32
                continue 
            if ceil32(_1246) > _1246:
                mem[t + _1246 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1246) + t + 32
            u = u + 32
            continue 
        require ext_code.size(sub_c7e5b79eAddress)
        call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(collateral_address)
        staticcall collateral_address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1260 = mem[_1257]
        if not mem[256]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1276 = mem[_1273]
            if mem[_1273] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1276
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1276
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1293] == bool(mem[_1293])
            emit Swap(0, msg.value, _1276, mem[128], _1011);
            return _1276
        if mem[_1257] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1274 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1280 = mem[_1274]
            if mem[_1274] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1280
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1280
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1296] == bool(mem[_1296])
            emit Swap(0, msg.value, _1280, mem[128], _1011);
            return _1280
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1260
        require ext_code.size(collateral_address)
        call collateral_address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1260
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1275 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1275] == bool(mem[_1275])
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1311 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1318 = mem[_1311]
        if mem[_1311] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1318
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1318
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1340 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1340] == bool(mem[_1340])
        emit Swap(0, msg.value, _1318, mem[128], _1011);
        return _1318
    if not mem[_1010]:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1007
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = sub_e73393ab.length
        mem[0] = 9
        idx = 0
        s = 0
        t = mem[64] + 196
        while idx < sub_e73393ab.length:
            mem[t] = sub_e73393ab[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = deadline
        require ext_code.size(uniswap_routerAddress)
        call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _1007, 1, Array(len=sub_e73393ab.length, data=mem[mem[64] + 196 len 32 * sub_e73393ab.length]), address(this.address), deadline
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1252 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1255 = mem[_1252]
        require mem[_1252] <= test266151307()
        require _1252 + return_data.size > _1252 + mem[_1252] + 31
        _1258 = mem[_1252 + mem[_1252]]
        if mem[_1252 + mem[_1252]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_1252 + mem[_1252]]) + 1 < 0 or _1252 + ceil32(return_data.size) + ceil32(32 * mem[_1252 + mem[_1252]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _1252 + ceil32(return_data.size) + ceil32(32 * mem[_1252 + mem[_1252]]) + 1
        mem[_1252 + ceil32(return_data.size)] = _1258
        require _1255 + (32 * _1258) + 32 <= return_data.size
        mem[_1252 + ceil32(return_data.size) + 32 len 32 * _1258] = mem[_1252 + _1255 + 32 len 32 * _1258]
        if _1258 < 1:
            revert with 'NH{q', 17
        if _1258 - 1 >= _1258:
            revert with 'NH{q', 50
        _1478 = mem[(32 * _1258 - 1) + _1252 + ceil32(return_data.size) + 32]
        _1479 = mem[128]
        _1480 = mem[160]
        _1481 = mem[224]
        _1482 = mem[64]
        mem[mem[64]] = 0xc6301e5d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _1478
        mem[mem[64] + 36] = _1479
        mem[mem[64] + 68] = _1480
        mem[mem[64] + 100] = 128
        _1485 = mem[_1481]
        mem[mem[64] + 132] = mem[_1481]
        idx = 0
        s = _1481 + 32
        t = mem[64] + (32 * _1485) + 164
        u = mem[64] + 164
        while idx < _1485:
            mem[u] = t + -_1482 - 164
            _1628 = mem[s]
            _1629 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1629:
                mem[v + t + 32] = mem[v + _1628 + 32]
                v = v + 32
                continue 
            if ceil32(_1629) > _1629:
                mem[t + _1629 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1629) + t + 32
            u = u + 32
            continue 
        require ext_code.size(sub_c7e5b79eAddress)
        call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(collateral_address)
        staticcall collateral_address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1640 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1646 = mem[_1640]
        if not mem[256]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1659 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1662 = mem[_1659]
            if mem[_1659] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1662
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1662
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1677 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1677] == bool(mem[_1677])
            emit Swap(0, msg.value, _1662, mem[128], _1011);
            return _1662
        if mem[_1640] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1660 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1666 = mem[_1660]
            if mem[_1660] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1666
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1666
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1680 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1680] == bool(mem[_1680])
            emit Swap(0, msg.value, _1666, mem[128], _1011);
            return _1666
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1646
        require ext_code.size(collateral_address)
        call collateral_address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1646
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1661 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1661] == bool(mem[_1661])
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1688 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1697 = mem[_1688]
        if mem[_1688] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1697
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1697
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1720 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1720] == bool(mem[_1720])
        emit Swap(0, msg.value, _1697, mem[128], _1011);
        return _1697
    _1016 = mem[128]
    idx = sub_e9655b5b
    s = 0
    t = _1007
    while idx:
        if scale < _1011:
            revert with 'NH{q', 17
        if t and scale - _1011 > -1 / t:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if s > !((scale * t) - (_1011 * t) / scale):
            revert with 'NH{q', 17
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (scale * t) - (_1011 * t) / scale
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_e73393ab.length
        mem[0] = 9
        u = 0
        v = sha3(9)
        w = mem[64] + 100
        while u < sub_e73393ab.length:
            mem[w] = stor[v]
            u = u + 1
            v = v + 1
            w = w + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args (scale * t) - (_1011 * t) / scale, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1476 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1484 = mem[_1476]
        require mem[_1476] <= test266151307()
        require _1476 + return_data.size > _1476 + mem[_1476] + 31
        _1487 = mem[_1476 + mem[_1476]]
        if mem[_1476 + mem[_1476]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_1476 + mem[_1476]]) + 1 < 0 or _1476 + ceil32(return_data.size) + ceil32(32 * mem[_1476 + mem[_1476]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _1476 + ceil32(return_data.size) + ceil32(32 * mem[_1476 + mem[_1476]]) + 1
        mem[_1476 + ceil32(return_data.size)] = _1487
        require _1484 + (32 * _1487) + 32 <= return_data.size
        v = _1476 + _1484 + 32
        w = _1476 + ceil32(return_data.size) + 32
        u = 0
        while u < _1487:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u + 1
            continue 
        if _1487 < 1:
            revert with 'NH{q', 17
        if _1487 - 1 >= _1487:
            revert with 'NH{q', 50
        if scale and sub_5ebf2439 > -1 / scale:
            revert with 'NH{q', 17
        if mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32] and _1016 > -1 / mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        if not scale * sub_5ebf2439:
            revert with 'NH{q', 18
        if scale < _1011:
            revert with 'NH{q', 17
        if _1011 and mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32] * _1016 / scale * sub_5ebf2439 > -1 / _1011:
            revert with 'NH{q', 17
        if not scale - _1011:
            revert with 'NH{q', 18
        if mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32] * _1016 / scale * sub_5ebf2439 > !(_1011 * mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32] * _1016 / scale * sub_5ebf2439 / scale - _1011):
            revert with 'NH{q', 17
        if t < (mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32] * _1016 / scale * sub_5ebf2439) + (_1011 * mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32] * _1016 / scale * sub_5ebf2439 / scale - _1011):
            revert with 'NH{q', 17
        if idx < 1:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + ((scale * t) - (_1011 * t) / scale)
        t = t - (mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32] * _1016 / scale * sub_5ebf2439) - (_1011 * mem[(32 * _1487 - 1) + _1476 + ceil32(return_data.size) + 32] * _1016 / scale * sub_5ebf2439 / scale - _1011)
        continue 
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = s
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = sub_e73393ab.length
    mem[0] = 9
    idx = 0
    t = 0
    u = mem[64] + 196
    while idx < sub_e73393ab.length:
        mem[u] = sub_e73393ab[t]
        idx = idx + 1
        t = t + 1
        u = u + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = deadline
    require ext_code.size(uniswap_routerAddress)
    call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args s, 1, Array(len=sub_e73393ab.length, data=mem[mem[64] + 196 len 32 * sub_e73393ab.length]), address(this.address), deadline
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1475 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1483 = mem[_1475]
    require mem[_1475] <= test266151307()
    require _1475 + return_data.size > _1475 + mem[_1475] + 31
    _1486 = mem[_1475 + mem[_1475]]
    if mem[_1475 + mem[_1475]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[_1475 + mem[_1475]]) + 1 < 0 or _1475 + ceil32(return_data.size) + ceil32(32 * mem[_1475 + mem[_1475]]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _1475 + ceil32(return_data.size) + ceil32(32 * mem[_1475 + mem[_1475]]) + 1
    mem[_1475 + ceil32(return_data.size)] = _1486
    require _1483 + (32 * _1486) + 32 <= return_data.size
    mem[_1475 + ceil32(return_data.size) + 32 len 32 * _1486] = mem[_1475 + _1483 + 32 len 32 * _1486]
    if _1486 < 1:
        revert with 'NH{q', 17
    if _1486 - 1 >= _1486:
        revert with 'NH{q', 50
    if _1007 < s:
        revert with 'NH{q', 17
    _1641 = mem[96]
    _1642 = mem[128]
    _1643 = mem[160]
    _1644 = mem[224]
    _1645 = mem[64]
    mem[mem[64]] = 0x54f9769d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1007 - s
    mem[mem[64] + 36] = mem[(32 * _1486 - 1) + _1475 + ceil32(return_data.size) + 32]
    mem[mem[64] + 68] = _1641
    mem[mem[64] + 100] = _1642
    mem[mem[64] + 132] = _1643
    mem[mem[64] + 164] = 192
    _1647 = mem[_1644]
    mem[mem[64] + 196] = mem[_1644]
    idx = 0
    s = _1644 + 32
    t = mem[64] + (32 * _1647) + 228
    u = mem[64] + 228
    while idx < _1647:
        mem[u] = t + -_1645 - 228
        _1762 = mem[s]
        _1763 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _1763:
            mem[v + t + 32] = mem[v + _1762 + 32]
            v = v + 32
            continue 
        if ceil32(_1763) > _1763:
            mem[t + _1763 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1763) + t + 32
        u = u + 32
        continue 
    require ext_code.size(sub_c7e5b79eAddress)
    call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(collateral_address)
    staticcall collateral_address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1769 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1770 = mem[_1769]
    if not mem[256]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1778 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1781 = mem[_1778]
        if mem[_1778] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1781
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1781
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1793 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1793] == bool(mem[_1793])
        emit Swap(0, msg.value, _1781, mem[128], _1011);
        return _1781
    if mem[_1769] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1779 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1783 = mem[_1779]
        if mem[_1779] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1783
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1783
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1795 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1795] == bool(mem[_1795])
        emit Swap(0, msg.value, _1783, mem[128], _1011);
        return _1783
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _1770
    require ext_code.size(collateral_address)
    call collateral_address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _1770
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1780 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1780] == bool(mem[_1780])
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1800 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1804 = mem[_1800]
    if mem[_1800] <= mem[192]:
        revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _1804
    require ext_code.size(sub_3cec7549Address)
    call sub_3cec7549Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _1804
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1817 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1817] == bool(mem[_1817])
    emit Swap(0, msg.value, _1804, mem[128], _1011);
    return _1804
}

function sub_d2a037b4(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321 < 320 or ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321
    mem[320] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = 352
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[3] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _228 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1
        mem[_228] = cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[3] + cd[s] + cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] + 68 <= calldata.size
        mem[_228 + 32 len cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]] = call.data[cd[4] + ('cd', 4)[3] + cd[s] + 68 len cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]]
        mem[_228 + cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] + 32] = 0
        mem[t] = _228
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = 320
    require ('cd', 4)[4] == bool(('cd', 4)[4])
    mem[256] = ('cd', 4)[4]
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > test266151307():
        revert with 'NH{q', 65
    _229 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1
    mem[_229] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[4] + ('cd', 4)[5] + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[5] + 36
    t = _229 + 32
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[288] = _229
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[36]
    require ext_code.size(sub_27daf4f8Address)
    call sub_27daf4f8Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[36]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _455 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_455] == bool(mem[_455])
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.global_collateral_ratio() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _459 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _460 = mem[_459]
    if 10^6 == mem[_459]:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[36]
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = sub_8e2b472d.length
        mem[0] = 10
        idx = 0
        s = 0
        t = mem[64] + 196
        while idx < sub_8e2b472d.length:
            mem[t] = sub_8e2b472d[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = deadline
        require ext_code.size(uniswap_routerAddress)
        call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], 1, Array(len=sub_8e2b472d.length, data=mem[mem[64] + 196 len 32 * sub_8e2b472d.length]), address(this.address), deadline
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _683 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _686 = mem[_683]
        require mem[_683] <= test266151307()
        require _683 + return_data.size > _683 + mem[_683] + 31
        _689 = mem[_683 + mem[_683]]
        if mem[_683 + mem[_683]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_683 + mem[_683]]) + 1 < 0 or _683 + ceil32(return_data.size) + ceil32(32 * mem[_683 + mem[_683]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _683 + ceil32(return_data.size) + ceil32(32 * mem[_683 + mem[_683]]) + 1
        mem[_683 + ceil32(return_data.size)] = _689
        require _686 + (32 * _689) + 32 <= return_data.size
        mem[_683 + ceil32(return_data.size) + 32 len 32 * _689] = mem[_683 + _686 + 32 len 32 * _689]
        if _689 < 1:
            revert with 'NH{q', 17
        if _689 - 1 >= _689:
            revert with 'NH{q', 50
        _892 = mem[96]
        _893 = mem[160]
        _894 = mem[224]
        _895 = mem[64]
        mem[mem[64]] = 0x32ad1ee400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[(32 * _689 - 1) + _683 + ceil32(return_data.size) + 32]
        mem[mem[64] + 36] = _892
        mem[mem[64] + 68] = _893
        mem[mem[64] + 100] = 128
        _898 = mem[_894]
        mem[mem[64] + 132] = mem[_894]
        idx = 0
        s = _894 + 32
        t = mem[64] + (32 * _898) + 164
        u = mem[64] + 164
        while idx < _898:
            mem[u] = t + -_895 - 164
            _1029 = mem[s]
            _1030 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1030:
                mem[v + t + 32] = mem[v + _1029 + 32]
                v = v + 32
                continue 
            if ceil32(_1030) > _1030:
                mem[t + _1030 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1030) + t + 32
            u = u + 32
            continue 
        require ext_code.size(sub_c7e5b79eAddress)
        call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_27daf4f8Address)
        staticcall sub_27daf4f8Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1041 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1047 = mem[_1041]
        if not mem[256]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1060 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1063 = mem[_1060]
            if mem[_1060] <= mem[192]:
                revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1063
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1063
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1078 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1078] == bool(mem[_1078])
            emit Swap(sub_27daf4f8Address, cd[36], _1063, mem[128], _460);
        else:
            if mem[_1041] <= 0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_3cec7549Address)
                staticcall sub_3cec7549Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1061 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1067 = mem[_1061]
                if mem[_1061] <= mem[192]:
                    revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1067
                require ext_code.size(sub_3cec7549Address)
                call sub_3cec7549Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1067
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1081 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1081] == bool(mem[_1081])
                emit Swap(sub_27daf4f8Address, cd[36], _1067, mem[128], _460);
            else:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1047
                require ext_code.size(collateral_address)
                call collateral_address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1047
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1062 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1062] == bool(mem[_1062])
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_3cec7549Address)
                staticcall sub_3cec7549Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1089 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1098 = mem[_1089]
                if mem[_1089] <= mem[192]:
                    revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1098
                require ext_code.size(sub_3cec7549Address)
                call sub_3cec7549Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1098
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1117 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1117] == bool(mem[_1117])
                emit Swap(sub_27daf4f8Address, cd[36], _1098, mem[128], _460);
    else:
        if not mem[_459]:
            _463 = mem[128]
            _464 = mem[160]
            _465 = mem[224]
            _466 = mem[64]
            mem[mem[64]] = 0xc6301e5d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[36]
            mem[mem[64] + 36] = _463
            mem[mem[64] + 68] = _464
            mem[mem[64] + 100] = 128
            _468 = mem[_465]
            mem[mem[64] + 132] = mem[_465]
            idx = 0
            s = _465 + 32
            t = mem[64] + (32 * _468) + 164
            u = mem[64] + 164
            while idx < _468:
                mem[u] = t + -_466 - 164
                _676 = mem[s]
                _677 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _677:
                    mem[v + t + 32] = mem[v + _676 + 32]
                    v = v + 32
                    continue 
                if ceil32(_677) > _677:
                    mem[t + _677 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_677) + t + 32
                u = u + 32
                continue 
            require ext_code.size(sub_c7e5b79eAddress)
            call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_27daf4f8Address)
            staticcall sub_27daf4f8Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _688 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _692 = mem[_688]
            if not mem[256]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_3cec7549Address)
                staticcall sub_3cec7549Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _704 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _708 = mem[_704]
                if mem[_704] <= mem[192]:
                    revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _708
                require ext_code.size(sub_3cec7549Address)
                call sub_3cec7549Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _708
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_725] == bool(mem[_725])
                emit Swap(sub_27daf4f8Address, cd[36], _708, mem[128], _460);
            else:
                if mem[_688] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_3cec7549Address)
                    staticcall sub_3cec7549Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _712 = mem[_706]
                    if mem[_706] <= mem[192]:
                        revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _712
                    require ext_code.size(sub_3cec7549Address)
                    call sub_3cec7549Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _712
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _728 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_728] == bool(mem[_728])
                    emit Swap(sub_27daf4f8Address, cd[36], _712, mem[128], _460);
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _692
                    require ext_code.size(collateral_address)
                    call collateral_address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _692
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _707 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_707] == bool(mem[_707])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_3cec7549Address)
                    staticcall sub_3cec7549Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _741 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _748 = mem[_741]
                    if mem[_741] <= mem[192]:
                        revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _748
                    require ext_code.size(sub_3cec7549Address)
                    call sub_3cec7549Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _748
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_768] == bool(mem[_768])
                    emit Swap(sub_27daf4f8Address, cd[36], _748, mem[128], _460);
        else:
            _462 = mem[128]
            idx = sub_e9655b5b
            s = 0
            t = cd[36]
            while idx:
                if t and _460 > -1 / t:
                    revert with 'NH{q', 17
                if not scale:
                    revert with 'NH{q', 18
                if s > !(t * _460 / scale):
                    revert with 'NH{q', 17
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = t * _460 / scale
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = sub_8e2b472d.length
                mem[0] = 10
                u = 0
                v = sha3(10)
                w = mem[64] + 100
                while u < sub_8e2b472d.length:
                    mem[w] = stor[v]
                    u = u + 1
                    v = v + 1
                    w = w + 32
                    continue 
                require ext_code.size(uniswap_routerAddress)
                staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args t * _460 / scale, Array(len=sub_8e2b472d.length, data=mem[mem[64] + 100 len 32 * sub_8e2b472d.length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _889 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _897 = mem[_889]
                require mem[_889] <= test266151307()
                require _889 + return_data.size > _889 + mem[_889] + 31
                _900 = mem[_889 + mem[_889]]
                if mem[_889 + mem[_889]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[_889 + mem[_889]]) + 1 < 0 or _889 + ceil32(return_data.size) + ceil32(32 * mem[_889 + mem[_889]]) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _889 + ceil32(return_data.size) + ceil32(32 * mem[_889 + mem[_889]]) + 1
                mem[_889 + ceil32(return_data.size)] = _900
                require _897 + (32 * _900) + 32 <= return_data.size
                v = _889 + _897 + 32
                w = _889 + ceil32(return_data.size) + 32
                u = 0
                while u < _900:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    u = u + 1
                    continue 
                if _900 < 1:
                    revert with 'NH{q', 17
                if _900 - 1 >= _900:
                    revert with 'NH{q', 50
                if scale < _460:
                    revert with 'NH{q', 17
                if mem[(32 * _900 - 1) + _889 + ceil32(return_data.size) + 32] and scale - _460 > -1 / mem[(32 * _900 - 1) + _889 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                if not _462:
                    revert with 'NH{q', 18
                if (scale * mem[(32 * _900 - 1) + _889 + ceil32(return_data.size) + 32]) - (_460 * mem[(32 * _900 - 1) + _889 + ceil32(return_data.size) + 32]) / _462 > !(t * _460 / scale):
                    revert with 'NH{q', 17
                if t < ((scale * mem[(32 * _900 - 1) + _889 + ceil32(return_data.size) + 32]) - (_460 * mem[(32 * _900 - 1) + _889 + ceil32(return_data.size) + 32]) / _462) + (t * _460 / scale):
                    revert with 'NH{q', 17
                if idx < 1:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s + (t * _460 / scale)
                t = t - ((scale * mem[(32 * _900 - 1) + _889 + ceil32(return_data.size) + 32]) - (_460 * mem[(32 * _900 - 1) + _889 + ceil32(return_data.size) + 32]) / _462) - (t * _460 / scale)
                continue 
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = sub_8e2b472d.length
            mem[0] = 10
            idx = 0
            t = 0
            u = mem[64] + 196
            while idx < sub_8e2b472d.length:
                mem[u] = sub_8e2b472d[t]
                idx = idx + 1
                t = t + 1
                u = u + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = deadline
            require ext_code.size(uniswap_routerAddress)
            call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 1, Array(len=sub_8e2b472d.length, data=mem[mem[64] + 196 len 32 * sub_8e2b472d.length]), address(this.address), deadline
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _888 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _896 = mem[_888]
            require mem[_888] <= test266151307()
            require _888 + return_data.size > _888 + mem[_888] + 31
            _899 = mem[_888 + mem[_888]]
            if mem[_888 + mem[_888]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_888 + mem[_888]]) + 1 < 0 or _888 + ceil32(return_data.size) + ceil32(32 * mem[_888 + mem[_888]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _888 + ceil32(return_data.size) + ceil32(32 * mem[_888 + mem[_888]]) + 1
            mem[_888 + ceil32(return_data.size)] = _899
            require _896 + (32 * _899) + 32 <= return_data.size
            mem[_888 + ceil32(return_data.size) + 32 len 32 * _899] = mem[_888 + _896 + 32 len 32 * _899]
            if _899 < 1:
                revert with 'NH{q', 17
            if _899 - 1 >= _899:
                revert with 'NH{q', 50
            if cd[36] < s:
                revert with 'NH{q', 17
            _1042 = mem[96]
            _1043 = mem[128]
            _1044 = mem[160]
            _1045 = mem[224]
            _1046 = mem[64]
            mem[mem[64]] = 0x54f9769d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = mem[(32 * _899 - 1) + _888 + ceil32(return_data.size) + 32]
            mem[mem[64] + 36] = cd[36] - s
            mem[mem[64] + 68] = _1042
            mem[mem[64] + 100] = _1043
            mem[mem[64] + 132] = _1044
            mem[mem[64] + 164] = 192
            _1048 = mem[_1045]
            mem[mem[64] + 196] = mem[_1045]
            idx = 0
            s = _1045 + 32
            t = mem[64] + (32 * _1048) + 228
            u = mem[64] + 228
            while idx < _1048:
                mem[u] = t + -_1046 - 228
                _1151 = mem[s]
                _1152 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1152:
                    mem[v + t + 32] = mem[v + _1151 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1152) > _1152:
                    mem[t + _1152 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1152) + t + 32
                u = u + 32
                continue 
            require ext_code.size(sub_c7e5b79eAddress)
            call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len t + -mem[64] - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_27daf4f8Address)
            staticcall sub_27daf4f8Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1159 = mem[_1158]
            if not mem[256]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_3cec7549Address)
                staticcall sub_3cec7549Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1170 = mem[_1167]
                if mem[_1167] <= mem[192]:
                    revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = _1170
                require ext_code.size(sub_3cec7549Address)
                call sub_3cec7549Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _1170
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1182] == bool(mem[_1182])
                emit Swap(sub_27daf4f8Address, cd[36], _1170, mem[128], _460);
            else:
                if mem[_1158] <= 0:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_3cec7549Address)
                    staticcall sub_3cec7549Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1172 = mem[_1168]
                    if mem[_1168] <= mem[192]:
                        revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1172
                    require ext_code.size(sub_3cec7549Address)
                    call sub_3cec7549Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1172
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1184] == bool(mem[_1184])
                    emit Swap(sub_27daf4f8Address, cd[36], _1172, mem[128], _460);
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1159
                    require ext_code.size(collateral_address)
                    call collateral_address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1159
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1169 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1169] == bool(mem[_1169])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_3cec7549Address)
                    staticcall sub_3cec7549Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1193 = mem[_1189]
                    if mem[_1189] <= mem[192]:
                        revert with 0, 'DEIProxy::DeusToDei: INSUFFICIENT_OUTPUT_AMOUNT'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _1193
                    require ext_code.size(sub_3cec7549Address)
                    call sub_3cec7549Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _1193
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1202 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1202] == bool(mem[_1202])
                    emit Swap(sub_27daf4f8Address, cd[36], _1193, mem[128], _460);
}

function sub_e4112dac(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321 < 320 or ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 321
    mem[320] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    require cd[4] + ('cd', 4)[3] + (32 * cd[(cd[4] + ('cd', 4)[3] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + 36
    t = 352
    while idx < cd[(cd[4] + ('cd', 4)[3] + 4)]:
        require cd[s] <= test266151307()
        require cd[4] + ('cd', 4)[3] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _293 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)])) + 1
        mem[_293] = cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]
        require cd[4] + ('cd', 4)[3] + cd[s] + cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] + 68 <= calldata.size
        mem[_293 + 32 len cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]] = call.data[cd[4] + ('cd', 4)[3] + cd[s] + 68 len cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)]]
        mem[_293 + cd[(cd[4] + ('cd', 4)[3] + cd[s] + 36)] + 32] = 0
        mem[t] = _293
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[224] = 320
    require ('cd', 4)[4] == bool(('cd', 4)[4])
    mem[256] = ('cd', 4)[4]
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > test266151307():
        revert with 'NH{q', 65
    _294 = mem[64]
    if mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1 < mem[64] or mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = mem[64] + ceil32(32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 1
    mem[_294] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[4] + ('cd', 4)[5] + (32 * cd[(cd[4] + ('cd', 4)[5] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[5] + 36
    t = _294 + 32
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[288] = _294
    if cd[(cd[4] + ('cd', 4)[5] + 4)] < 2:
        revert with 0, 'DEIProxy::Wrong path'
    if 0 >= cd[(cd[4] + ('cd', 4)[5] + 4)]:
        revert with 'NH{q', 50
    _588 = mem[_294 + 32]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = cd[36]
    require ext_code.size(address(_588))
    call address(_588).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[36]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _592 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_592] == bool(mem[_592])
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[36]
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    idx = 0
    s = _294 + 32
    t = mem[64] + 196
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = deadline
    require ext_code.size(uniswap_routerAddress)
    call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[36], 1, Array(len=cd[(cd[4] + ('cd', 4)[5] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[4] + ('cd', 4)[5] + 4)]]), address(this.address), deadline
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _873 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _874 = mem[_873]
    require mem[_873] <= test266151307()
    require _873 + return_data.size > _873 + mem[_873] + 31
    _875 = mem[_873 + mem[_873]]
    if mem[_873 + mem[_873]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[_873 + mem[_873]]) + 1 < 0 or _873 + ceil32(return_data.size) + ceil32(32 * mem[_873 + mem[_873]]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _873 + ceil32(return_data.size) + ceil32(32 * mem[_873 + mem[_873]]) + 1
    mem[_873 + ceil32(return_data.size)] = _875
    require _874 + (32 * _875) + 32 <= return_data.size
    mem[_873 + ceil32(return_data.size) + 32 len 32 * _875] = mem[_873 + _874 + 32 len 32 * _875]
    if _875 < 1:
        revert with 'NH{q', 17
    if _875 - 1 >= _875:
        revert with 'NH{q', 50
    _1148 = mem[(32 * _875 - 1) + _873 + ceil32(return_data.size) + 32]
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.global_collateral_ratio() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1151 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1152 = mem[_1151]
    if 10^6 == mem[_1151]:
        _1153 = mem[96]
        _1154 = mem[160]
        _1155 = mem[224]
        _1156 = mem[64]
        mem[mem[64]] = 0x32ad1ee400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[(32 * _875 - 1) + _873 + ceil32(return_data.size) + 32]
        mem[mem[64] + 36] = _1153
        mem[mem[64] + 68] = _1154
        mem[mem[64] + 100] = 128
        _1159 = mem[_1155]
        mem[mem[64] + 132] = mem[_1155]
        idx = 0
        s = _1155 + 32
        t = mem[64] + (32 * _1159) + 164
        u = mem[64] + 164
        while idx < _1159:
            mem[u] = t + -_1156 - 164
            _1413 = mem[s]
            _1414 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1414:
                mem[v + t + 32] = mem[v + _1413 + 32]
                v = v + 32
                continue 
            if ceil32(_1414) > _1414:
                mem[t + _1414 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1414) + t + 32
            u = u + 32
            continue 
        require ext_code.size(sub_c7e5b79eAddress)
        call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(collateral_address)
        staticcall collateral_address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1425 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1428 = mem[_1425]
        if not mem[256]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1444 = mem[_1441]
            if mem[_1441] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1444
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1444
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1461 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1461] == bool(mem[_1461])
            if 0 >= mem[mem[288]]:
                revert with 'NH{q', 50
            _1488 = mem[128]
            mem[mem[64]] = mem[mem[288] + 44 len 20]
            mem[mem[64] + 64] = _1444
            mem[mem[64] + 96] = _1488
            emit Swap(mem[mem[64]], cd[36], _1444, _1488, _1152);
            return _1444
        if mem[_1425] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1448 = mem[_1442]
            if mem[_1442] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1448
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1448
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1464] == bool(mem[_1464])
            if 0 >= mem[mem[288]]:
                revert with 'NH{q', 50
            _1499 = mem[128]
            mem[mem[64]] = mem[mem[288] + 44 len 20]
            mem[mem[64] + 64] = _1448
            mem[mem[64] + 96] = _1499
            emit Swap(mem[mem[64]], cd[36], _1448, _1499, _1152);
            return _1448
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1428
        require ext_code.size(collateral_address)
        call collateral_address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1428
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1443 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1443] == bool(mem[_1443])
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1479 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1485 = mem[_1479]
        if mem[_1479] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1485
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1485
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1514 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1514] == bool(mem[_1514])
        if 0 >= mem[mem[288]]:
            revert with 'NH{q', 50
        _1532 = mem[128]
        mem[mem[64]] = mem[mem[288] + 44 len 20]
        mem[mem[64] + 64] = _1485
        mem[mem[64] + 96] = _1532
        emit Swap(mem[mem[64]], cd[36], _1485, _1532, _1152);
        return _1485
    if not mem[_1151]:
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[(32 * _875 - 1) + _873 + ceil32(return_data.size) + 32]
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = sub_e73393ab.length
        mem[0] = 9
        idx = 0
        s = 0
        t = mem[64] + 196
        while idx < sub_e73393ab.length:
            mem[t] = sub_e73393ab[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = deadline
        require ext_code.size(uniswap_routerAddress)
        call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 1, Array(len=sub_e73393ab.length, data=mem[mem[64] + 196 len 32 * sub_e73393ab.length]), address(this.address), deadline
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1420 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1423 = mem[_1420]
        require mem[_1420] <= test266151307()
        require _1420 + return_data.size > _1420 + mem[_1420] + 31
        _1426 = mem[_1420 + mem[_1420]]
        if mem[_1420 + mem[_1420]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_1420 + mem[_1420]]) + 1 < 0 or _1420 + ceil32(return_data.size) + ceil32(32 * mem[_1420 + mem[_1420]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _1420 + ceil32(return_data.size) + ceil32(32 * mem[_1420 + mem[_1420]]) + 1
        mem[_1420 + ceil32(return_data.size)] = _1426
        require _1423 + (32 * _1426) + 32 <= return_data.size
        mem[_1420 + ceil32(return_data.size) + 32 len 32 * _1426] = mem[_1420 + _1423 + 32 len 32 * _1426]
        if _1426 < 1:
            revert with 'NH{q', 17
        if _1426 - 1 >= _1426:
            revert with 'NH{q', 50
        _1674 = mem[128]
        _1675 = mem[160]
        _1676 = mem[224]
        _1677 = mem[64]
        mem[mem[64]] = 0xc6301e5d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = mem[(32 * _1426 - 1) + _1420 + ceil32(return_data.size) + 32]
        mem[mem[64] + 36] = _1674
        mem[mem[64] + 68] = _1675
        mem[mem[64] + 100] = 128
        _1680 = mem[_1676]
        mem[mem[64] + 132] = mem[_1676]
        idx = 0
        s = _1676 + 32
        t = mem[64] + (32 * _1680) + 164
        u = mem[64] + 164
        while idx < _1680:
            mem[u] = t + -_1677 - 164
            _1841 = mem[s]
            _1842 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1842:
                mem[v + t + 32] = mem[v + _1841 + 32]
                v = v + 32
                continue 
            if ceil32(_1842) > _1842:
                mem[t + _1842 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1842) + t + 32
            u = u + 32
            continue 
        require ext_code.size(sub_c7e5b79eAddress)
        call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(collateral_address)
        staticcall collateral_address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1853 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1859 = mem[_1853]
        if not mem[256]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1872 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1875 = mem[_1872]
            if mem[_1872] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1875
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1875
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1890 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1890] == bool(mem[_1890])
            if 0 >= mem[mem[288]]:
                revert with 'NH{q', 50
            _1913 = mem[128]
            mem[mem[64]] = mem[mem[288] + 44 len 20]
            mem[mem[64] + 64] = _1875
            mem[mem[64] + 96] = _1913
            emit Swap(mem[mem[64]], cd[36], _1875, _1913, _1152);
            return _1875
        if mem[_1853] <= 0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_3cec7549Address)
            staticcall sub_3cec7549Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1873 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1879 = mem[_1873]
            if mem[_1873] <= mem[192]:
                revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _1879
            require ext_code.size(sub_3cec7549Address)
            call sub_3cec7549Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1879
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1893 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1893] == bool(mem[_1893])
            if 0 >= mem[mem[288]]:
                revert with 'NH{q', 50
            _1922 = mem[128]
            mem[mem[64]] = mem[mem[288] + 44 len 20]
            mem[mem[64] + 64] = _1879
            mem[mem[64] + 96] = _1922
            emit Swap(mem[mem[64]], cd[36], _1879, _1922, _1152);
            return _1879
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1859
        require ext_code.size(collateral_address)
        call collateral_address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1859
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1874 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1874] == bool(mem[_1874])
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1901 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1909 = mem[_1901]
        if mem[_1901] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _1909
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1909
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1939 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1939] == bool(mem[_1939])
        if 0 >= mem[mem[288]]:
            revert with 'NH{q', 50
        _1956 = mem[128]
        mem[mem[64]] = mem[mem[288] + 44 len 20]
        mem[mem[64] + 64] = _1909
        mem[mem[64] + 96] = _1956
        emit Swap(mem[mem[64]], cd[36], _1909, _1956, _1152);
        return _1909
    _1157 = mem[128]
    idx = sub_e9655b5b
    s = 0
    t = mem[(32 * _875 - 1) + _873 + ceil32(return_data.size) + 32]
    while idx:
        if scale < _1152:
            revert with 'NH{q', 17
        if t and scale - _1152 > -1 / t:
            revert with 'NH{q', 17
        if not scale:
            revert with 'NH{q', 18
        if s > !((scale * t) - (_1152 * t) / scale):
            revert with 'NH{q', 17
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (scale * t) - (_1152 * t) / scale
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = sub_e73393ab.length
        mem[0] = 9
        u = 0
        v = sha3(9)
        w = mem[64] + 100
        while u < sub_e73393ab.length:
            mem[w] = stor[v]
            u = u + 1
            v = v + 1
            w = w + 32
            continue 
        require ext_code.size(uniswap_routerAddress)
        staticcall uniswap_routerAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args (scale * t) - (_1152 * t) / scale, Array(len=sub_e73393ab.length, data=mem[mem[64] + 100 len 32 * sub_e73393ab.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1671 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1679 = mem[_1671]
        require mem[_1671] <= test266151307()
        require _1671 + return_data.size > _1671 + mem[_1671] + 31
        _1682 = mem[_1671 + mem[_1671]]
        if mem[_1671 + mem[_1671]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_1671 + mem[_1671]]) + 1 < 0 or _1671 + ceil32(return_data.size) + ceil32(32 * mem[_1671 + mem[_1671]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _1671 + ceil32(return_data.size) + ceil32(32 * mem[_1671 + mem[_1671]]) + 1
        mem[_1671 + ceil32(return_data.size)] = _1682
        require _1679 + (32 * _1682) + 32 <= return_data.size
        v = _1671 + _1679 + 32
        w = _1671 + ceil32(return_data.size) + 32
        u = 0
        while u < _1682:
            mem[w] = mem[v]
            v = v + 32
            w = w + 32
            u = u + 1
            continue 
        if _1682 < 1:
            revert with 'NH{q', 17
        if _1682 - 1 >= _1682:
            revert with 'NH{q', 50
        if scale and sub_5ebf2439 > -1 / scale:
            revert with 'NH{q', 17
        if mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32] and _1157 > -1 / mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        if not scale * sub_5ebf2439:
            revert with 'NH{q', 18
        if scale < _1152:
            revert with 'NH{q', 17
        if _1152 and mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32] * _1157 / scale * sub_5ebf2439 > -1 / _1152:
            revert with 'NH{q', 17
        if not scale - _1152:
            revert with 'NH{q', 18
        if mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32] * _1157 / scale * sub_5ebf2439 > !(_1152 * mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32] * _1157 / scale * sub_5ebf2439 / scale - _1152):
            revert with 'NH{q', 17
        if t < (mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32] * _1157 / scale * sub_5ebf2439) + (_1152 * mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32] * _1157 / scale * sub_5ebf2439 / scale - _1152):
            revert with 'NH{q', 17
        if idx < 1:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + ((scale * t) - (_1152 * t) / scale)
        t = t - (mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32] * _1157 / scale * sub_5ebf2439) - (_1152 * mem[(32 * _1682 - 1) + _1671 + ceil32(return_data.size) + 32] * _1157 / scale * sub_5ebf2439 / scale - _1152)
        continue 
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = s
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = sub_e73393ab.length
    mem[0] = 9
    idx = 0
    t = 0
    u = mem[64] + 196
    while idx < sub_e73393ab.length:
        mem[u] = sub_e73393ab[t]
        idx = idx + 1
        t = t + 1
        u = u + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = deadline
    require ext_code.size(uniswap_routerAddress)
    call uniswap_routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args s, 1, Array(len=sub_e73393ab.length, data=mem[mem[64] + 196 len 32 * sub_e73393ab.length]), address(this.address), deadline
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1670 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1678 = mem[_1670]
    require mem[_1670] <= test266151307()
    require _1670 + return_data.size > _1670 + mem[_1670] + 31
    _1681 = mem[_1670 + mem[_1670]]
    if mem[_1670 + mem[_1670]] > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * mem[_1670 + mem[_1670]]) + 1 < 0 or _1670 + ceil32(return_data.size) + ceil32(32 * mem[_1670 + mem[_1670]]) + 1 > test266151307():
        revert with 'NH{q', 65
    mem[64] = _1670 + ceil32(return_data.size) + ceil32(32 * mem[_1670 + mem[_1670]]) + 1
    mem[_1670 + ceil32(return_data.size)] = _1681
    require _1678 + (32 * _1681) + 32 <= return_data.size
    mem[_1670 + ceil32(return_data.size) + 32 len 32 * _1681] = mem[_1670 + _1678 + 32 len 32 * _1681]
    if _1681 < 1:
        revert with 'NH{q', 17
    if _1681 - 1 >= _1681:
        revert with 'NH{q', 50
    if _1148 < s:
        revert with 'NH{q', 17
    _1854 = mem[96]
    _1855 = mem[128]
    _1856 = mem[160]
    _1857 = mem[224]
    _1858 = mem[64]
    mem[mem[64]] = 0x54f9769d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1148 - s
    mem[mem[64] + 36] = mem[(32 * _1681 - 1) + _1670 + ceil32(return_data.size) + 32]
    mem[mem[64] + 68] = _1854
    mem[mem[64] + 100] = _1855
    mem[mem[64] + 132] = _1856
    mem[mem[64] + 164] = 192
    _1860 = mem[_1857]
    mem[mem[64] + 196] = mem[_1857]
    idx = 0
    s = _1857 + 32
    t = mem[64] + (32 * _1860) + 228
    u = mem[64] + 228
    while idx < _1860:
        mem[u] = t + -_1858 - 228
        _1993 = mem[s]
        _1994 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _1994:
            mem[v + t + 32] = mem[v + _1993 + 32]
            v = v + 32
            continue 
        if ceil32(_1994) > _1994:
            mem[t + _1994 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1994) + t + 32
        u = u + 32
        continue 
    require ext_code.size(sub_c7e5b79eAddress)
    call sub_c7e5b79eAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(collateral_address)
    staticcall collateral_address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2000 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2001 = mem[_2000]
    if not mem[256]:
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2009 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2012 = mem[_2009]
        if mem[_2009] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _2012
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _2012
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2024 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2024] == bool(mem[_2024])
        if 0 >= mem[mem[288]]:
            revert with 'NH{q', 50
        _2036 = mem[128]
        mem[mem[64]] = mem[mem[288] + 44 len 20]
        mem[mem[64] + 64] = _2012
        mem[mem[64] + 96] = _2036
        emit Swap(mem[mem[64]], cd[36], _2012, _2036, _1152);
        return _2012
    if mem[_2000] <= 0:
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_3cec7549Address)
        staticcall sub_3cec7549Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2010 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2014 = mem[_2010]
        if mem[_2010] <= mem[192]:
            revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _2014
        require ext_code.size(sub_3cec7549Address)
        call sub_3cec7549Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _2014
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2026 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2026] == bool(mem[_2026])
        if 0 >= mem[mem[288]]:
            revert with 'NH{q', 50
        _2044 = mem[128]
        mem[mem[64]] = mem[mem[288] + 44 len 20]
        mem[mem[64] + 64] = _2014
        mem[mem[64] + 96] = _2044
        emit Swap(mem[mem[64]], cd[36], _2014, _2044, _1152);
        return _2014
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _2001
    require ext_code.size(collateral_address)
    call collateral_address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _2001
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2011 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2011] == bool(mem[_2011])
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_3cec7549Address)
    staticcall sub_3cec7549Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2031 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2034 = mem[_2031]
    if mem[_2031] <= mem[192]:
        revert with 0, 'DEIProxy::collateralToDei: INSUFFICIENT_OUTPUT_AMOUNT'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _2034
    require ext_code.size(sub_3cec7549Address)
    call sub_3cec7549Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _2034
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2054 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_2054] == bool(mem[_2054])
    if 0 >= mem[mem[288]]:
        revert with 'NH{q', 50
    _2059 = mem[128]
    mem[mem[64]] = mem[mem[288] + 44 len 20]
    mem[mem[64] + 64] = _2034
    mem[mem[64] + 96] = _2059
    emit Swap(mem[mem[64]], cd[36], _2034, _2059, _1152);
    return _2034
}



}
