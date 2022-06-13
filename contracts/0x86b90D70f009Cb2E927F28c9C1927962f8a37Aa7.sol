contract main {




// =====================  Runtime code  =====================


#
#  - sub_ea60459a(?)
#
address owner;
address rockAddress;
address sub_fac9ac2eAddress;
array of struct sub_54341980;
mapping of uint256 sub_5553f351;
mapping of uint256 sub_9ebe48c7;
uint256 sub_5f596cd2;
uint256 sub_2b468b8f;

function sub_2b468b8f(?) payable {
    return sub_2b468b8f
}

function sub_54341980(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_54341980.length
    return sub_54341980[arg1].field_0, 
           sub_54341980[arg1].field_256,
           sub_54341980[arg1].field_512,
           sub_54341980[arg1].field_768,
           sub_54341980[arg1].field_1024,
           sub_54341980[arg1].field_1280
}

function sub_5553f351(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_5553f351[arg1] >= sub_54341980.length:
        revert with 'NH{q', 50
    return sub_54341980[stor4[arg1]].field_0, 
           sub_54341980[stor4[arg1]].field_256,
           sub_54341980[stor4[arg1]].field_512,
           sub_54341980[stor4[arg1]].field_768,
           sub_54341980[stor4[arg1]].field_1024,
           sub_54341980[stor4[arg1]].field_1280
}

function getCurrentTarget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_5553f351[arg1]
}

function sub_5f596cd2(?) payable {
    return sub_5f596cd2
}

function rock() payable {
    return rockAddress
}

function owner() payable {
    return owner
}

function sub_9ebe48c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_9ebe48c7[arg1]
}

function sub_d9ccfbdb(?) payable {
    return sub_54341980.length
}

function sub_fac9ac2e(?) payable {
    return sub_fac9ac2eAddress
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

function sub_da5ea9a5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rockAddress = address(arg1)
}

function sub_a8417955(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fac9ac2eAddress = address(arg1)
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

function sub_0e0fb41a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < sub_54341980.length:
        sub_54341980[arg1].field_0 = 0
        sub_54341980[arg1].field_256 = 0
        sub_54341980[arg1].field_512 = 0
        sub_54341980[arg1].field_768 = 0
        sub_54341980[arg1].field_1024 = 0
        sub_54341980[arg1].field_1280 = 0
}

function sub_1b7655c0(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_54341980.length++
    sub_54341980[sub_54341980.length].field_0 = arg1
    sub_54341980[sub_54341980.length].field_256 = arg2
    sub_54341980[sub_54341980.length].field_512 = arg3
    sub_54341980[sub_54341980.length].field_768 = arg4
    sub_54341980[sub_54341980.length].field_1024 = arg5
    sub_54341980[sub_54341980.length].field_1280 = arg6
}

function sub_f85163b6(?) payable {
    mem[64] = (32 * sub_54341980.length) + 128
    mem[96] = sub_54341980.length
    s = 128
    idx = 0
    while idx < sub_54341980.length:
        mem[0] = 3
        _15 = mem[64]
        mem[64] = mem[64] + 192
        mem[_15] = sub_54341980[idx].field_0
        mem[_15 + 32] = sub_54341980[idx].field_256
        mem[_15 + 64] = sub_54341980[idx].field_512
        mem[_15 + 96] = sub_54341980[idx].field_768
        mem[_15 + 128] = sub_54341980[idx].field_1024
        mem[_15 + 160] = sub_54341980[idx].field_1280
        mem[s] = _15
        s = s + 32
        idx = idx + 1
        continue 
    _16 = mem[64]
    mem[mem[64]] = 32
    _17 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _17:
        _26 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_26 + 32]
        mem[t + 64] = mem[_26 + 64]
        mem[t + 96] = mem[_26 + 96]
        mem[t + 128] = mem[_26 + 128]
        mem[t + 160] = mem[_26 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _16 + (192 * _17) + -mem[64] + 64
}

