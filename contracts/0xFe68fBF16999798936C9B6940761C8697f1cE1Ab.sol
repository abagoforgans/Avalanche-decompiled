contract main {




// =====================  Runtime code  =====================


const isOracle = 1


address owner;
uint256 sub_e7f71428;
mapping of address sub_92135714;

function owner() payable {
    return owner
}

function sub_92135714(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_92135714[arg1]
}

function sub_e7f71428(?) payable {
    return sub_e7f71428
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

function sub_bd22fb60(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new slippage exceeds max slippage threshold'
    sub_e7f71428 = arg1
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

function sub_636c8d66(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307() or ceil32(32 * ('cd', 36).length) + 98 < 97:
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        sub_92135714[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function get(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg2 == arg1:
        revert with 0, 'same input and output token'
    if not sub_92135714[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Oracle feed doesn't exist for the input asset'
    if not sub_92135714[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Oracle feed doesn't exist for the output asset'
    if not arg1:
        if not arg2:
            if arg3 > 0x154484932d2e725a5bbca17a3aba173d3d5:
                revert with 0, 17
            if not arg2:
                if not arg1:
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t, 
                       (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
            staticcall arg2.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 and 1 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if not arg1:
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18, 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t, 
                       (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 and 10^ext_call.return_data[31 len 1] > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if not arg1:
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
                staticcall arg1.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) > -5001 / -sub_e7f71428 + 10000:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if 10000 < sub_e7f71428:
                        revert with 0, 17
                    if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                               0
                    if not -sub_e7f71428 + 10000:
                        return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                               0
                    if not -sub_e7f71428 + 10000:
                        revert with 0, 18
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) > -5001:
                        revert with 0, 17
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                           (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                       (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 and s * t > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t, 
                       (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t, 
                       (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            u = 10
            v = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
                return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) - (sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 
                   (10000 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + 5000 / 10000
        staticcall sub_92135714[address(arg2)].latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 18
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 1000000000000000000 * 10^18 / ext_call.return_data[0] and arg3 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0]:
            revert with 0, 17
        if not arg2:
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and 1 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and 10^ext_call.return_data[31 len 1] > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                   (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + 5000 / 10000
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and s * t > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not arg1:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                   (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
            return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 0
        if not -sub_e7f71428 + 10000:
            return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
            revert with 0, 17
        if (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) - (sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) > -5001:
            revert with 0, 17
        return 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 
               (10000 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + 5000 / 10000
    staticcall sub_92135714[address(arg1)].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if not arg2:
            if False and arg3 > 0:
                revert with 0, 17
            if arg2:
                staticcall arg2.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if ext_call.return_data[31 len 1]:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if False and 10^ext_call.return_data[31 len 1] > 0:
                            revert with 0, 17
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if False and s * t > 0:
                            revert with 0, 17
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                else:
                    return 0
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                else:
                    return 0
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / 10^ext_call.return_data[31 len 1]:
                    return 0 / 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    return 0 / 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 0 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 0 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 0 / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 0 / 10^ext_call.return_data[31 len 1], 
                       (10000 * 0 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 0 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 0 / s * t:
                return 0 / s * t, 0
            if not -sub_e7f71428 + 10000:
                return 0 / s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 0 / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 0 / s * t and -sub_e7f71428 + 10000 > -1 / 0 / s * t:
                revert with 0, 17
            if (10000 * 0 / s * t) - (sub_e7f71428 * 0 / s * t) > -5001:
                revert with 0, 17
            return 0 / s * t, (10000 * 0 / s * t) + (-1 * sub_e7f71428 * 0 / s * t) + 5000 / 10000
        staticcall sub_92135714[address(arg2)].latestAnswer() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 18
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 0 / ext_call.return_data[0] and arg3 > -1 / 0 / ext_call.return_data[0]:
            revert with 0, 17
        if not arg2:
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                revert with 0, 17
            if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
                revert with 0, 17
            return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and 1 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                revert with 0, 17
            if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
                revert with 0, 17
            return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and 10^ext_call.return_data[31 len 1] > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                       (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 0
            if not -sub_e7f71428 + 10000:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
                revert with 0, 17
            if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) > -5001:
                revert with 0, 17
            return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                   (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + 5000 / 10000
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and s * t > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not arg1:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                revert with 0, 17
            if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
                revert with 0, 17
            return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                revert with 0, 17
            if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
                revert with 0, 17
            return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 0
            if not -sub_e7f71428 + 10000:
                return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) > -5001:
                revert with 0, 17
            return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                   (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
            return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 0
        if not -sub_e7f71428 + 10000:
            return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v and -sub_e7f71428 + 10000 > -1 / 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
            revert with 0, 17
        if (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) - (sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) > -5001:
            revert with 0, 17
        return 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 
               (10000 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + (-1 * sub_e7f71428 * 0 / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + 5000 / 10000
    if ext_call.return_data[0] > 0x154484932d2e725a5bbca17a3aba173d3d5:
        revert with 0, 17
    if not arg2:
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] and arg3 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0]:
            revert with 0, 17
        if not arg2:
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and 1 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and 10^ext_call.return_data[31 len 1] > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if not arg1:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                if 10000 < sub_e7f71428:
                    revert with 0, 17
                if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                           0
                if not -sub_e7f71428 + 10000:
                    revert with 0, 18
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                    revert with 0, 17
                if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) > -5001:
                    revert with 0, 17
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                       (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + 5000 / 10000
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and s * t > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not arg1:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
        u = 10
        v = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 0
        if not -sub_e7f71428 + 10000:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
            revert with 0, 17
        if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) > -5001:
            revert with 0, 17
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 
               (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + 5000 / 10000
    staticcall sub_92135714[address(arg2)].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 18
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] and arg3 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 17
    if not arg2:
        if not arg1:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
            revert with 0, 17
        if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
            revert with 0, 17
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
               (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
    staticcall arg2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and 1 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not arg1:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18, 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1]) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^ext_call.return_data[31 len 1], 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t:
            revert with 0, 17
        if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) > -5001:
            revert with 0, 17
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t, 
               (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 / s * t) + 5000 / 10000
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and 10^ext_call.return_data[31 len 1] > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
            revert with 0, 17
        if not arg1:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1]) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^ext_call.return_data[31 len 1], 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]), 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0])) + 5000 / 10000
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if 10000 < sub_e7f71428:
                revert with 0, 17
            if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                       0
            if not -sub_e7f71428 + 10000:
                revert with 0, 18
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
                revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
            if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]:
                revert with 0, 17
            if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1]) > -5001:
                revert with 0, 17
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^ext_call.return_data[31 len 1], 
                   (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t:
            revert with 0, 17
        if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) > -5001:
            revert with 0, 17
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t, 
               (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * 10^uint8(ext_call.return_data[0]) / s * t) + 5000 / 10000
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 and s * t > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18:
        revert with 0, 17
    if not arg1:
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
            revert with 0, 17
        if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
            revert with 0, 17
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
               (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
                   0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t:
            revert with 0, 17
        if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) > -5001:
            revert with 0, 17
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t, 
               (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t) + 5000 / 10000
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if 10000 < sub_e7f71428:
            revert with 0, 17
        if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                   0
        if not -sub_e7f71428 + 10000:
            return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
                   0
        if not -sub_e7f71428 + 10000:
            revert with 0, 18
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] > -5001 / -sub_e7f71428 + 10000:
            revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
        if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1] and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]:
            revert with 0, 17
        if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1]) > -5001:
            revert with 0, 17
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^ext_call.return_data[31 len 1], 
               (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / 10^uint8(ext_call.return_data[0])) + 5000 / 10000
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    if 10000 < sub_e7f71428:
        revert with 0, 17
    if not 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 
               0
    if not -sub_e7f71428 + 10000:
        return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 
               0
    if not -sub_e7f71428 + 10000:
        revert with 0, 18
    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v > -5001 / -sub_e7f71428 + 10000:
        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
    if 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v and -sub_e7f71428 + 10000 > -1 / 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v:
        revert with 0, 17
    if (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) - (sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) > -5001:
        revert with 0, 17
    return 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v, 
           (10000 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + (-1 * sub_e7f71428 * 1000000000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] * arg3 / 1000000000000000000 * 10^18 * s * t / u * v) + 5000 / 10000
}



}
