contract main {




// =====================  Runtime code  =====================


address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
mapping of uint256 stor2;
uint8 stor3;
uint256 sub_43d0751f;
array of address sub_617a2503;
array of uint256 sub_e5a5bc2e;
array of uint256 sub_8cec07cd;
mapping of uint256 stor99;

function _OWNER_() payable {
    return _OWNER_
}

function sub_3020a312(?) payable {
    return bool(stor3)
}

function sub_43d0751f(?) payable {
    return sub_43d0751f
}

function sub_617a2503(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_617a2503.length
    return address(sub_617a2503[arg1])
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function sub_8cec07cd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8cec07cd.length
    return sub_8cec07cd[arg1]
}

function sub_e5a5bc2e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e5a5bc2e.length
    return sub_e5a5bc2e[arg1]
}

function _fallback() payable {
    revert
}

function sub_799fc01f(?) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_43d0751f = arg1
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        revert with 0, 'TRANSIT_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function sub_ccb7cadb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    stor3 = uint8(bool(arg1))
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function sub_80455dde(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = stor2[arg1][arg2[all]]
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_da52f481(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 128 < 96 or ceil32(arg3.length) + 128 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if arg2 > 500:
        revert with 0, 'XswapFeeModel:Rate restricted'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + 128] = sha3(arg1, 2)
    stor[mem[arg3.length + 160 len ceil32(arg3.length)]][Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0)] = arg2
}