function sub_5b220b7a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(rockAddress)
    staticcall rockAddress.0xe926ca95 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    if arg2 >= sub_54341980.length:
        revert with 'NH{q', 50
    if sub_54341980[arg2].field_512 > -12:
        revert with 'NH{q', 17
    if sub_54341980[arg2].field_512 + 11 and 64 > -1 / sub_54341980[arg2].field_512 + 11:
        revert with 'NH{q', 17
    if 64 * sub_54341980[arg2].field_512 + 11 > -321:
        revert with 'NH{q', 17
    if (64 * sub_54341980[arg2].field_512 + 11) + 320 and 1000 > -1 / (64 * sub_54341980[arg2].field_512 + 11) + 320:
        revert with 'NH{q', 17
    if sub_54341980[arg2].field_0 > -12:
        revert with 'NH{q', 17
    if sub_54341980[arg2].field_0 + 11 and 64 > -1 / sub_54341980[arg2].field_0 + 11:
        revert with 'NH{q', 17
    if ext_call.return_data[32] > -10:
        revert with 'NH{q', 17
    if ext_call.return_data[32] + 9 and 64 > -1 / ext_call.return_data[32] + 9:
        revert with 'NH{q', 17
    if 64 * sub_54341980[arg2].field_0 + 11 <= 64 * ext_call.return_data[32] + 9:
        if 64 * ext_call.return_data[32] + 9 > -2:
            revert with 'NH{q', 17
        if (64 * ext_call.return_data[32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 64 * sub_54341980[arg2].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 'NH{q', 17
        if not 2 * (64 * ext_call.return_data[32] + 9) + 1:
            revert with 'NH{q', 18
        if (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640:
            revert with 'NH{q', 17
        if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
            revert with 'NH{q', 17
        if (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 <= 100 * ext_call.return_data[128]:
            if ext_call.return_data[64] > -12:
                revert with 'NH{q', 17
            if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[64] + 11 > -321:
                revert with 'NH{q', 17
            if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -12:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                revert with 'NH{q', 17
            if sub_54341980[arg2].field_256 > -10:
                revert with 'NH{q', 17
            if sub_54341980[arg2].field_256 + 9 and 64 > -1 / sub_54341980[arg2].field_256 + 9:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[arg2].field_256 + 9:
                if 64 * sub_54341980[arg2].field_256 + 9 > -2:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if not 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1:
                    revert with 'NH{q', 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                    revert with 'NH{q', 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if sub_54341980[arg2].field_768 and 1000 > -1 / sub_54341980[arg2].field_768:
                        revert with 'NH{q', 17
                    if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 'NH{q', 18
                    if 1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024) > -2:
                        revert with 'NH{q', 17
                    if 999999999999999 >= (1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1:
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
            else:
                if 64 * ext_call.return_data[0] + 11 > -2:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * sub_54341980[arg2].field_256 + 9 > -3:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[arg2].field_256 + 9) + 2:
                    revert with 'NH{q', 17
                if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 'NH{q', 18
                if 1000 < (1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 'NH{q', 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                    revert with 'NH{q', 17
                if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if sub_54341980[arg2].field_768 and 1000 > -1 / sub_54341980[arg2].field_768:
                        revert with 'NH{q', 17
                    if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 'NH{q', 18
                    if 1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024) > -2:
                        revert with 'NH{q', 17
                    if 999999999999999 >= (1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1:
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
        else:
            if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                revert with 'NH{q', 17
            if (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 < 100 * ext_call.return_data[128]:
                revert with 'NH{q', 17
            if ext_call.return_data[96] and 1000 > -1 / ext_call.return_data[96]:
                revert with 'NH{q', 17
            if not ((1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]):
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) > -2:
                revert with 'NH{q', 17
            if ext_call.return_data[64] > -12:
                revert with 'NH{q', 17
            if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[64] + 11 > -321:
                revert with 'NH{q', 17
            if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -12:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                revert with 'NH{q', 17
            if sub_54341980[arg2].field_256 > -10:
                revert with 'NH{q', 17
            if sub_54341980[arg2].field_256 + 9 and 64 > -1 / sub_54341980[arg2].field_256 + 9:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[arg2].field_256 + 9:
                if 64 * sub_54341980[arg2].field_256 + 9 > -2:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if not 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1:
                    revert with 'NH{q', 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                    revert with 'NH{q', 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if sub_54341980[arg2].field_768 and 1000 > -1 / sub_54341980[arg2].field_768:
                        revert with 'NH{q', 17
                    if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 'NH{q', 18
                    if 1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024) > -2:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) >= 1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
            else:
                if 64 * ext_call.return_data[0] + 11 > -2:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * sub_54341980[arg2].field_256 + 9 > -3:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[arg2].field_256 + 9) + 2:
                    revert with 'NH{q', 17
                if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 'NH{q', 18
                if 1000 < (1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 'NH{q', 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                    revert with 'NH{q', 17
                if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if sub_54341980[arg2].field_768 and 1000 > -1 / sub_54341980[arg2].field_768:
                        revert with 'NH{q', 17
                    if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 'NH{q', 18
                    if 1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024) > -2:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[arg2].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) >= 1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
    else:
        if 64 * sub_54341980[arg2].field_0 + 11 > -2:
            revert with 'NH{q', 17
        if (64 * sub_54341980[arg2].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 64 * ext_call.return_data[32] + 9 > -3:
            revert with 'NH{q', 17
        if (64 * ext_call.return_data[32] + 9) + 2 and 1000 > -1 / (64 * ext_call.return_data[32] + 9) + 2:
            revert with 'NH{q', 17
        if not 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1:
            revert with 'NH{q', 18
        if 1000 < (1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1:
            revert with 'NH{q', 17
        if (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640 and -((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640:
            revert with 'NH{q', 17
        if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
            revert with 'NH{q', 17
        if (1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000 <= 100 * ext_call.return_data[128]:
            if ext_call.return_data[64] > -12:
                revert with 'NH{q', 17
            if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[64] + 11 > -321:
                revert with 'NH{q', 17
            if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -12:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                revert with 'NH{q', 17
            if sub_54341980[arg2].field_256 > -10:
                revert with 'NH{q', 17
            if sub_54341980[arg2].field_256 + 9 and 64 > -1 / sub_54341980[arg2].field_256 + 9:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[arg2].field_256 + 9:
                if 64 * sub_54341980[arg2].field_256 + 9 > -2:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if not 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1:
                    revert with 'NH{q', 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                    revert with 'NH{q', 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if sub_54341980[arg2].field_768 and 1000 > -1 / sub_54341980[arg2].field_768:
                        revert with 'NH{q', 17
                    if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 'NH{q', 18
                    if 1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024) > -2:
                        revert with 'NH{q', 17
                    if 999999999999999 >= (1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1:
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
            else:
                if 64 * ext_call.return_data[0] + 11 > -2:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * sub_54341980[arg2].field_256 + 9 > -3:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[arg2].field_256 + 9) + 2:
                    revert with 'NH{q', 17
                if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 'NH{q', 18
                if 1000 < (1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 'NH{q', 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                    revert with 'NH{q', 17
                if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if sub_54341980[arg2].field_768 and 1000 > -1 / sub_54341980[arg2].field_768:
                        revert with 'NH{q', 17
                    if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 'NH{q', 18
                    if 1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024) > -2:
                        revert with 'NH{q', 17
                    if 999999999999999 >= (1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1:
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
        else:
            if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                revert with 'NH{q', 17
            if (1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000 < 100 * ext_call.return_data[128]:
                revert with 'NH{q', 17
            if ext_call.return_data[96] and 1000 > -1 / ext_call.return_data[96]:
                revert with 'NH{q', 17
            if not ((1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]):
                revert with 'NH{q', 18
            if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) > -2:
                revert with 'NH{q', 17
            if ext_call.return_data[64] > -12:
                revert with 'NH{q', 17
            if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[64] + 11 > -321:
                revert with 'NH{q', 17
            if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                revert with 'NH{q', 17
            if ext_call.return_data[0] > -12:
                revert with 'NH{q', 17
            if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                revert with 'NH{q', 17
            if sub_54341980[arg2].field_256 > -10:
                revert with 'NH{q', 17
            if sub_54341980[arg2].field_256 + 9 and 64 > -1 / sub_54341980[arg2].field_256 + 9:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[arg2].field_256 + 9:
                if 64 * sub_54341980[arg2].field_256 + 9 > -2:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if not 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1:
                    revert with 'NH{q', 18
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                    revert with 'NH{q', 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if sub_54341980[arg2].field_768 and 1000 > -1 / sub_54341980[arg2].field_768:
                        revert with 'NH{q', 17
                    if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 'NH{q', 18
                    if 1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024) > -2:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) >= 1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024):
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[arg2].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
            else:
                if 64 * ext_call.return_data[0] + 11 > -2:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * sub_54341980[arg2].field_256 + 9 > -3:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[arg2].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[arg2].field_256 + 9) + 2:
                    revert with 'NH{q', 17
                if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 'NH{q', 18
                if 1000 < (1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                    revert with 'NH{q', 17
                if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                    revert with 'NH{q', 17
                if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 > 100 * sub_54341980[arg2].field_1024:
                    if sub_54341980[arg2].field_1024 and 100 > -1 / sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[arg2].field_1024:
                        revert with 'NH{q', 17
                    if sub_54341980[arg2].field_768 and 1000 > -1 / sub_54341980[arg2].field_768:
                        revert with 'NH{q', 17
                    if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        revert with 'NH{q', 18
                    if 1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024) > -2:
                        revert with 'NH{q', 17
                    if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[arg2].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[arg2].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) >= 1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024):
                        return ((1000 * sub_54341980[arg2].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[arg2].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[arg2].field_1024)) + 1)
    return 999999999999999
}