function sub_68fcb85f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_617a2503.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_617a2503.length > idx:
            uint256(sub_617a2503[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            address(sub_617a2503[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_617a2503.length > idx:
            uint256(sub_617a2503[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_bd7c65fb(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'invalid data'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        _51 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = 0x64656661756c7400000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 167] = sha3(mem[0], 2)
        stor2[mem[0]][0] = _51
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_85e071da(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_e5a5bc2e.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_e5a5bc2e.length > idx:
            sub_e5a5bc2e[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 4).length) + 128 > idx:
            sub_e5a5bc2e[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_e5a5bc2e.length > idx:
            sub_e5a5bc2e[idx] = 0
            idx = idx + 1
            continue 
    sub_8cec07cd.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_8cec07cd.length > idx:
            sub_8cec07cd[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * ('cd', 4).length) + 160
        while (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > idx:
            sub_8cec07cd[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_8cec07cd.length > idx:
            sub_8cec07cd[idx] = 0
            idx = idx + 1
            continue 
}

function sub_f09fc3bf(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(arg4.length) + 128
    mem[96] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[0] = arg3
    mem[32] = 2
    mem[ceil32(arg4.length) + 128 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[arg4.length + ceil32(arg4.length) + 128] = sha3(arg3, 2)
    if ceil32(arg4.length) <= arg4.length:
        _140 = sha3(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length)])
        if 0 == stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)]:
            revert with 0, 'Invalid swapType || channel'
        if not stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)]:
            if stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] != 1:
                if not stor3:
                    mem[ceil32(arg4.length) + 128] = 0
                    mem[ceil32(arg4.length) + 160] = 0
                    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
                           mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 32]
                idx = 0
                s = 0
                while idx < sub_617a2503.length:
                    mem[0] = 5
                    if not address(sub_617a2503[idx]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_617a2503.length:
                        revert with 0, 50
                    mem[0] = 5
                    mem[mem[64] + 4] = address(arg1)
                    require ext_code.size(address(sub_617a2503[idx]))
                    staticcall address(sub_617a2503[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_303]:
                        revert with 0, 17
                    if s + mem[_303] < s:
                        revert with 0, 'ds-math-add-overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_303]
                    continue 
                idx = 0
                while idx < sub_e5a5bc2e.length:
                    mem[0] = 6
                    if s >= sub_e5a5bc2e[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= sub_8cec07cd.length:
                        revert with 0, 50
                    if sub_8cec07cd[idx]:
                        if False and sub_8cec07cd[idx] > 0:
                            revert with 0, 17
                        if not sub_8cec07cd[idx]:
                            revert with 0, 18
                        if 0 / sub_8cec07cd[idx]:
                            revert with 0, 'ds-math-mul-overflow'
                        else:
                            return 0
                    else:
                        return 0
                return 0
            mem[ceil32(arg4.length) + 128] = 0
            mem[ceil32(arg4.length) + 160] = 0
        else:
            if arg2 and stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] > -1 / arg2:
                revert with 0, 17
            if not stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)]:
                revert with 0, 18
            if arg2 * stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] / stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] != 1:
                if not stor3:
                    mem[ceil32(arg4.length) + 128] = arg2 * stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] / 10000
                    mem[ceil32(arg4.length) + 160] = 0
                    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
                           mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 32]
                idx = 0
                s = 0
                while idx < sub_617a2503.length:
                    mem[0] = 5
                    if not address(sub_617a2503[idx]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_617a2503.length:
                        revert with 0, 50
                    mem[0] = 5
                    mem[mem[64] + 4] = address(arg1)
                    require ext_code.size(address(sub_617a2503[idx]))
                    staticcall address(sub_617a2503[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_304]:
                        revert with 0, 17
                    if s + mem[_304] < s:
                        revert with 0, 'ds-math-add-overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_304]
                    continue 
                idx = 0
                while idx < sub_e5a5bc2e.length:
                    mem[0] = 6
                    if s >= sub_e5a5bc2e[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= sub_8cec07cd.length:
                        revert with 0, 50
                    if not sub_8cec07cd[idx]:
                        if sub_43d0751f != 1:
                            return 0
                        if arg2 * stor[_140] / 10000 < 0:
                            revert with 0, 17
                        if arg2 * stor[_140] / 10000 > arg2 * stor[_140] / 10000:
                            revert with 0, 'ds-math-sub-underflow'
                        return 0, arg2 * stor[_140] / 10000
                    if arg2 * stor[_140] / 10000 and sub_8cec07cd[idx] > -1 / arg2 * stor[_140] / 10000:
                        revert with 0, 17
                    if not sub_8cec07cd[idx]:
                        revert with 0, 18
                    if arg2 * stor[_140] / 10000 * sub_8cec07cd[idx] / sub_8cec07cd[idx] != arg2 * stor[_140] / 10000:
                        revert with 0, 'ds-math-mul-overflow'
                    if sub_43d0751f != 1:
                        return arg2 * stor[_140] / 10000 * sub_8cec07cd[idx] / 10000, 0
                    if arg2 * stor[_140] / 10000 < arg2 * stor[_140] / 10000 * sub_8cec07cd[idx] / 10000:
                        revert with 0, 17
                    if (arg2 * stor[_140] / 10000) - (arg2 * stor[_140] / 10000 * sub_8cec07cd[idx] / 10000) > arg2 * stor[_140] / 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    return arg2 * stor[_140] / 10000 * sub_8cec07cd[idx] / 10000, 
                           (arg2 * stor[_140] / 10000) - (arg2 * stor[_140] / 10000 * sub_8cec07cd[idx] / 10000)
                return arg2 * stor[_140] / 10000, 0
            mem[ceil32(arg4.length) + 128] = 0
            if sub_43d0751f != 1:
                mem[ceil32(arg4.length) + 160] = 0
            else:
                mem[ceil32(arg4.length) + 160] = arg2 * stor[_140] / 10000
    else:
        _143 = sha3(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len ceil32(arg4.length)])
        if 0 == stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)]:
            revert with 0, 'Invalid swapType || channel'
        if not stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)]:
            if stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] != 1:
                if not stor3:
                    mem[ceil32(arg4.length) + 128] = 0
                    mem[ceil32(arg4.length) + 160] = 0
                    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
                           mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 32]
                idx = 0
                s = 0
                while idx < sub_617a2503.length:
                    mem[0] = 5
                    if not address(sub_617a2503[idx]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_617a2503.length:
                        revert with 0, 50
                    mem[0] = 5
                    mem[mem[64] + 4] = address(arg1)
                    require ext_code.size(address(sub_617a2503[idx]))
                    staticcall address(sub_617a2503[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_305]:
                        revert with 0, 17
                    if s + mem[_305] < s:
                        revert with 0, 'ds-math-add-overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_305]
                    continue 
                idx = 0
                while idx < sub_e5a5bc2e.length:
                    mem[0] = 6
                    if s >= sub_e5a5bc2e[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= sub_8cec07cd.length:
                        revert with 0, 50
                    if sub_8cec07cd[idx]:
                        if False and sub_8cec07cd[idx] > 0:
                            revert with 0, 17
                        if not sub_8cec07cd[idx]:
                            revert with 0, 18
                        if 0 / sub_8cec07cd[idx]:
                            revert with 0, 'ds-math-mul-overflow'
                        else:
                            return 0
                    else:
                        return 0
                return 0
            mem[ceil32(arg4.length) + 128] = 0
            mem[ceil32(arg4.length) + 160] = 0
        else:
            if arg2 and stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] > -1 / arg2:
                revert with 0, 17
            if not stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)]:
                revert with 0, 18
            if arg2 * stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] / stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] != 1:
                if not stor3:
                    mem[ceil32(arg4.length) + 128] = arg2 * stor[mem[arg4.length + 160 len ceil32(arg4.length)]][Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0)] / 10000
                    mem[ceil32(arg4.length) + 160] = 0
                    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
                           mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 32]
                idx = 0
                s = 0
                while idx < sub_617a2503.length:
                    mem[0] = 5
                    if not address(sub_617a2503[idx]):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= sub_617a2503.length:
                        revert with 0, 50
                    mem[0] = 5
                    mem[mem[64] + 4] = address(arg1)
                    require ext_code.size(address(sub_617a2503[idx]))
                    staticcall address(sub_617a2503[idx]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _306 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > !mem[_306]:
                        revert with 0, 17
                    if s + mem[_306] < s:
                        revert with 0, 'ds-math-add-overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_306]
                    continue 
                idx = 0
                while idx < sub_e5a5bc2e.length:
                    mem[0] = 6
                    if s >= sub_e5a5bc2e[idx]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= sub_8cec07cd.length:
                        revert with 0, 50
                    if not sub_8cec07cd[idx]:
                        if sub_43d0751f != 1:
                            return 0
                        if arg2 * stor[_143] / 10000 < 0:
                            revert with 0, 17
                        if arg2 * stor[_143] / 10000 > arg2 * stor[_143] / 10000:
                            revert with 0, 'ds-math-sub-underflow'
                        return 0, arg2 * stor[_143] / 10000
                    if arg2 * stor[_143] / 10000 and sub_8cec07cd[idx] > -1 / arg2 * stor[_143] / 10000:
                        revert with 0, 17
                    if not sub_8cec07cd[idx]:
                        revert with 0, 18
                    if arg2 * stor[_143] / 10000 * sub_8cec07cd[idx] / sub_8cec07cd[idx] != arg2 * stor[_143] / 10000:
                        revert with 0, 'ds-math-mul-overflow'
                    if sub_43d0751f != 1:
                        return arg2 * stor[_143] / 10000 * sub_8cec07cd[idx] / 10000, 0
                    if arg2 * stor[_143] / 10000 < arg2 * stor[_143] / 10000 * sub_8cec07cd[idx] / 10000:
                        revert with 0, 17
                    if (arg2 * stor[_143] / 10000) - (arg2 * stor[_143] / 10000 * sub_8cec07cd[idx] / 10000) > arg2 * stor[_143] / 10000:
                        revert with 0, 'ds-math-sub-underflow'
                    return arg2 * stor[_143] / 10000 * sub_8cec07cd[idx] / 10000, 
                           (arg2 * stor[_143] / 10000) - (arg2 * stor[_143] / 10000 * sub_8cec07cd[idx] / 10000)
                return arg2 * stor[_143] / 10000, 0
            mem[ceil32(arg4.length) + 128] = 0
            if sub_43d0751f != 1:
                mem[ceil32(arg4.length) + 160] = 0
            else:
                mem[ceil32(arg4.length) + 160] = arg2 * stor[_143] / 10000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
           mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length) + 32]
}



}