function sub_5b8338f2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(rockAddress)
    staticcall rockAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You can only change the target of a Rock you own.'
    if arg2 >= sub_54341980.length:
        revert with 0, 'The enemy you are targetting doesn't exist'
    if sub_54341980[arg2].field_768 <= 0:
        revert with 0, 'The enemy you are targetting doesn't exist anymore'
    if not sub_9ebe48c7[arg1]:
        if sub_2b468b8f > -1:
            revert with 'NH{q', 17
        if sub_2b468b8f >= sub_5f596cd2:
            revert with 0, 'Maximum amount of PEBBLES have been minted'
        if sub_2b468b8f > -1:
            revert with 'NH{q', 17
        require ext_code.size(sub_fac9ac2eAddress)
        call sub_fac9ac2eAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require ext_code.size(rockAddress)
        staticcall rockAddress.0xe926ca95 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
            revert with 'NH{q', 65
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        require ext_call.return_data[128] == ext_call.return_data[128]
        if sub_5553f351[arg1] >= sub_54341980.length:
            revert with 'NH{q', 50
        if sub_54341980[stor4[arg1]].field_512 > -12:
            revert with 'NH{q', 17
        if sub_54341980[stor4[arg1]].field_512 + 11 and 64 > -1 / sub_54341980[stor4[arg1]].field_512 + 11:
            revert with 'NH{q', 17
        if 64 * sub_54341980[stor4[arg1]].field_512 + 11 > -321:
            revert with 'NH{q', 17
        if (64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320:
            revert with 'NH{q', 17
        if sub_54341980[stor4[arg1]].field_0 > -12:
            revert with 'NH{q', 17
        if sub_54341980[stor4[arg1]].field_0 + 11 and 64 > -1 / sub_54341980[stor4[arg1]].field_0 + 11:
            revert with 'NH{q', 17
        if ext_call.return_data[32] > -10:
            revert with 'NH{q', 17
        if ext_call.return_data[32] + 9 and 64 > -1 / ext_call.return_data[32] + 9:
            revert with 'NH{q', 17
        if 64 * sub_54341980[stor4[arg1]].field_0 + 11 <= 64 * ext_call.return_data[32] + 9:
            if 64 * ext_call.return_data[32] + 9 > -2:
                revert with 'NH{q', 17
            if (64 * ext_call.return_data[32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 64 * sub_54341980[stor4[arg1]].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 'NH{q', 17
            if not 2 * (64 * ext_call.return_data[32] + 9) + 1:
                revert with 'NH{q', 18
            if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
                revert with 'NH{q', 17
            if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                revert with 'NH{q', 17
            if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 <= 100 * ext_call.return_data[128]:
                if ext_call.return_data[64] > -12:
                    revert with 'NH{q', 17
                if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[64] + 11 > -321:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -12:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[arg1]].field_256 > -10:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[arg1]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[arg1]].field_256 + 9:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                    if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -2:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                        revert with 'NH{q', 18
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if sub_5553f351[arg1] >= sub_54341980.length:
                            revert with 'NH{q', 50
                        if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                            revert with 'NH{q', 17
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                            revert with 0, 'Maximum amount of PEBBLES have been minted'
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        require ext_code.size(sub_fac9ac2eAddress)
                        call sub_fac9ac2eAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                    else:
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                            revert with 'NH{q', 17
                        if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            revert with 'NH{q', 18
                        if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 18
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if 64 * ext_call.return_data[0] + 11 > -2:
                        revert with 'NH{q', 17
                    if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -3:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2:
                        revert with 'NH{q', 17
                    if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                        revert with 'NH{q', 18
                    if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if sub_5553f351[arg1] >= sub_54341980.length:
                            revert with 'NH{q', 50
                        if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                            revert with 'NH{q', 17
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                            revert with 0, 'Maximum amount of PEBBLES have been minted'
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        require ext_code.size(sub_fac9ac2eAddress)
                        call sub_fac9ac2eAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                    else:
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                            revert with 'NH{q', 17
                        if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            revert with 'NH{q', 18
                        if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 18
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
            else:
                if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                    revert with 'NH{q', 17
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 < 100 * ext_call.return_data[128]:
                    revert with 'NH{q', 17
                if ext_call.return_data[96] and 1000 > -1 / ext_call.return_data[96]:
                    revert with 'NH{q', 17
                if not ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]):
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) > -2:
                    revert with 'NH{q', 17
                if ext_call.return_data[64] > -12:
                    revert with 'NH{q', 17
                if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[64] + 11 > -321:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -12:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[arg1]].field_256 > -10:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[arg1]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[arg1]].field_256 + 9:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                    if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -2:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                        revert with 'NH{q', 18
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if sub_5553f351[arg1] >= sub_54341980.length:
                            revert with 'NH{q', 50
                        if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                            revert with 'NH{q', 17
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                            revert with 0, 'Maximum amount of PEBBLES have been minted'
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        require ext_code.size(sub_fac9ac2eAddress)
                        call sub_fac9ac2eAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                    else:
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                            revert with 'NH{q', 17
                        if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            revert with 'NH{q', 18
                        if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 18
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if 64 * ext_call.return_data[0] + 11 > -2:
                        revert with 'NH{q', 17
                    if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -3:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2:
                        revert with 'NH{q', 17
                    if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                        revert with 'NH{q', 18
                    if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if sub_5553f351[arg1] >= sub_54341980.length:
                            revert with 'NH{q', 50
                        if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                            revert with 'NH{q', 17
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                            revert with 0, 'Maximum amount of PEBBLES have been minted'
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        require ext_code.size(sub_fac9ac2eAddress)
                        call sub_fac9ac2eAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                    else:
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                            revert with 'NH{q', 17
                        if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            revert with 'NH{q', 18
                        if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 18
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
        else:
            if 64 * sub_54341980[stor4[arg1]].field_0 + 11 > -2:
                revert with 'NH{q', 17
            if (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 64 * ext_call.return_data[32] + 9 > -3:
                revert with 'NH{q', 17
            if (64 * ext_call.return_data[32] + 9) + 2 and 1000 > -1 / (64 * ext_call.return_data[32] + 9) + 2:
                revert with 'NH{q', 17
            if not 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
                revert with 'NH{q', 18
            if 1000 < (1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
                revert with 'NH{q', 17
            if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and -((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
                revert with 'NH{q', 17
            if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                revert with 'NH{q', 17
            if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 <= 100 * ext_call.return_data[128]:
                if ext_call.return_data[64] > -12:
                    revert with 'NH{q', 17
                if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[64] + 11 > -321:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -12:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[arg1]].field_256 > -10:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[arg1]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[arg1]].field_256 + 9:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                    if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -2:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                        revert with 'NH{q', 18
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if sub_5553f351[arg1] >= sub_54341980.length:
                            revert with 'NH{q', 50
                        if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                            revert with 'NH{q', 17
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                            revert with 0, 'Maximum amount of PEBBLES have been minted'
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        require ext_code.size(sub_fac9ac2eAddress)
                        call sub_fac9ac2eAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                    else:
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                            revert with 'NH{q', 17
                        if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            revert with 'NH{q', 18
                        if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 18
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if 64 * ext_call.return_data[0] + 11 > -2:
                        revert with 'NH{q', 17
                    if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -3:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2:
                        revert with 'NH{q', 17
                    if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                        revert with 'NH{q', 18
                    if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if sub_5553f351[arg1] >= sub_54341980.length:
                            revert with 'NH{q', 50
                        if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                            revert with 'NH{q', 17
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                            revert with 0, 'Maximum amount of PEBBLES have been minted'
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        require ext_code.size(sub_fac9ac2eAddress)
                        call sub_fac9ac2eAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                    else:
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                            revert with 'NH{q', 17
                        if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            revert with 'NH{q', 18
                        if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 18
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
            else:
                if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                    revert with 'NH{q', 17
                if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 < 100 * ext_call.return_data[128]:
                    revert with 'NH{q', 17
                if ext_call.return_data[96] and 1000 > -1 / ext_call.return_data[96]:
                    revert with 'NH{q', 17
                if not ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]):
                    revert with 'NH{q', 18
                if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) > -2:
                    revert with 'NH{q', 17
                if ext_call.return_data[64] > -12:
                    revert with 'NH{q', 17
                if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[64] + 11 > -321:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] > -12:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[arg1]].field_256 > -10:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[arg1]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[arg1]].field_256 + 9:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                    if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -2:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                        revert with 'NH{q', 18
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if sub_5553f351[arg1] >= sub_54341980.length:
                            revert with 'NH{q', 50
                        if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                            revert with 'NH{q', 17
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                            revert with 0, 'Maximum amount of PEBBLES have been minted'
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        require ext_code.size(sub_fac9ac2eAddress)
                        call sub_fac9ac2eAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                    else:
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                            revert with 'NH{q', 17
                        if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            revert with 'NH{q', 18
                        if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 18
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if 64 * ext_call.return_data[0] + 11 > -2:
                        revert with 'NH{q', 17
                    if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -3:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2:
                        revert with 'NH{q', 17
                    if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                        revert with 'NH{q', 18
                    if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                        revert with 'NH{q', 17
                    if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if sub_5553f351[arg1] >= sub_54341980.length:
                            revert with 'NH{q', 50
                        if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                            revert with 'NH{q', 17
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                            revert with 0, 'Maximum amount of PEBBLES have been minted'
                        if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                            revert with 'NH{q', 17
                        sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        require ext_code.size(sub_fac9ac2eAddress)
                        call sub_fac9ac2eAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                    else:
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                            revert with 'NH{q', 17
                        if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            revert with 'NH{q', 18
                        if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_9ebe48c7[arg1]:
                            revert with 'NH{q', 17
                        if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 18
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_9ebe48c7[arg1] = block.timestamp
    sub_5553f351[arg1] = arg2
}

function sub_4c3db7ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(rockAddress)
    staticcall rockAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You can only claim rewards for Rocks you own.'
    if sub_9ebe48c7[arg1]:
        if not sub_9ebe48c7[arg1]:
            if sub_2b468b8f > -1:
                revert with 'NH{q', 17
            if sub_2b468b8f >= sub_5f596cd2:
                revert with 0, 'Maximum amount of PEBBLES have been minted'
            if sub_2b468b8f > -1:
                revert with 'NH{q', 17
            require ext_code.size(sub_fac9ac2eAddress)
            call sub_fac9ac2eAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require ext_code.size(rockAddress)
            staticcall rockAddress.0xe926ca95 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if not bool((2 * ceil32(return_data.size)) + 256 <= test266151307()):
                revert with 'NH{q', 65
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_call.return_data[64] == ext_call.return_data[64]
            require ext_call.return_data[96] == ext_call.return_data[96]
            require ext_call.return_data[128] == ext_call.return_data[128]
            if sub_5553f351[arg1] >= sub_54341980.length:
                revert with 'NH{q', 50
            if sub_54341980[stor4[arg1]].field_512 > -12:
                revert with 'NH{q', 17
            if sub_54341980[stor4[arg1]].field_512 + 11 and 64 > -1 / sub_54341980[stor4[arg1]].field_512 + 11:
                revert with 'NH{q', 17
            if 64 * sub_54341980[stor4[arg1]].field_512 + 11 > -321:
                revert with 'NH{q', 17
            if (64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320:
                revert with 'NH{q', 17
            if sub_54341980[stor4[arg1]].field_0 > -12:
                revert with 'NH{q', 17
            if sub_54341980[stor4[arg1]].field_0 + 11 and 64 > -1 / sub_54341980[stor4[arg1]].field_0 + 11:
                revert with 'NH{q', 17
            if ext_call.return_data[32] > -10:
                revert with 'NH{q', 17
            if ext_call.return_data[32] + 9 and 64 > -1 / ext_call.return_data[32] + 9:
                revert with 'NH{q', 17
            if 64 * sub_54341980[stor4[arg1]].field_0 + 11 <= 64 * ext_call.return_data[32] + 9:
                if 64 * ext_call.return_data[32] + 9 > -2:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * sub_54341980[stor4[arg1]].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 'NH{q', 17
                if not 2 * (64 * ext_call.return_data[32] + 9) + 1:
                    revert with 'NH{q', 18
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                    revert with 'NH{q', 17
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 <= 100 * ext_call.return_data[128]:
                    if ext_call.return_data[64] > -12:
                        revert with 'NH{q', 17
                    if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[64] + 11 > -321:
                        revert with 'NH{q', 17
                    if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > -12:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_256 > -10:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[arg1]].field_256 + 9:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -2:
                            revert with 'NH{q', 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 'NH{q', 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                                revert with 'NH{q', 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 'NH{q', 18
                            if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 64 * ext_call.return_data[0] + 11 > -2:
                            revert with 'NH{q', 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -3:
                            revert with 'NH{q', 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2:
                            revert with 'NH{q', 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 'NH{q', 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                                revert with 'NH{q', 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 'NH{q', 18
                            if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                        revert with 'NH{q', 17
                    if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000 < 100 * ext_call.return_data[128]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[96] and 1000 > -1 / ext_call.return_data[96]:
                        revert with 'NH{q', 17
                    if not ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]):
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) > -2:
                        revert with 'NH{q', 17
                    if ext_call.return_data[64] > -12:
                        revert with 'NH{q', 17
                    if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[64] + 11 > -321:
                        revert with 'NH{q', 17
                    if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > -12:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_256 > -10:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[arg1]].field_256 + 9:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -2:
                            revert with 'NH{q', 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 'NH{q', 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                                revert with 'NH{q', 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 'NH{q', 18
                            if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 64 * ext_call.return_data[0] + 11 > -2:
                            revert with 'NH{q', 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -3:
                            revert with 'NH{q', 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2:
                            revert with 'NH{q', 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 'NH{q', 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                                revert with 'NH{q', 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 'NH{q', 18
                            if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[96] / ((1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[arg1]].field_0 + 11 / 2 * (64 * ext_call.return_data[32] + 9) + 1 / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
            else:
                if 64 * sub_54341980[stor4[arg1]].field_0 + 11 > -2:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if 64 * ext_call.return_data[32] + 9 > -3:
                    revert with 'NH{q', 17
                if (64 * ext_call.return_data[32] + 9) + 2 and 1000 > -1 / (64 * ext_call.return_data[32] + 9) + 2:
                    revert with 'NH{q', 17
                if not 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
                    revert with 'NH{q', 18
                if 1000 < (1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1:
                    revert with 'NH{q', 17
                if (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640 and -((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640:
                    revert with 'NH{q', 17
                if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                    revert with 'NH{q', 17
                if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 <= 100 * ext_call.return_data[128]:
                    if ext_call.return_data[64] > -12:
                        revert with 'NH{q', 17
                    if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[64] + 11 > -321:
                        revert with 'NH{q', 17
                    if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > -12:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_256 > -10:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[arg1]].field_256 + 9:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -2:
                            revert with 'NH{q', 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 'NH{q', 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                                revert with 'NH{q', 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 'NH{q', 18
                            if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 64 * ext_call.return_data[0] + 11 > -2:
                            revert with 'NH{q', 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -3:
                            revert with 'NH{q', 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2:
                            revert with 'NH{q', 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 'NH{q', 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                                revert with 'NH{q', 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 'NH{q', 18
                            if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if 999999999999999 < (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                else:
                    if ext_call.return_data[128] and 100 > -1 / ext_call.return_data[128]:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000 < 100 * ext_call.return_data[128]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[96] and 1000 > -1 / ext_call.return_data[96]:
                        revert with 'NH{q', 17
                    if not ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]):
                        revert with 'NH{q', 18
                    if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) > -2:
                        revert with 'NH{q', 17
                    if ext_call.return_data[64] > -12:
                        revert with 'NH{q', 17
                    if ext_call.return_data[64] + 11 and 64 > -1 / ext_call.return_data[64] + 11:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[64] + 11 > -321:
                        revert with 'NH{q', 17
                    if (64 * ext_call.return_data[64] + 11) + 320 and 1000 > -1 / (64 * ext_call.return_data[64] + 11) + 320:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > -12:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] + 11 and 64 > -1 / ext_call.return_data[0] + 11:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_256 > -10:
                        revert with 'NH{q', 17
                    if sub_54341980[stor4[arg1]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[arg1]].field_256 + 9:
                        revert with 'NH{q', 17
                    if 64 * ext_call.return_data[0] + 11 <= 64 * sub_54341980[stor4[arg1]].field_256 + 9:
                        if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -2:
                            revert with 'NH{q', 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 64 * ext_call.return_data[0] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 'NH{q', 17
                        if not 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1:
                            revert with 'NH{q', 18
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                                revert with 'NH{q', 17
                            if not ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 'NH{q', 18
                            if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 * 1000 * 64 * ext_call.return_data[0] + 11 / 2 * (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                    else:
                        if 64 * ext_call.return_data[0] + 11 > -2:
                            revert with 'NH{q', 17
                        if (64 * ext_call.return_data[0] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 64 * sub_54341980[stor4[arg1]].field_256 + 9 > -3:
                            revert with 'NH{q', 17
                        if (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2:
                            revert with 'NH{q', 17
                        if not 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 'NH{q', 18
                        if 1000 < (1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1:
                            revert with 'NH{q', 17
                        if (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1) + 1000 > -1 / (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[arg1]].field_1024:
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if sub_5553f351[arg1] >= sub_54341980.length:
                                revert with 'NH{q', 50
                            if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                revert with 'NH{q', 17
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                revert with 0, 'Maximum amount of PEBBLES have been minted'
                            if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                revert with 'NH{q', 17
                            sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            require ext_code.size(sub_fac9ac2eAddress)
                            call sub_fac9ac2eAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                        else:
                            if sub_54341980[stor4[arg1]].field_1024 and 100 > -1 / sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[arg1]].field_1024:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[arg1]].field_768 and 1000 > -1 / sub_54341980[stor4[arg1]].field_768:
                                revert with 'NH{q', 17
                            if not ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                revert with 'NH{q', 18
                            if 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024) > -2:
                                revert with 'NH{q', 17
                            if block.timestamp < sub_9ebe48c7[arg1]:
                                revert with 'NH{q', 17
                            if 1000 * ext_call.return_data[96] / ((1000 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * ext_call.return_data[32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[arg1]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[arg1]].field_512 + 11) + 320000 / 640) / 2000) - (100 * ext_call.return_data[128]) < 1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024):
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / 999999999999999
                            else:
                                if not (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 18
                                if sub_5553f351[arg1] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                if sub_54341980[stor4[arg1]].field_1280 and block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 > -1 / sub_54341980[stor4[arg1]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                if sub_2b468b8f + (10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) >= sub_5f596cd2:
                                    revert with 0, 'Maximum amount of PEBBLES have been minted'
                                if sub_2b468b8f > (-1 * 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1) - 1:
                                    revert with 'NH{q', 17
                                sub_2b468b8f += 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
                                require ext_code.size(sub_fac9ac2eAddress)
                                call sub_fac9ac2eAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 10^18 * sub_54341980[stor4[arg1]].field_1280 * block.timestamp - sub_9ebe48c7[arg1] / (1000 * sub_54341980[stor4[arg1]].field_768 / ((1000 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[arg1]].field_256 + 9) + 2000 / 2 * (64 * ext_call.return_data[0] + 11) + 1 * (1000 * 64 * ext_call.return_data[64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[arg1]].field_1024)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_9ebe48c7[arg1] = block.timestamp
}

function sub_de866bd0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(rockAddress)
        staticcall rockAddress.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_32] == mem[_32 + 12 len 20]
        if mem[_32 + 12 len 20] != msg.sender:
            revert with 0, 'You can only claim rewards for Rocks you own.'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 5
        if sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                mem[32] = 4
                require ext_code.size(rockAddress)
                staticcall rockAddress.0xe926ca95 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[4] + 36)]
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _44 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _46 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 160
                require mem[_44] == mem[_44]
                mem[_46] = mem[_44]
                require mem[_44 + 32] == mem[_44 + 32]
                mem[_46 + 32] = mem[_44 + 32]
                require mem[_44 + 64] == mem[_44 + 64]
                mem[_46 + 64] = mem[_44 + 64]
                require mem[_44 + 96] == mem[_44 + 96]
                mem[_46 + 96] = mem[_44 + 96]
                require mem[_44 + 128] == mem[_44 + 128]
                mem[_46 + 128] = mem[_44 + 128]
                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                _53 = mem[64]
                mem[64] = mem[64] + 192
                mem[_53] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                mem[_53 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                mem[_53 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                mem[_53 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                mem[_53 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                mem[_53 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 > -12:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11 and 64 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11:
                    revert with 'NH{q', 17
                if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11 > -321:
                    revert with 'NH{q', 17
                if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320 and 1000 > -1 / (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 > -12:
                    revert with 'NH{q', 17
                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 and 64 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11:
                    revert with 'NH{q', 17
                if mem[_46 + 32] > -10:
                    revert with 'NH{q', 17
                if mem[_46 + 32] + 9 and 64 > -1 / mem[_46 + 32] + 9:
                    revert with 'NH{q', 17
                if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 <= 64 * mem[_46 + 32] + 9:
                    if 64 * mem[_46 + 32] + 9 > -2:
                        revert with 'NH{q', 17
                    if (64 * mem[_46 + 32] + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 'NH{q', 17
                    if not 2 * (64 * mem[_46 + 32] + 9) + 1:
                        revert with 'NH{q', 18
                    if (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 and 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 > -1 / (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if mem[_46 + 128] and 100 > -1 / mem[_46 + 128]:
                        revert with 'NH{q', 17
                    if (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 / 2000 <= 100 * mem[_46 + 128]:
                        _59 = mem[_46 + 64]
                        if mem[_46 + 64] > -12:
                            revert with 'NH{q', 17
                        if mem[_46 + 64] + 11 and 64 > -1 / mem[_46 + 64] + 11:
                            revert with 'NH{q', 17
                        if 64 * mem[_46 + 64] + 11 > -321:
                            revert with 'NH{q', 17
                        if (64 * mem[_46 + 64] + 11) + 320 and 1000 > -1 / (64 * mem[_46 + 64] + 11) + 320:
                            revert with 'NH{q', 17
                        _66 = mem[_46]
                        if mem[_46] > -12:
                            revert with 'NH{q', 17
                        if mem[_46] + 11 and 64 > -1 / mem[_46] + 11:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 > -10:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                            revert with 'NH{q', 17
                        if 64 * mem[_46] + 11 <= 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > -2:
                                revert with 'NH{q', 17
                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 64 * mem[_46] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1:
                                revert with 'NH{q', 18
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 and 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > -1 / (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                _85 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_85] = 0
                                mem[_85 + 32] = 0
                                mem[_85 + 64] = 0
                                mem[_85 + 96] = 0
                                mem[_85 + 128] = 0
                                mem[_85 + 160] = 0
                                mem[32] = 4
                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                _89 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_89] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                mem[_89 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                mem[_89 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                mem[_89 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                mem[_89 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                mem[_89 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                    revert with 'NH{q', 17
                                if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 and 1000 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768:
                                    revert with 'NH{q', 17
                                if not ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    revert with 'NH{q', 18
                                if 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024) > -2:
                                    revert with 'NH{q', 17
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if 999999999999999 < (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                    _134 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_134] = 0
                                    mem[_134 + 32] = 0
                                    mem[_134 + 64] = 0
                                    mem[_134 + 96] = 0
                                    mem[_134 + 128] = 0
                                    mem[_134 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _147 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_147] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_147 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_147 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_147 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_147 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_147 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _59 + 11) + 320000 / 640 * 1000 * 64 * _66 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 18
                                    _133 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_133] = 0
                                    mem[_133 + 32] = 0
                                    mem[_133 + 64] = 0
                                    mem[_133 + 96] = 0
                                    mem[_133 + 128] = 0
                                    mem[_133 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _145 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_145] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_145 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_145 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_145 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_145 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_145 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _59 + 11) + 320000 / 640 * 1000 * 64 * _66 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _59 + 11) + 320000 / 640 * 1000 * 64 * _66 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _59 + 11) + 320000 / 640 * 1000 * 64 * _66 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _59 + 11) + 320000 / 640 * 1000 * 64 * _66 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1) - 1:
                                        revert with 'NH{q', 17
                        else:
                            if 64 * mem[_46] + 11 > -2:
                                revert with 'NH{q', 17
                            if (64 * mem[_46] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > -3:
                                revert with 'NH{q', 17
                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2:
                                revert with 'NH{q', 17
                            if not 2 * (64 * mem[_46] + 11) + 1:
                                revert with 'NH{q', 18
                            if 1000 < (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1:
                                revert with 'NH{q', 17
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1) + 1000 > -1 / (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                _96 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_96] = 0
                                mem[_96 + 32] = 0
                                mem[_96 + 64] = 0
                                mem[_96 + 96] = 0
                                mem[_96 + 128] = 0
                                mem[_96 + 160] = 0
                                mem[32] = 4
                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                _102 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_102] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                mem[_102 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                mem[_102 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                mem[_102 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                mem[_102 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                mem[_102 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                    revert with 'NH{q', 17
                                if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if (1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 and 1000 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768:
                                    revert with 'NH{q', 17
                                if not ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    revert with 'NH{q', 18
                                if 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024) > -2:
                                    revert with 'NH{q', 17
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if 999999999999999 < (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                    _164 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_164] = 0
                                    mem[_164 + 32] = 0
                                    mem[_164 + 64] = 0
                                    mem[_164 + 96] = 0
                                    mem[_164 + 128] = 0
                                    mem[_164 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _184 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_184] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_184 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_184 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_184 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_184 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_184 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _59 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _66 + 11) + 1 * (1000 * 64 * _59 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 18
                                    _163 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_163] = 0
                                    mem[_163 + 32] = 0
                                    mem[_163 + 64] = 0
                                    mem[_163 + 96] = 0
                                    mem[_163 + 128] = 0
                                    mem[_163 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _182 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_182] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_182 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_182 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_182 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_182 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_182 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _59 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _66 + 11) + 1 * (1000 * 64 * _59 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _59 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _66 + 11) + 1 * (1000 * 64 * _59 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _59 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _66 + 11) + 1 * (1000 * 64 * _59 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _59 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _66 + 11) + 1 * (1000 * 64 * _59 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1) - 1:
                                        revert with 'NH{q', 17
                    else:
                        if mem[_46 + 128] and 100 > -1 / mem[_46 + 128]:
                            revert with 'NH{q', 17
                        if (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 / 2000 < 100 * mem[_46 + 128]:
                            revert with 'NH{q', 17
                        if mem[_46 + 96] and 1000 > -1 / mem[_46 + 96]:
                            revert with 'NH{q', 17
                        if not ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 / 2000) - (100 * mem[_46 + 128]):
                            revert with 'NH{q', 18
                        if 1000 * mem[_46 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 / 2000) - (100 * mem[_46 + 128]) > -2:
                            revert with 'NH{q', 17
                        _65 = mem[_46 + 64]
                        if mem[_46 + 64] > -12:
                            revert with 'NH{q', 17
                        if mem[_46 + 64] + 11 and 64 > -1 / mem[_46 + 64] + 11:
                            revert with 'NH{q', 17
                        if 64 * mem[_46 + 64] + 11 > -321:
                            revert with 'NH{q', 17
                        if (64 * mem[_46 + 64] + 11) + 320 and 1000 > -1 / (64 * mem[_46 + 64] + 11) + 320:
                            revert with 'NH{q', 17
                        _71 = mem[_46]
                        if mem[_46] > -12:
                            revert with 'NH{q', 17
                        if mem[_46] + 11 and 64 > -1 / mem[_46] + 11:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 > -10:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                            revert with 'NH{q', 17
                        if 64 * mem[_46] + 11 <= 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > -2:
                                revert with 'NH{q', 17
                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 64 * mem[_46] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1:
                                revert with 'NH{q', 18
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 and 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > -1 / (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if (1000 * mem[_46 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 / 2000) - (100 * mem[_46 + 128])) + 1 >= 999999999999999:
                                    _131 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_131] = 0
                                    mem[_131 + 32] = 0
                                    mem[_131 + 64] = 0
                                    mem[_131 + 96] = 0
                                    mem[_131 + 128] = 0
                                    mem[_131 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _141 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_141] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_141 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_141 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_141 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_141 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_141 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                else:
                                    _132 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_132] = 0
                                    mem[_132 + 32] = 0
                                    mem[_132 + 64] = 0
                                    mem[_132 + 96] = 0
                                    mem[_132 + 128] = 0
                                    mem[_132 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _143 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_143] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_143 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_143 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_143 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_143 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_143 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                    revert with 'NH{q', 17
                                if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 and 1000 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768:
                                    revert with 'NH{q', 17
                                if not ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    revert with 'NH{q', 18
                                if 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024) > -2:
                                    revert with 'NH{q', 17
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if 1000 * mem[_46 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 / 2000) - (100 * mem[_46 + 128]) < 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    _234 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_234] = 0
                                    mem[_234 + 32] = 0
                                    mem[_234 + 64] = 0
                                    mem[_234 + 96] = 0
                                    mem[_234 + 128] = 0
                                    mem[_234 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _240 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_240] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_240 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_240 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_240 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_240 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_240 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _65 + 11) + 320000 / 640 * 1000 * 64 * _71 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 18
                                    _233 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_233] = 0
                                    mem[_233 + 32] = 0
                                    mem[_233 + 64] = 0
                                    mem[_233 + 96] = 0
                                    mem[_233 + 128] = 0
                                    mem[_233 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _238 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_238] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_238 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_238 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_238 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_238 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_238 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _65 + 11) + 320000 / 640 * 1000 * 64 * _71 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _65 + 11) + 320000 / 640 * 1000 * 64 * _71 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _65 + 11) + 320000 / 640 * 1000 * 64 * _71 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _65 + 11) + 320000 / 640 * 1000 * 64 * _71 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1) - 1:
                                        revert with 'NH{q', 17
                        else:
                            if 64 * mem[_46] + 11 > -2:
                                revert with 'NH{q', 17
                            if (64 * mem[_46] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > -3:
                                revert with 'NH{q', 17
                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2:
                                revert with 'NH{q', 17
                            if not 2 * (64 * mem[_46] + 11) + 1:
                                revert with 'NH{q', 18
                            if 1000 < (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1:
                                revert with 'NH{q', 17
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1) + 1000 > -1 / (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if (1000 * mem[_46 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 / 2000) - (100 * mem[_46 + 128])) + 1 >= 999999999999999:
                                    _161 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_161] = 0
                                    mem[_161 + 32] = 0
                                    mem[_161 + 64] = 0
                                    mem[_161 + 96] = 0
                                    mem[_161 + 128] = 0
                                    mem[_161 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _178 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_178] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_178 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_178 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_178 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_178 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_178 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                else:
                                    _162 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_162] = 0
                                    mem[_162 + 32] = 0
                                    mem[_162 + 64] = 0
                                    mem[_162 + 96] = 0
                                    mem[_162 + 128] = 0
                                    mem[_162 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _180 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_180] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_180 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_180 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_180 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_180 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_180 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                    revert with 'NH{q', 17
                                if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if (1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 and 1000 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768:
                                    revert with 'NH{q', 17
                                if not ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    revert with 'NH{q', 18
                                if 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024) > -2:
                                    revert with 'NH{q', 17
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if 1000 * mem[_46 + 96] / ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 * 1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 / 2 * (64 * mem[_46 + 32] + 9) + 1 / 2000) - (100 * mem[_46 + 128]) < 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    _254 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_254] = 0
                                    mem[_254 + 32] = 0
                                    mem[_254 + 64] = 0
                                    mem[_254 + 96] = 0
                                    mem[_254 + 128] = 0
                                    mem[_254 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _264 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_264] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_264 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_264 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_264 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_264 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_264 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _65 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _71 + 11) + 1 * (1000 * 64 * _65 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 18
                                    _253 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_253] = 0
                                    mem[_253 + 32] = 0
                                    mem[_253 + 64] = 0
                                    mem[_253 + 96] = 0
                                    mem[_253 + 128] = 0
                                    mem[_253 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _262 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_262] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_262 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_262 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_262 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_262 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_262 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _65 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _71 + 11) + 1 * (1000 * 64 * _65 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _65 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _71 + 11) + 1 * (1000 * 64 * _65 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _65 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _71 + 11) + 1 * (1000 * 64 * _65 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _65 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _71 + 11) + 1 * (1000 * 64 * _65 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1) - 1:
                                        revert with 'NH{q', 17
                else:
                    if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11 > -2:
                        revert with 'NH{q', 17
                    if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    if 64 * mem[_46 + 32] + 9 > -3:
                        revert with 'NH{q', 17
                    if (64 * mem[_46 + 32] + 9) + 2 and 1000 > -1 / (64 * mem[_46 + 32] + 9) + 2:
                        revert with 'NH{q', 17
                    if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1:
                        revert with 'NH{q', 18
                    if 1000 < (1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1:
                        revert with 'NH{q', 17
                    if (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640 and -((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1) + 1000 > -1 / (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640:
                        revert with 'NH{q', 17
                    if mem[_46 + 128] and 100 > -1 / mem[_46 + 128]:
                        revert with 'NH{q', 17
                    if (1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000 <= 100 * mem[_46 + 128]:
                        _63 = mem[_46 + 64]
                        if mem[_46 + 64] > -12:
                            revert with 'NH{q', 17
                        if mem[_46 + 64] + 11 and 64 > -1 / mem[_46 + 64] + 11:
                            revert with 'NH{q', 17
                        if 64 * mem[_46 + 64] + 11 > -321:
                            revert with 'NH{q', 17
                        if (64 * mem[_46 + 64] + 11) + 320 and 1000 > -1 / (64 * mem[_46 + 64] + 11) + 320:
                            revert with 'NH{q', 17
                        _69 = mem[_46]
                        if mem[_46] > -12:
                            revert with 'NH{q', 17
                        if mem[_46] + 11 and 64 > -1 / mem[_46] + 11:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 > -10:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                            revert with 'NH{q', 17
                        if 64 * mem[_46] + 11 <= 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > -2:
                                revert with 'NH{q', 17
                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 64 * mem[_46] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1:
                                revert with 'NH{q', 18
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 and 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > -1 / (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                _97 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_97] = 0
                                mem[_97 + 32] = 0
                                mem[_97 + 64] = 0
                                mem[_97 + 96] = 0
                                mem[_97 + 128] = 0
                                mem[_97 + 160] = 0
                                mem[32] = 4
                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                _104 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_104] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                mem[_104 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                mem[_104 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                mem[_104 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                mem[_104 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                mem[_104 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                    revert with 'NH{q', 17
                                if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 and 1000 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768:
                                    revert with 'NH{q', 17
                                if not ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    revert with 'NH{q', 18
                                if 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024) > -2:
                                    revert with 'NH{q', 17
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if 999999999999999 < (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                    _168 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_168] = 0
                                    mem[_168 + 32] = 0
                                    mem[_168 + 64] = 0
                                    mem[_168 + 96] = 0
                                    mem[_168 + 128] = 0
                                    mem[_168 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _192 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_192] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_192 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_192 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_192 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_192 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_192 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _63 + 11) + 320000 / 640 * 1000 * 64 * _69 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 18
                                    _167 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_167] = 0
                                    mem[_167 + 32] = 0
                                    mem[_167 + 64] = 0
                                    mem[_167 + 96] = 0
                                    mem[_167 + 128] = 0
                                    mem[_167 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _190 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_190] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_190 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_190 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_190 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_190 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_190 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _63 + 11) + 320000 / 640 * 1000 * 64 * _69 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _63 + 11) + 320000 / 640 * 1000 * 64 * _69 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _63 + 11) + 320000 / 640 * 1000 * 64 * _69 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _63 + 11) + 320000 / 640 * 1000 * 64 * _69 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1) - 1:
                                        revert with 'NH{q', 17
                        else:
                            if 64 * mem[_46] + 11 > -2:
                                revert with 'NH{q', 17
                            if (64 * mem[_46] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > -3:
                                revert with 'NH{q', 17
                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2:
                                revert with 'NH{q', 17
                            if not 2 * (64 * mem[_46] + 11) + 1:
                                revert with 'NH{q', 18
                            if 1000 < (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1:
                                revert with 'NH{q', 17
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1) + 1000 > -1 / (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                _115 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_115] = 0
                                mem[_115 + 32] = 0
                                mem[_115 + 64] = 0
                                mem[_115 + 96] = 0
                                mem[_115 + 128] = 0
                                mem[_115 + 160] = 0
                                mem[32] = 4
                                if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                    revert with 'NH{q', 50
                                mem[0] = 3
                                _121 = mem[64]
                                mem[64] = mem[64] + 192
                                mem[_121] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                mem[_121 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                mem[_121 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                mem[_121 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                mem[_121 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                mem[_121 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                    revert with 'NH{q', 17
                                if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if (1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 and 1000 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768:
                                    revert with 'NH{q', 17
                                if not ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    revert with 'NH{q', 18
                                if 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024) > -2:
                                    revert with 'NH{q', 17
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if 999999999999999 < (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                    _212 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_212] = 0
                                    mem[_212 + 32] = 0
                                    mem[_212 + 64] = 0
                                    mem[_212 + 96] = 0
                                    mem[_212 + 128] = 0
                                    mem[_212 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _224 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_224] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_224 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_224 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_224 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_224 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_224 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _63 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _69 + 11) + 1 * (1000 * 64 * _63 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 18
                                    _211 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_211] = 0
                                    mem[_211 + 32] = 0
                                    mem[_211 + 64] = 0
                                    mem[_211 + 96] = 0
                                    mem[_211 + 128] = 0
                                    mem[_211 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _222 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_222] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_222 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_222 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_222 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_222 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_222 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _63 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _69 + 11) + 1 * (1000 * 64 * _63 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _63 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _69 + 11) + 1 * (1000 * 64 * _63 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _63 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _69 + 11) + 1 * (1000 * 64 * _63 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _63 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _69 + 11) + 1 * (1000 * 64 * _63 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1) - 1:
                                        revert with 'NH{q', 17
                    else:
                        if mem[_46 + 128] and 100 > -1 / mem[_46 + 128]:
                            revert with 'NH{q', 17
                        if (1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000 < 100 * mem[_46 + 128]:
                            revert with 'NH{q', 17
                        if mem[_46 + 96] and 1000 > -1 / mem[_46 + 96]:
                            revert with 'NH{q', 17
                        if not ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_46 + 128]):
                            revert with 'NH{q', 18
                        if 1000 * mem[_46 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_46 + 128]) > -2:
                            revert with 'NH{q', 17
                        _68 = mem[_46 + 64]
                        if mem[_46 + 64] > -12:
                            revert with 'NH{q', 17
                        if mem[_46 + 64] + 11 and 64 > -1 / mem[_46 + 64] + 11:
                            revert with 'NH{q', 17
                        if 64 * mem[_46 + 64] + 11 > -321:
                            revert with 'NH{q', 17
                        if (64 * mem[_46 + 64] + 11) + 320 and 1000 > -1 / (64 * mem[_46 + 64] + 11) + 320:
                            revert with 'NH{q', 17
                        _73 = mem[_46]
                        if mem[_46] > -12:
                            revert with 'NH{q', 17
                        if mem[_46] + 11 and 64 > -1 / mem[_46] + 11:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 > -10:
                            revert with 'NH{q', 17
                        if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 and 64 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                            revert with 'NH{q', 17
                        if 64 * mem[_46] + 11 <= 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9:
                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > -2:
                                revert with 'NH{q', 17
                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 64 * mem[_46] + 11 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                                revert with 'NH{q', 17
                            if not 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1:
                                revert with 'NH{q', 18
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 and 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 > -1 / (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 <= 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if (1000 * mem[_46 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_46 + 128])) + 1 >= 999999999999999:
                                    _165 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_165] = 0
                                    mem[_165 + 32] = 0
                                    mem[_165 + 64] = 0
                                    mem[_165 + 96] = 0
                                    mem[_165 + 128] = 0
                                    mem[_165 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _186 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_186] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_186 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_186 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_186 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_186 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_186 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                else:
                                    _166 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_166] = 0
                                    mem[_166 + 32] = 0
                                    mem[_166 + 64] = 0
                                    mem[_166 + 96] = 0
                                    mem[_166 + 128] = 0
                                    mem[_166 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _188 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_188] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_188 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_188 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_188 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_188 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_188 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                    revert with 'NH{q', 17
                                if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 and 1000 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768:
                                    revert with 'NH{q', 17
                                if not ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    revert with 'NH{q', 18
                                if 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024) > -2:
                                    revert with 'NH{q', 17
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if 1000 * mem[_46 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_46 + 128]) < 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 * 1000 * 64 * mem[_46] + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    _256 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_256] = 0
                                    mem[_256 + 32] = 0
                                    mem[_256 + 64] = 0
                                    mem[_256 + 96] = 0
                                    mem[_256 + 128] = 0
                                    mem[_256 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _268 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_268] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_268 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_268 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_268 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_268 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_268 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _68 + 11) + 320000 / 640 * 1000 * 64 * _73 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 18
                                    _255 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_255] = 0
                                    mem[_255 + 32] = 0
                                    mem[_255 + 64] = 0
                                    mem[_255 + 96] = 0
                                    mem[_255 + 128] = 0
                                    mem[_255 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _266 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_266] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_266 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_266 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_266 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_266 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_266 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _68 + 11) + 320000 / 640 * 1000 * 64 * _73 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _68 + 11) + 320000 / 640 * 1000 * 64 * _73 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _68 + 11) + 320000 / 640 * 1000 * 64 * _73 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * 64 * _68 + 11) + 320000 / 640 * 1000 * 64 * _73 + 11 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 1 / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1) - 1:
                                        revert with 'NH{q', 17
                        else:
                            if 64 * mem[_46] + 11 > -2:
                                revert with 'NH{q', 17
                            if (64 * mem[_46] + 11) + 1 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9 > -3:
                                revert with 'NH{q', 17
                            if (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2 and 1000 > -1 / (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2:
                                revert with 'NH{q', 17
                            if not 2 * (64 * mem[_46] + 11) + 1:
                                revert with 'NH{q', 18
                            if 1000 < (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1:
                                revert with 'NH{q', 17
                            if (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640 and -((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1) + 1000 > -1 / (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640:
                                revert with 'NH{q', 17
                            if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                revert with 'NH{q', 17
                            if (1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000 <= 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if (1000 * mem[_46 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_46 + 128])) + 1 >= 999999999999999:
                                    _209 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_209] = 0
                                    mem[_209 + 32] = 0
                                    mem[_209 + 64] = 0
                                    mem[_209 + 96] = 0
                                    mem[_209 + 128] = 0
                                    mem[_209 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _218 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_218] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_218 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_218 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_218 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_218 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_218 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                else:
                                    _210 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_210] = 0
                                    mem[_210 + 32] = 0
                                    mem[_210 + 64] = 0
                                    mem[_210 + 96] = 0
                                    mem[_210 + 128] = 0
                                    mem[_210 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _220 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_220] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_220 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_220 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_220 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_220 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_220 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                    revert with 'NH{q', 17
                                if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024 and 100 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if (1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000 < 100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024:
                                    revert with 'NH{q', 17
                                if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 and 1000 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768:
                                    revert with 'NH{q', 17
                                if not ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    revert with 'NH{q', 18
                                if 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024) > -2:
                                    revert with 'NH{q', 17
                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                mem[32] = 5
                                if block.timestamp < sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]]:
                                    revert with 'NH{q', 17
                                if 1000 * mem[_46 + 96] / ((1000 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) - ((1000 * 64 * mem[_46 + 32] + 9) + 2000 / 2 * (64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0 + 11) + 1 * (1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512 + 11) + 320000 / 640) / 2000) - (100 * mem[_46 + 128]) < 1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * mem[_46] + 11) + 1 * (1000 * 64 * mem[_46 + 64] + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024):
                                    _280 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_280] = 0
                                    mem[_280 + 32] = 0
                                    mem[_280 + 64] = 0
                                    mem[_280 + 96] = 0
                                    mem[_280 + 128] = 0
                                    mem[_280 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _286 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_286] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_286 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_286 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_286 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_286 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_286 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / 999999999999999) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _68 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _73 + 11) + 1 * (1000 * 64 * _68 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 18
                                    _279 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_279] = 0
                                    mem[_279 + 32] = 0
                                    mem[_279 + 64] = 0
                                    mem[_279 + 96] = 0
                                    mem[_279 + 128] = 0
                                    mem[_279 + 160] = 0
                                    mem[32] = 4
                                    if sub_5553f351[cd[((32 * idx) + cd[4] + 36)]] >= sub_54341980.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 3
                                    _284 = mem[64]
                                    mem[64] = mem[64] + 192
                                    mem[_284] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_0
                                    mem[_284 + 32] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256
                                    mem[_284 + 64] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_512
                                    mem[_284 + 96] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768
                                    mem[_284 + 128] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024
                                    mem[_284 + 160] = sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 and block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _68 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _73 + 11) + 1 * (1000 * 64 * _68 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280:
                                        revert with 'NH{q', 17
                                    if sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _68 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _73 + 11) + 1 * (1000 * 64 * _68 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1 and 10^18 > -1 / sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _68 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _73 + 11) + 1 * (1000 * 64 * _68 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1:
                                        revert with 'NH{q', 17
                                    if 0 > (-1 * 10^18 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1280 * block.timestamp - sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] / (1000 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_768 / ((1000 * (1000 * 64 * _68 + 11) + 320000 / 640) - ((1000 * 64 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_256 + 9) + 2000 / 2 * (64 * _73 + 11) + 1 * (1000 * 64 * _68 + 11) + 320000 / 640) / 2000) - (100 * sub_54341980[stor4[cd[((32 * idx) + cd[4] + 36)]]].field_1024)) + 1) - 1:
                                        revert with 'NH{q', 17
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 5
            sub_9ebe48c7[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if sub_2b468b8f > -1:
        revert with 'NH{q', 17
    if sub_2b468b8f >= sub_5f596cd2:
        revert with 0, 'Maximum amount of PEBBLES have been minted'
    if sub_2b468b8f > -1:
        revert with 'NH{q', 17
    require ext_code.size(sub_fac9ac2eAddress)
    call sub_fac9ac2eAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
